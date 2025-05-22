# Stateless

nginx-deployment.yaml

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.25
        ports:
        - containerPort: 80
```

nginx-service.yaml

```
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  type: NodePort
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
      nodePort: 30080
```

#### Step 1: Deploy the Stateless App

```
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
```

#### Step 2: View Resources

```
kubectl get deployments
kubectl get pods
kubectl get svc
```

#### Step 3: Access the App

```
http://<your-node-ip>:30080
````

#### Step 4: Scale the Deployment

```
kubectl scale deployment nginx-deployment --replicas=4
```

#### Step 5: Update the Image (Rolling Update)

```
kubectl set image deployment/nginx-deployment nginx=nginx:1.26
```

Check the rollout:

```
kubectl rollout status deployment/nginx-deployment
```

#### Step 6: Rollback if Needed

```
kubectl set image deployment/nginx-deployment nginx=nginx:doesnotexist
```

```
kubectl rollout status deployment/nginx-deployment
```

```
kubectl rollout undo deployment nginx-deployment
```

#### Step 7: View Logs

```
kubectl get pods
```

```
kubectl logs <pod-name>
```

