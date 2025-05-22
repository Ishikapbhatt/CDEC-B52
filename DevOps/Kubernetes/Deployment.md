# Deploying a Node.js Web App

Let’s say we have a Dockerized Node.js web application.

#### Step 1: Create a Deployment YAML

Save this file as node-app-deployment.yaml:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: node-app-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: node-app
  template:
    metadata:
      labels:
        app: node-app
    spec:
      containers:
      - name: node-app
        image: yourdockerhubusername/node-app:1.0
        ports:
        - containerPort: 3000
        env:
        - name: NODE_ENV
          value: "production"
        readinessProbe:
          httpGet:
            path: /
            port: 3000
          initialDelaySeconds: 5
          periodSeconds: 10
        livenessProbe:
          httpGet:
            path: /
            port: 3000
          initialDelaySeconds: 15
          periodSeconds: 20
```

#### Step 2: Expose the Deployment

Use a Service to expose the app internally or externally. Save this as node-app-service.yaml:

```
apiVersion: v1
kind: Service
metadata:
  name: node-app-service
spec:
  type: LoadBalancer
  selector:
    app: node-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 3000
```

#### Step 3: Apply Both Resources

```
kubectl apply -f node-app-deployment.yaml
kubectl apply -f node-app-service.yaml
```

#### Update the Deployment (e.g., new image version)

```
kubectl set image deployment/node-app-deployment node-app=yourdockerhubusername/node-app:2.0
```

Check rollout status:

```
kubectl rollout status deployment/node-app-deployment
```

#### Step 5: Rollback to Previous Version

If the new version fails:

```
kubectl rollout undo deployment/node-app-deployment
```

Check history:

```
kubectl rollout history deployment/node-app-deployment
```

#### Step 6: Scale the Deployment

To scale up:

```
kubectl scale deployment node-app-deployment --replicas=5
```

To scale down:

```
kubectl scale deployment node-app-deployment --replicas=1
```

#### Step 7: Monitor, Logs, and Troubleshooting

View Deployment Status

```
kubectl get deployments
kubectl describe deployment node-app-deployment
```

#### Update with annotation:

```
kubectl set image deployment/node-app-deployment node-app=yourimage:v2
kubectl annotate deployment node-app-deployment kubernetes.io/change-cause="Update to v2 with bug fix"
```

#### Check rollout history:

```
kubectl rollout history deployment node-app-deployment
```

