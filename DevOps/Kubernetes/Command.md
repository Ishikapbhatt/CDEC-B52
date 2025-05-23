# Kubernetes Commands

## Pod Commands:- 

kubectl get pod : Get pod 

kubectl get pod -o wide : Get pod wide information kubectl get pod -w : Get pod with watch 

kubectl get pod -o yaml : Get pod in yaml kubectl edit pod <pod_name> : Edit pod 

kubectl describe pod <pod_name> : Describe pod kubectl delete pod <pod_name> : Delete pod kubectl logs pod <pod_name> : Logs of the pod 

kubectl exec -it pod <pod_name> /bin/bash : Execute into pod 

## Node Commands:- 

kubectl describe node <node_name> : Describe node 

kubectl get node <node_name> -o yaml: Get node in yaml 

kubectl get node <node_name> : Get node 

kubectl drain node <node_name> : Drain node kubectl cordon node <node_name> : Cordon node kubectl uncordon node <node_name> : Uncordon node

## Creating Objects:- 

kubectl apply -f <file_name> yaml : Create resource 

kubectl apply -f <file_name>.yaml -f 

<file_name>.yaml : Create from multiple files kubectl apply -f ./ <directory_name> : Create all files indirectory 

kubectl apply -f https:// <url> : Create from url 

kubectl run <pod_name> -- 

image<image_name> : Create pod 

kubectl run <pod_name>-image 

<image_name> --port <port> --expose : 

Create pod, then expose it as service 

kubectl run <pod_name> --image=<image_name> - -dry-run=client -o yaml > <file_name>.yaml : Create Pod YAML File 

kubectl create deployment <deployment_name> - -image=<image_name> : Create Deployment 

kubectl create deployment <deployment_name> - -image=<image_name> --dry-run=client -o yaml > <file_name>.yaml : Create Deployment YAML File 

kubectl create service <service-type> 

<service_name> --tcp=<port:target_port> : Create Service

kubectl create service <service-type> <service_name> -- tcp=<port:target_port> --dry-run=client -o yaml > <file_name>.yaml : Create Service YAML File 

kubectl expose deployment 

<pod/deployment_name> --type=<service-type> -- port=<port> --target-port=<target_port> : 

Expose Service from Pod/Deployment 

kubectl create configmap <configmap_name> -- from-literal=<key>=<value> --from-literal=<key>= <value> : Create ConfigMap from Key-Value Pairs 

kubectl create configmap <configmap_name> -- from-file=<file_name> : Create ConfigMap from File 

kubectl create configmap <configmap_name> --from env-file=<file_name> : 

Create ConfigMap from Environment File

kubectl create secret generic <secret_name> -- from-literal=<key>=<value> --from-literal=<key>= <value> : Create Secret from Key-Value Pairs 

kubectl create secret generic <secret_name> --from file=<file_name> : Create Secret from File

## Monitoring Usage Commands:- 

kubectl top node <node_name> : 

Get node cpu and memory utilization 

kubectl top pods <pod_name> : 

Get pod cpu and memory utilization 

## Deployment Commands:- 

kubectl get deployment <deployment_name> : Get Deployment 

kubectl get deployment 

<deployment_name> -o yaml : 

Get Deployment in YAML Format 

kubectl get deployment 

<deployment_name> -o wide : 

Get Deployment Wide Information 

kubectl edit deployment 

<deployment_name> : Edit Deployment 

kubectl describe deployment 

<deployment_name> : Describe Deployment 

kubectl delete deployment 

<deployment_name> : Delete Deployment 

kubectl scale deployment <deployment_name> -- replicas=<replicas> : Scale Deployment with Replicas

## Service Commands:- 

kubectl get service <service> : Get Service 

kubectl get service <service> -o yaml : 

Get Service in YAML Format 

kubectl get service <service> -o wide : 

Get Service Wide Information 

kubectl edit service <service> : Edit Service kubectl describe service <service> : Describe Service kubectl delete service <service> : Delete Service 

## Ingress Commands:- 

kubectl get ingress ; Get Ingress 

kubectl get ingress -o yaml : Get Ingress in YAML Format kubectl get ingress -o wide :Get Ingress Wide Information 



kubectl edit ingress <ingress_name> : 

Edit Ingress 

kubectl describe ingress <ingress_name> : Describe Ingress 

kubectl delete ingress <ingress_name> : Delete Ingress Endpoints Commands:- 

kubectl get endpoints <endpoints _name> : Get endpoints

## DaemonSet Commands:- 

kubectl get daemonset 

<daemonset_name> : Get DaemonSet 

kubectl get daemonset 

<daemonset_name> -o yaml : 

Get DaemonSet in YAML Format 

kubectl edit daemonset 

<daemonset_name> : Edit DaemonSet 

kubectl describe daemonset 

<daemonset_name> : Describe DaemonSet 

kubectl delete daemonset 

<daemonset_name> : Delete DaemonSet 

## Job Commands:- 

kubectl get job <job_name> : Get Job 

kubectl get job <job_name> -o yaml : Get Job in YAML Format 

kubectl edit job <job_name> : Edit Job 

kubectl describe job <job_name> : Describe Job kubectl delete job <job_name> : Delete Job

## Rollout Commands:- 

kubectl rollout restart deployment 

<deployment_name> : Restart Deployment 

kubectl rollout undo deployment 

<deployment_name> : Undo Deployment with the Latest Revision 

kubectl rollout undo deployment 

<deployment_name> --to-revision= 

<revision_number> : Undo Deployment with Specified Revision 

kubectl rollout history deployment 

<deployment_name> : Get All Revisions of Deployment 

kubectl rollout history deployment 

<deployment_name> --revision= 

<revision_number> : Get Specified Revision of Deployment 

## Secret Commands:- 

kubectl get secret <secret_name> : Get Secret kubectl describe secret <secret_name> : Describe Secret kubectl delete secret <secret_name> : Delete Secret 

kubectl edit secret <secret_name> : Edit Secret 

