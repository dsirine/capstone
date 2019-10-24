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

# the deployment strategy blue/green
I build the blue image from the blue folder and i push it to docker hub(blue_image_capstone): https://cloud.docker.com/repository/docker/dsirine/blue_image_capstone
I build the blgreen image from the green folder and i push it to docker hub(green_image_capstone): https://cloud.docker.com/repository/docker/dsirine/green_image_capstone

After starting minikube to create a cluster:
    I create a replication controller blue pod from the blue folder: kubectl apply -f ./blue-controller.json 
    I create a replication controller green pod from the green folder: kubectl apply -f ./green-controller.json
    I create the service, redirect to blue and make it externally visible:kubectl apply -f ./blue-green-service.json
    To get the URL of the service by running, i just typed : minikube service bluegreenloadbalancer --url
    when i open the website blue in my browser by using the URL in the previous step, i get the as the screenshot N°17
    when i update the service to redirect to green by changing the selector to app=green and implement the changes by typing : kubectl apply -f ./blue-green-service.json   , i get the green result as the screenshot N°18
