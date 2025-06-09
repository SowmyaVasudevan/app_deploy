# React App Deployment with Docker, AWS EC2, and Uptime Monitoring

This project demonstrates how to containerize a React application, deploy it to an AWS EC2 instance using Docker, and set up real-time uptime monitoring with Uptime Kuma.

# Live Demo

[React App Live](http://44.211.140.213/)

[Uptime Kuma Monitoring Dashboard](http://3.86.35.215:3001/)


# Tech Stack

| Tool           | Purpose                              |
|----------------|--------------------------------------|
| React          | Frontend web application             |
| Docker         | Containerization                     |
| Docker Hub     | Image registry                       |
| AWS EC2        | Cloud hosting                        |
| Uptime Kuma    | App monitoring & alerts              |
| Ubuntu Server  | EC2 OS used for deployment           |

# Setup & Deployment

1. Clone and Build React App
npm run build

2. Create Docker Image
docker build -t react-app-prod .
docker tag react-app-prod sowmya056/react-app-prod:v1
docker push sowmya056/react-app-prod:v1

3. Launch AWS EC2 Instance
Ubuntu 22.04
Open ports: 80 (HTTP), 3001 (Uptime Kuma)

4. Pull and Run Container on EC2
docker pull sowmya056/react-app-prod:v1
docker run -d -p 80:80 sowmya056/react-app-prod:v1

6. Set Up Uptime Kuma
git clone https://github.com/louislam/uptime-kuma.git
cd uptime-kuma
sudo docker-compose up -d
Visit: http://<EC2_PUBLIC_IP>:3001/

7.Email Alerts via Uptime Kuma
SMTP configured with Gmail/Yahoo
Sends alerts when your app goes down or is unreachable

8.Monitoring Dashboard

9.Security (Optional Enhancements)
Configure UFW to limit ports
Setup HTTPS using Nginx + Let’s Encrypt
Use a domain name for branding



