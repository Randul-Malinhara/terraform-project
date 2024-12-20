

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

## Getting Started

### Prerequisites
1. **Install Tools**:
   - Terraform: [Install Terraform](https://www.terraform.io/downloads)
   - Pulumi: [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
   - AWS CLI: [Install AWS CLI](https://aws.amazon.com/cli/)
2. **Configure AWS Credentials**:
   ```bash
   aws configure
   ```

### Steps to Run

#### Terraform
1. Navigate to the Terraform project directory:
   ```bash
   cd terraform-project
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Validate and plan:
   ```bash
   terraform validate
   terraform plan
   ```
4. Apply the changes:
   ```bash
   terraform apply
   ```

#### Pulumi
1. Navigate to the Pulumi project directory:
   ```bash
   cd pulumi-project
   ```
2. Install dependencies:
   ```bash
   pip install pulumi pulumi-aws
   ```
3. Preview the stack:
   ```bash
   pulumi preview
   ```
4. Deploy the stack:
   ```bash
   pulumi up
   ```

#### CloudFormation
1. Navigate to the CloudFormation project directory:
   ```bash
   cd cloudformation-project
   ```
2. Deploy the template:
   ```bash
   aws cloudformation deploy --template-file template.yaml --stack-name my-stack
   ```

---

## Features
- **Reusability:** Modular design for EC2 instances and other components.
- **Multi-language Support:** Pulumi scripts leverage Python, enabling more flexibility.
- **Automation:** GitHub Actions workflow for CI/CD integration.

---

## Testing and Validation
- **Terraform:** `terraform validate`, `terraform plan`
- **Pulumi:** `pulumi preview`, `pulumi up`
- **CloudFormation:** `aws cloudformation validate-template`

---

## CI/CD Integration
### Example: Terraform CI Workflow
```yaml
name: Terraform CI
on:
  push:
    branches:
      - main
jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Terraform
        uses: hashicorp/setup-terraform@v2
      - name: Terraform Init
        run: terraform init
      - name: Terraform Plan
        run: terraform plan
```

---

## Deliverables
1. Terraform project in `terraform-project/`
2. Pulumi project in `pulumi-project/`
3. CloudFormation project in `cloudformation-project/`

---

## Success Criteria
- **Reusability:** Scripts can be used for multiple environments.
- **Scalability:** Infrastructure accommodates increasing demand.
- **Automation:** CI/CD pipelines ensure rapid deployment.
- **Documentation:** Clear instructions for usage and modification.

---
