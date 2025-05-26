# Secrets

## Create the yaml file for Secret

```
apiVersion: v1
kind: Secret
metadata:
  name: my-secret
type: Opaque
data:
  username: YWRtaW4=            # Base64 encoded value of "admin"
  password: c2VjdXJlcGFzc3dvcmQ=  # Base64 encoded value of "securepassword"
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
    - name: secret-volume
      mountPath: /etc/secrets
      readOnly: true
  volumes:
  - name: secret-volume
    secret:
      secretName: my-secret
```

## Create the yaml file for env

```
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
  - name: my-container
    image: nginx
    env:
    - name: USERNAME
      valueFrom:
        secretKeyRef:
          name: my-secret
          key: username
    - name: PASSWORD
      valueFrom:
        secretKeyRef:
          name: my-secret
          key: password
```

### Apply all the files

```
kubectl apply -f secret.yaml 
kubectl apply -f pod-secret-env.yaml 
kubectl apply -f pod-secret-volume.yaml
```

## Go inside the pod

```
kubectl exec -ti my-pod-volume -- sh
```

```
cd /etc/secrets
ls
cat password
cat username
```
