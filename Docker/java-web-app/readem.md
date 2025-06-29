# ☕ Simple Java Web Application

This is a minimal Java web application built using Servlets and JSP, packaged as a WAR file and deployed using Docker with Tomcat.

---

## 📁 Project Structure

java-web-app/
├── Dockerfile
├── pom.xml
├── README.md
├── src/
│ └── main/
│ ├── java/
│ │ └── com/example/HelloServlet.java
│ └── webapp/
│ ├── index.jsp
│ └── WEB-INF/
│ └── web.xml


---

## 🚀 Features

- Simple servlet-based Java web app
- JSP-based landing page
- Dockerized with Tomcat 10
- Accessible at `/hello` route

---

## 🛠️ Prerequisites

- Java 17+
- Maven 3+
- Docker

---

## 🔧 Build & Run

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/java-web-app.git
cd java-web-app

mvn clean package

docker build -t java-web-app .

docker run -p 8080:8080 java-web-app

