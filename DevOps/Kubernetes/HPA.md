# Horizontal Pod Autoscaler (HPA)	

## Step 1: Install the Metrics Server 

```
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Check it's running:

```
kubectl get deployment metrics-server -n kube-system
```

## Step 2: Create a Deployment

```# nginx-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 1
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
        image: nginx
        resources:
          requests:
            cpu: 100m
          limits:
            cpu: 200m
        ports:
        - containerPort: 80
```

```
kubectl apply -f nginx-deployment.yaml
```

```
kubectl get pods
```

## Step 3: Create a Horizontal Pod Autoscaler

Create HPA to maintain 50% CPU utilization:

```
kubectl autoscale deployment nginx-deployment --cpu-percent=50 --min=1 --max=5
```

```
kubectl get hpa
```

## Step 4: Simulate Load

```
kubectl run -i --tty load-generator --rm --image=busybox /bin/sh
```

Inside the pod, run:

```
while true; do wget -q -O- http://nginx-deployment; done
```

## Step 5: Observe Scaling

```
watch kubectl get hpa
```

```
kubectl get pods -w
```


