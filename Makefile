
header:
	@echo "Este archivo es para trabajar con los comando principales de kubernet"

start: 
	minikube start
node: 
	kubectl get nodes
status:
	minikube status
kctl:
	kubectl version
#kubectl
create: #Cretae1| edit | delete
	kubectl create deployment nginx-deploy --image=nginx
del-n: #Cretae1| edit | delete
	kubectl delete deployment nginx-deploy
del-m: #Cretae1| edit | delete
	kubectl delete deployment mongo-deploy
edit: #Cretae1| edit | delete
	kubectl edit deployment nginx-deploy
dash: 
	minikube dashboard
get: #Para ver todos servicios que estan corriendo en mi clouster. 
#nodes|pods|services|replicaset|deployment|
	kubectl get all
service: 
	minikube service ghost
exec-m: 
	kubectl exec -it mongo-deploy-c478bc787-dclnx  -- /bin/bash
#ghots:name pod
log1:
	kubectl logs nginx-deploy-8b9dbd8c9-wvjqj
log2:
	kubectl logs mongo-deploy-c478bc787-dclnx 
desc-m: # Para describir un servicio.
	kubectl describe pod mongo
desc-n: # Para describir un servicio.
	kubectl describe pod nginx
describe: # Para describir un servicio.
	kubectl describe svc/mongo
top: 
	kubectl top pods -A
topods:
	kubectl get ns
topnod:
	kubectl top nodes

info:
	kubectl cluster-info
space:
	kubectl create namespace my-app
#Files
apply-n:
	kubectl apply -f nginx-deployment.yaml
del-dn:
	kubectl delete -f nginx-deployment.yaml
apply-sn:
	kubectl apply -f nginx-service.yaml

desc-sn: # Para describir un servicio.
	kubectl describe svc/nginx-service
get-p:
	kubectl get pod -o wide
get-dn:
	kubectl get deployment nginx-deployment -o yaml
get-dn-w:
	kubectl get deployment nginx-deployment -o yaml > nginx-deployment-result.yaml
del-d-sn: # Para describir un servicio.
	kubectl delete -f nginx-deployment.yaml
	kubectl delete -f nginx-service.yaml

