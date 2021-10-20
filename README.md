## docker build image
docker build --tag {tag} .

## docker run container
docker run --publish {hostPort:containerPort} {tag}

## Where
tag - appName:version
hostPort - port on our machine
containerPort - port in the container

## gcloud login
gcloud auth login

## gcloud set project
gcloud config set project {projectId}

## configure docker for gcp artifact registry using gcloud
gcloud auth configure-docker {registryUrl}

Where
registryUrl - europe-west3-docker.pkg.dev


## push docker image to artifact registry