# Project 2: Host a Static Website on Amazon S3 Using Terraform

## Project Overview

This project demonstrates how to deploy a static website on Amazon S3 using Terraform (Infrastructure as Code).

The AWS infrastructure is provisioned automatically using Terraform, including the S3 bucket, static website hosting configuration, bucket policy, and HTML file upload.

## Technologies Used

- **AWS S3** – Static website hosting
- **Terraform** – Infrastructure as Code
- **HTML** – Website content
- **AWS CLI** – AWS authentication and configuration
- **Git & GitHub** – Version control

## Project Architecture

User → S3 Website Endpoint → S3 Bucket → index.html

## Project Requirements

1. Create an S3 bucket using Terraform.
2. Enable static website hosting.
3. Upload an `index.html` file.
4. Configure public read access to the website files.
5. Access and test the website through the S3 website endpoint.

## Project Structure

```text
project2-s3-website/
├── main.tf
├── outputs.tf
├── index.html
├── .gitignore
└── README.md
```

The `.terraform.lock.hcl` file is also committed to version control.

## Implementation Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Format and Validate

```bash
terraform fmt
terraform validate
```

### 3. Preview Infrastructure

```bash
terraform plan
```

### 4. Deploy Infrastructure

```bash
terraform apply
```

Review the plan and confirm the deployment.

### 5. Get Website URL

```bash
terraform output -raw website_url
```

Open the generated URL in a browser to access the website.

## AWS Resources Created

Terraform provisions five resources:

- S3 Bucket
- S3 Website Configuration
- S3 Public Access Block Configuration
- S3 Bucket Policy
- S3 Object (`index.html`)

Public read access is configured for the website files. This configuration should only be used in an AWS environment where public website hosting is authorized.

## Project Results

- Successfully provisioned AWS S3 infrastructure using Terraform.
- Successfully uploaded and hosted a static HTML webpage.
- Verified that the webpage was publicly accessible.
- Captured a screenshot of the running website.
- Successfully destroyed the Terraform-managed AWS resources after testing.

**Deployment Status:** Completed and cleaned up.

**Note:** The website URL is no longer active because the S3 resources were deleted after completing the project.

## Resource Cleanup

```bash
terraform destroy
```

This removes the AWS resources managed by the Terraform project after confirmation.

## Security Considerations

- Never commit AWS credentials or Terraform state files.
- Use an approved AWS account and region.
- Enable public access only where explicitly authorized.
- Remove unused cloud resources to avoid unnecessary charges.

## Author

Nikhil Gupta

**Project:** Accenture DevOps Capstone – Project 2
