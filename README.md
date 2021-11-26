## docker build image
docker build --tag {tag} .

## docker run container
docker run --publish {hostPort:containerPort} {tag}

## push docker image to artifact registry
docker push

### Where
* tag - appName:version
* hostPort - port on our machine we will access the app on
* containerPort - port in the container that the app is listening on

## gcloud login
gcloud auth login

## gcloud list available authentications
gcloud auth list

## gcloud use an available authentication
gcloud config set account {account}

## gcloud list available projects
gcloud projects list

## gcloud set project as default ( otherwise use --project {projectId} on every command )
gcloud config set project {projectId}

## configure docker for gcp artifact registry using gcloud
gcloud auth configure-docker {registryUrl}

## configure kubectl for gcp kubernetes engine using gcloud
gcloud container clusters get-credentials {clusterId} --region/zone={region/zone}

## kubectl view clusters, users, etc..
kubectl config view

# kubectl rename context
kubectl config rename-context {oldName} {newName}

# kubectl set default namespace ( just for reference )
kubectl config set-context --current --namespace={namespace}

# kubectl delete context, cluster or user config
kubectl config delete-{context/cluster/user} {contex/cluster/user id}

### Where
* projectId - the id of the gcp project you are using
* registryUrl - europe-west3-docker.pkg.dev
* account - any available auth account
* region/zone - region or zone, depending on what you provisioned your cluster with
* oldName, newName - any valid cluster name
* namespace - any kubernetes namespace