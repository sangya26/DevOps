# ✅ To-Do List Application on Kubernetes

This project is a containerized **To-Do List** application built using Django and deployed on Kubernetes. It includes all necessary manifests, Docker configurations, and CI/CD setup via Jenkins.

---

## 📁 Project Structure

```
To-Do list/
├── deploy/                 # Kubernetes YAMLs
├── staticfiles/css/        # CSS styles
├── to-dos/templates/       # Django HTML templates
├── todoApp/                # Django logic
├── DockerFile              # App Dockerfile
├── JenkinsFile             # Jenkins pipeline
├── docker-compose.yml      # Local setup
├── manage.py               # Django CLI
├── README.md

```


---

## 🚀 Features

- ✅ Django-based full-stack To-Do list web app
- 🐳 Containerized using Docker
- ☸️ Deployed on Kubernetes (manifests included)
- ⚙️ CI/CD ready with Jenkins
- 🎨 Custom CSS styling 

---

## ⚙️ Prerequisites

- Docker
- Kubernetes (Minikube or similar)
- Python 3.x
- Jenkins (optional for CI/CD)

---

## 🧱 Build & Run with Docker Compose (Local)

```
# Start the app locally
docker-compose up --build

# Access the app
http://localhost:8000
```


## ☸️ Deploying to Kubernetes
```
1. Start Minikube (or your cluster)
    minikube start
2. Use Minikube’s Docker daemon
    eval $(minikube docker-env)
3. Build Docker Image
    docker build -t todo-app .
4. Apply Kubernetes Resources
    kubectl apply -f deploy/
5. Access the App
    minikube service todo-service
```

## 🔄 CI/CD with Jenkins

This project includes a basic JenkinsFile for pipeline automation. You can integrate it with your Git repo and configure a multibranch pipeline in Jenkins.

## ✅ To-Do Features

Create, view, and delete tasks
Django ORM integration for database
Styled UI using custom CSS
API views (if implemented) can be exposed separately
## 🧹 Cleanup

kubectl delete -f deploy/
minikube stop

## 🙋‍♀️ Author

Sangya Sagareeka
GitHub: @sangya26

## 📌 Notes

Update DockerFile and deploy.yml image names/tags as needed.
You can integrate a database (PostgreSQL or SQLite) using a volume or StatefulSet.
Consider adding a health check, liveness probe, or Helm chart for production use.
