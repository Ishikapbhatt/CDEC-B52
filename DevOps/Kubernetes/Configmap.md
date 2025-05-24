# Configmap

## Create the yaml file for Configmap

```
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-config
data:
  app.properties: 
  APP_ENV: production
  APP_PORT: "8080"
```

## Create the yaml file for Pod

configmap-pod-volume.yaml

```
apiVersion: v1
kind: Pod
metadata:
  name: my-pod-volume
spec:
  containers:
  - name: my-container
    image: nginx
    volumeMounts:
    - name: config-volume
      mountPath: /etc/config
  volumes:
  - name: config-volume
    configMap:
      name: my-config
```

### Apply both the file

```
kubectl apply -f configmap.yaml
kubectl apply -f configmap-pod-volume.yaml
```

## Go inside the pod

```
kubectl exec -ti my-pod-volume -- sh
```

```
cd /etc/config
ls
cat APP_ENV
cat APP_PORT
```
