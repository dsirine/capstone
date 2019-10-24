## capstone

# Link of my github
https://github.com/dsirine/capstone

# Pipeline
my pipeline is to display "hello world".
my application is writing with nodejs(index.js)
Before pushing my application,i try to test it in test.js with ./script/test

# AWS Instance
In AWS instance , we should install docker, nodejs and git
I install Jenkins in the AWS instance and i configure this dependencies: nodejs+ docker+ git+ blue ocean
I open port 22(ssh) and port 8080(jenkins browser)

# lint Dockerfile and Jenkinsfile
To lint Dockerfile, we should use hadolint Dokerfile
and to lint my Jenkinsfile $,we should type " curl --user <username>:<password> -X POST -F "jenkinsfile=<Jenkinsfile" http://localhost:8080/pipeline-model-converter/validate " 
and i put my username and password

# Build Kubernetes cluster
I build K8S in local with minikube and kubectl

