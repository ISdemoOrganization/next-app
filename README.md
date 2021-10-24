## docker build image
docker build --tag {tag} .

## docker run container
docker run --publish {hostPort:containerPort} {tag}

### Where
* tag - appName:version
* hostPort - port on our machine we will access the app on
* containerPort - port in the container that the app is listening on

## gcloud login
gcloud auth login

## gcloud set project as default ( otherwise use --project {projectId} on every command )
gcloud config set project {projectId}

## configure docker for gcp artifact registry using gcloud
gcloud auth configure-docker {registryUrl}

### Where
* projectId - the id of the gcp project you are using
* registryUrl - europe-west3-docker.pkg.dev

## push docker image to artifact registry
docker push