# terraform-portfolio-project

Portfolio Deployment
Overview
This project involves deploying a portfolio website for Pinkie Grace, a freelance web designer, using AWS and Terraform. The website is a single-page application designed with the Next.js framework.

Project Description
Pinkie Grace aims to showcase her work and attract potential clients through an online portfolio. The website is designed to be modern, responsive, and highly performant, catering to a global audience.

Requirements
Highly Available: Ensure minimal downtime and global accessibility.
Scalable: Handle increased traffic as the portfolio gains traction.
Cost-Effective: Optimize hosting costs.
Fast Loading: Provide a seamless user experience with quick load times.
Solution
Deploying the website using AWS services like S3 for static hosting and CloudFront for content delivery is ideal. Terraform is used to automate and manage the infrastructure efficiently.

Outcome
By the end of this project, you will:

Deploy a Next.js website on AWS.
Implement Infrastructure as Code with Terraform.
Configure AWS CloudFront for global content delivery.
Apply best practices for security and performance.
Create a GitHub repository to host all project files and code.

Getting Started
Prerequisites
AWS Account
Terraform Installed
GitHub Account

Project Structure
main.tf: Main Terraform configuration file.
variables.tf: Variable definitions.
outputs.tf: Output definitions.
README.md: Project documentation.

Deployment
Create an S3 bucket for static hosting.
Configure CloudFront for global content delivery.
Deploy the Next.js site to S3.
Configure DNS settings for the domain.

Contributing
Fork the repository.
Create a feature branch.
Commit your changes.
Push to the branch.
Create a pull request.
