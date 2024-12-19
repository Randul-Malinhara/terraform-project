

---

# Infrastructure as Code (IaC) Project

## Overview
This project focuses on utilizing Infrastructure as Code (IaC) tools like Terraform, Pulumi, and AWS CloudFormation to automate and manage cloud infrastructure. The goal is to create reusable, efficient, and scalable modules while ensuring best practices in IaC implementation.

---

## Objectives
- Develop expertise in Terraform, Pulumi, and AWS CloudFormation.
- Create reusable modules or plugins for these tools to enhance efficiency.
- Automate infrastructure deployment and integrate it with CI/CD pipelines.

---

## Project Structure

### 1. Terraform
**Directory:** `terraform-project/`  
Contains reusable Terraform modules and configurations.  

**Structure:**
```
terraform-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

### 2. Pulumi
**Directory:** `pulumi-project/`  
Contains Pulumi scripts written in Python to define and deploy infrastructure.  

**Structure:**
```
pulumi-project/
├── __main__.py
```

---

### 3. AWS CloudFormation
**Directory:** `cloudformation-project/`  
Contains AWS CloudFormation templates for infrastructure as YAML files.  

**Structure:**
```
cloudformation-project/
├── template.yaml
```

---