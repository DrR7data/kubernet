header:
	@echo "Este archivo es para trabajar con los comando principales de kubernet"

#kubectl apply commands in order
apply:
	kubectl apply -f mongo-secret.yaml
	kubectl apply -f mongo.yaml
	kubectl apply -f mongo-configmap.yaml 
	kubectl apply -f mongo-express.yaml
get:
	kubectl get all | grep mongo
sec:
	kubectl get secret
expres:
	kubectl logs mongo-express-cfffcf49d-jf8jj 
#give a URL to external service in minikube
ext-serv:
	minikube service mongo-express-service
info:
	kubectl cluster-info
