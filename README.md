[![CircleCI](https://circleci.com/gh/ahakimx/ha-flask-api.svg?style=svg)](https://circleci.com/gh/ahakimx/ha-flask-api)

## Overview 

In this project we will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

- Working in AWS
- Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with Ansible and CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipelines

### Setup the Environment

* Create a virtualenv and activate it

```
    python3 -m venv ~/.devops
    source ~/.devops/bin/activate
```

* Run `make install` to install the necessary dependencies

* Run `make lint` to test the project code using linting, outputs example:


``` 
# See local hadolint install instructions: https://github.com/hadolint/hadolint # This is linter for Dockerfiles hadolint --ignore DL3013 --ignore DL3042 Dockerfile # This is a linter for Python source code linter: https://www.pylint.org/ # This should be run from inside a virtualenv pylint --disable=R,C,W1203 app.py

--------------------------------------------------------------------
Your code has been rated at 10.00/10 (previous run: 10.00/10, +0.00)

```

* Build image with tag
```
docker build -t flask-app:v1 .
```

* Run apps
1. Standalone: `python3 app.py`
2. Run in docker:
```
docker run -it <docker-image>:<tag_version>
```
default port is 5000
   
* Push image to registry, put docker username and password
```
docker login
docker tag flask-apps:v1 <username>/flask-apps:latest
docker push <username>/flask-apps:latest
```

### References
- [https://circleci.com/developer/orbs/orb/circleci/aws-eks](https://circleci.com/developer/orbs/orb/circleci/aws-eks)
- [https://circleci.com/developer/orbs/orb/circleci/kubernetes](https://circleci.com/developer/orbs/orb/circleci/kubernetes)
- [https://circleci.com/developer/orbs/orb/anchore/anchore-engine](https://circleci.com/developer/orbs/orb/anchore/anchore-engine)
