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

<br><br>

# DevOps Implementation

## Docker

Containerized the Petclinic application using Docker and implemented a multi-stage Dockerfile to optimize image size and improve build efficiency.

Built and published versioned Docker images to Docker Hub, enabling consistent deployments across environments.


## Infrastructure as Code (Terraform)

Provisioned AWS infrastructure using Terraform following Infrastructure as Code (IaC) best practices.

Configured:

* Amazon S3 for Terraform remote state management
* DynamoDB for state locking to prevent concurrent infrastructure changes

Implemented a modular Terraform architecture to provision:

* AWS VPC
* Public and Private Subnets
* Networking Components
* Amazon EKS Cluster

This approach improves maintainability, scalability, and reusability of infrastructure code.


## Kubernetes

Deployed the Petclinic application on Amazon EKS using Kubernetes.

Created Kubernetes manifests including:

* Deployment
* Service
* Ingress

Implemented Helm charts to package and manage Kubernetes resources, enabling simplified application deployment and version management.


## Continuous Integration (CI) - GitHub Actions

Implemented a CI pipeline using GitHub Actions to automate the software build and validation process.

The pipeline performs the following actions:

* Builds the application source code
* Executes automated validation checks
* Builds Docker container images
* Pushes Docker images to Docker Hub
* Updates Helm chart image tags with the latest application version

This ensures that deployment artifacts are consistently generated and versioned.


## Continuous Deployment (CD) - ArgoCD

Implemented a GitOps-based Continuous Deployment workflow using ArgoCD running on Amazon EKS.

ArgoCD performs the following functions:

* Continuously monitors the Git repository for changes
* Synchronizes Kubernetes resources with the desired state defined in Git
* Automatically deploys updated Helm chart releases to the Kubernetes cluster
* Maintains deployment consistency across environments

This enables automated, reliable, and repeatable application deployments using GitOps principles.
