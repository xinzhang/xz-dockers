Kubernetes components
========================

This is a custom docker iamge for developers to deploy our kubernetes components on GKE. To
make this work we need a number of tools available including:

  * google-cloud-sdk
  * kubectl
  * kubesec
  * helm
  * helm file
  * kubetail
  * helm-secrets

We could download and cache each of these but that's kind of painful to share
that configuration around. We therefore build a docker container for developers 
to pull and use to run some of our deployment jobs that contains all the
necessary pieces.

### How to use it
* Build \
  docker build -t gcp-dev:latest .

* Run
docker run -it -p 8001:8001 --privileged -v ${PWD}:/var/app --entrypoint=bash gcp-dev \
windows: docker run -it --privileged -v %CD%:/var/app --entrypoint=bash gcp-dev \
mac :docker run -it --privileged -v $(pwd):/var/app --entrypoint=bash gcp-dev \

* login to gcloud
- Gcloud auth login
- gcloud auth application-default login

* start to use it
- gcloud set project <project>
- gcloud set compute/zone <zone>
- gcloud container clusters get-credentials <cluster> --zone australia-southeast1-a
