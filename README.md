# 🚀 Terraform Multi-Environment Infrastructure-with-backend (AWS)
Code for terraform mutli env infrastructure with remote backend


## 📌 Overview

This project provisions AWS infrastructure using **Terraform** with a **multi-environment setup**.

The infrastructure is organized into:

* **dev** (development)
* **stg** (staging)
* **prd** (production)

Reusable components are defined inside a centralized **infra-module**.

---

## 📂 Project Structure

```bash
multi-env-infra/
│
├── envs/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   └── terraform.tf
│   │
│   ├── stg/
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   └── terraform.tf
│   │
│   └── prd/
│       ├── main.tf
│       ├── providers.tf
│       └── terraform.tf
│
└── infra-module/
    ├── ec2.tf
    ├── s3.tf
    ├── dynamodb.tf
    └── variables.tf
```

---

## ⚙️ What This Project Does

* Creates **EC2 instances**
* Creates **S3 bucket**
* Creates **DynamoDB table**
* Uses **modules for reusability**
* Supports **multiple environments**
* Uses **remote backend (S3)**
* Uses **variables for flexibility**

---


## 🔧 Terraform Commands

### Initialize Terraform

```bash
terraform init
```

### Validate

```bash
terraform validate
```

### Plan

```bash
terraform plan
```

### Apply

```bash
terraform apply
```


## ☁️ Backend Configuration

Each environment uses an S3 backend:

```hcl
terraform {
  backend "s3" {
    bucket       = "dev-s3-tf-441"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    dynamodb_table = "dev-infra-app-table"
   
  }
}
```

---


### For Backend  ( DoNot Destroy Previous state)

```bash
terraform init
terraform plan
terraform apply

```

### For Remove LockId

```bash
terraform force-unlock  <lock id>
```
### For Migrating S3 to Local

```bash
terraform init -migrate-state # first comment backend with #
```

### Destroy

```bash
terraform destroy
```

---

## 🌐 Running Environments

### Dev

```bash
cd envs/dev
terraform init
terraform apply
```

### Staging

```bash
cd envs/stg
terraform init
terraform apply
```

### Production

```bash
cd envs/prd
terraform init
terraform apply
```

---

## 🌿 Git Workflow

### Initialize Git

```bash
git init
```

### Add Files

```bash
git add .
```

### Commit

```bash
git commit -m "Initial Terraform multi-env setup"
```

### Create Dev Branch

```bash
git checkout -b dev
```

### Push to GitHub

```bash
git push -u origin main

```

---

## 🔐 Security Best Practices

❌ Do NOT commit:

* `terraform.tfstate`
* `.terraform/`
* `.pem` (private keys)

---

## 📄 .gitignore Example

```gitignore
*.tfstate
*.tfstate.*
.terraform/
.terraform.tfstate.lock.info
*.pem
*.key
*.pub
```

---

## ⚠️ Important Notes

* Backend S3 bucket must exist before `terraform init`
* Each environment should have its own state file
* Do not use the same S3 bucket for backend and application

---




⭐ This project demonstrates a real-world DevOps Terraform setup.
