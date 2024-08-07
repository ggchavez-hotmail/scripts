#Login
gcloud auth login
#Definir el nombre del proyecto a trabajar
gcloud config set project XX-XXX-XXX-XX
#Instalar Pluging (al menos la primera vez)
gcloud components install gke-gcloud-auth-plugin
#Conectar al Cluster, se debe rescatar de la parte de Kubernetes
gcloud container clusters get-credentials XXX-XX-XX-XXX-XX --region=us-east4
gcloud container clusters get-credentials XXX-XX-XX-XXX-XX --region=southamerica-west1-a

#loggin de los componentes
gcloud logging logs list

#ver ejecución clourun
gcloud run jobs executions list --job XXXXXX --region=us-east4

#borrar log especifico
gcloud run jobs executions delete XXXXXX-XXX --quiet --region=us-east4

#listar y borrar logs de job
gcloud run jobs executions list --job XXXXXX --region=us-east4 | awk '{print "gcloud run jobs executions delete " $3 " --quiet --region=us-east4"}' | sh


