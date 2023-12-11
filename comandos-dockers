#Retagear imagenes docker GCP
docker pull usuario-docker/nombre-imagen:version
docker tag usuario-docker/nombre-imagen:version us-east4-docker.pkg.dev/xx-xxx-xxx-xx/repos-docker/nombre-imagen:version
docker push us-east4-docker.pkg.dev/xx-xxx-xxx-xx/repos-docker/nombre-imagen:version

#Construir images GCP
docker build -t us-east4-docker.pkg.dev/xx-xxx-xxx-xx/repos-docker/nombre-imagen:version .
docker push us-east4-docker.pkg.dev/xx-xxx-xxx-xx/repos-docker/nombre-imagen:version
