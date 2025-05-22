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
