# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.
# 🚀 Strapi Deployment on AWS ECS Fargate with Terraform & CI/CD

## 📌 Overview

This project demonstrates how to deploy a Strapi application on AWS using ECS Fargate, fully managed with Terraform and automated through GitHub Actions. CloudWatch is used for logging, monitoring, and alarms to ensure visibility into application performance.

---

## 🧱 Architecture

- Dockerized Strapi application
- Amazon ECR for container image storage
- AWS ECS Fargate for serverless container hosting
- Terraform for Infrastructure as Code
- GitHub Actions for CI/CD automation
- CloudWatch for logs, metrics, and alarms

---

## ⚙️ Features

- ✅ Automated Docker build and push to ECR
- ✅ Infrastructure provisioning via Terraform
- ✅ ECS Fargate deployment
- ✅ CloudWatch logging integration
- ✅ CPU and Memory monitoring with alarms
- ✅ Fully automated deployment pipeline

---

## 📂 Project Structure

```
.
├── terraform/
│   ├── main.tf
│   ├── ecs.tf
│   ├── ecr.tf
│   ├── iam.tf
│   ├── variables.tf
│   ├── cloudwatch.tf
│   └── alarms.tf
├── .github/workflows/
│   └── deploy.yml
├── Dockerfile
├── package.json
└── README.md
```

---

## 🔄 CI/CD Workflow

GitHub Actions performs:

1. Checkout code
2. Configure AWS credentials
3. Build Docker image
4. Push image to ECR
5. Run Terraform to deploy/update infrastructure
6. Update ECS task revision automatically

---

## ☁️ Deployment Steps

1. Clone repository

```bash
git clone https://github.com/namitagrawal2001/strapi-ecs-fargate-terraform.git
cd strapi-ecs-fargate-terraform
```

2. Initialize Terraform

```bash
cd terraform
terraform init
```

3. Apply infrastructure

```bash
terraform apply
```

4. Push code to trigger CI/CD

```bash
git push origin main
```

---

## 📊 Monitoring

CloudWatch provides:

- CPU Utilization metrics
- Memory Utilization metrics
- Network traffic metrics
- Application logs
- Alarm notifications

---

## 🧪 Verification

- ECS service running with active task
- Application accessible via public IP
- Admin panel functional
- Logs visible in CloudWatch
- Metrics updating in dashboard

---

## 🧹 Cleanup

To destroy infrastructure:

```bash
terraform destroy
```

---

## 👤 Author

**Namit Agrawal**

GitHub: https://github.com/namitagrawal2001  
Project Repo: https://github.com/namitagrawal2001/strapi-ecs-fargate-terraform  

---

## 📜 License

This project is for learning and demonstration purposes.


---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>

