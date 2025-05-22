# Stateful

#### Manually Create a Static PersistentVolume

```
sudo mkdir -p /mnt/data/mysql-0
sudo chmod -R 777 /mnt/data
```

mysql-headless.yaml

```
apiVersion: v1
kind: Service
metadata:
  name: mysql
spec:
  ports:
  - port: 3306
    name: mysql
  clusterIP: None # Headless service
  selector:
    app: mysql
```

mysql-stateful.yaml

```
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: mysql
spec:
  serviceName: "mysql"
  replicas: 1
  selector:
    matchLabels:
      app: mysql
  template:
    metadata:
      labels:
        app: mysql
    spec:
      containers:
      - name: mysql
        image: mysql:8.0
        ports:
        - containerPort: 3306
          name: mysql
        env:
        - name: MYSQL_ROOT_PASSWORD
          value: my-secret-pw
        volumeMounts:
        - name: mysql-persistent-storage
          mountPath: /var/lib/mysql
  volumeClaimTemplates:
  - metadata:
      name: mysql-persistent-storage
    spec:
      accessModes:
        - ReadWriteOnce
      resources:
        requests:
          storage: 1Gi
```

mysql-pv.yaml

```
apiVersion: v1
kind: PersistentVolume
metadata:
  name: mysql-pv
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  hostPath:
    path: "/mnt/data/mysql-0"
```


#### Deploy the StatefulSet

Apply the YAML files:

```
kubectl apply -f mysql-headless.yaml
kubectl apply -f mysql-statefulset.yaml
kubectl apply -f mysql-pv.yaml
```

#### Check the Pods and PVCs

```
kubectl get pods -l app=mysql
kubectl get pvc
```

#### Interact with MySQL Pod

Open MySQL CLI inside the Pod:

```
kubectl exec -it mysql-0 -- mysql -u root -p
```

Password: my-secret-pw

Inside MySQL:

```
CREATE DATABASE testdb;
USE testdb;
CREATE TABLE students (id INT PRIMARY KEY, name VARCHAR(100));
INSERT INTO students VALUES (1, 'Alice'), (2, 'Bob');
SELECT * FROM students;
```
#### Delete the Pod

```
kubectl delete pod mysql-0
```

#### Watch it restart

```
kubectl get pods -l app=mysql -w
```

#### Verify data

```
kubectl exec -it mysql-0 -- mysql -u root -p
USE testdb;
SELECT * FROM students;
```

Edit the PVC to set the volume name

```
kubectl edit pvc mysql-persistent-storage-mysql-0
```

Add this under spec:

```
volumeName: mysql-pv
```









