# Petclinic
This is a Spring boot Petclinic project

Original project link : https://github.com/spring-projects/spring-petclinic.git

## Run Petclinic locally

Spring Petclinic is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built using [Maven](https://spring.io/guides/gs/maven/) or [Gradle](https://spring.io/guides/gs/gradle/).
Java 17 or later is required for the build, and the application can run with Java 17 or newer.

You first need to clone the project locally:

```bash
git clone https://github.com/jeet1418/Petclinic.git
cd spring-petclinic
```
If you are using Maven, you can start the application on the command-line as follows:

```bash
./mvnw spring-boot:run
```
With Gradle, the command is as follows:

```bash
./gradlew bootRun
```

You can then access the Petclinic at <http://localhost:8080/>.

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

# DevOps Implementation

## Docker
Wrote Dockerfile for this project and pushed it to my dockerhub registry

## Infrastructure as Code (Terraform)
Wrote Terraform code to create s3 bucket for state file and DynamoDB table for state locking

Wrote Terraform code using modular approach to create a VPC in AWS and a AWS EKS

## Kubernetes
Used Kubernetes to deploy this project

Created deployment.yaml, service,yamal & ingress.yaml files for deployment

Then created Helm chart for this Petclinic project

## CI using Github Action
Created the CI workflow using Github Action where the pipeline will:
    - Build the Project
    - Test whether everything is working fine
    - Push the Docker Image into Dockerhub
    - Update the Helm chart with the latest Docker Image tag

## CD using ArgoCD
Deployed ArgoCD in the kubernetes cluster for CD:
    - It will fetch the helm chart and will deploy the project
    - It continuously looks for the git repository for any changes 
