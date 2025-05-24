# DaemonSet

## Create a file hello-daemonset.yaml

```
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: hello-daemon
  labels:
    app: hello-daemon
spec:
  selector:
    matchLabels:
      name: hello-daemon
  template:
    metadata:
      labels:
        name: hello-daemon
    spec:
      containers:
      - name: hello
        image: busybox
        command: ["sh", "-c", "while true; do echo Hello from $(hostname); sleep 10; done"]
```

## Apply the DaemonSet

```
kubectl apply -f hello-daemonset.yaml
```

## Inspect the DaemonSet

```
kubectl get daemonsets
kubectl get pods -o wide
```

## Targeting Specific Nodes (Using Labels)

```
kubectl get nodes
kubectl label node <NODE_NAME> purpose=logging
```

## Create a DaemonSet that runs only on labeled nodes

```
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: log-agent
spec:
  selector:
    matchLabels:
      app: log-agent
  template:
    metadata:
      labels:
        app: log-agent
    spec:
      nodeSelector:
        purpose: logging
      containers:
      - name: log-agent
        image: busybox
        command: ["sh", "-c", "echo Log agent running; sleep 3600"]
```

```
kubectl apply -f log-agent-daemonset.yaml
```

## Verify pod runs only on labeled node

```
kubectl get pods -o wide
```

##  Taints and Tolerations 

### Add a taint to a node

```
kubectl taint nodes <NODE_NAME> role=monitoring:NoSchedule
```

## Update the DaemonSet with a toleration

```
      tolerations:
      - key: "role"
        operator: "Equal"
        value: "monitoring"
        effect: "NoSchedule"
```

Modify the spec.template.spec.tolerations section in the DaemonSet YAML and re-apply it.

## Observe Logs

```
kubectl logs <pod-name>
```
