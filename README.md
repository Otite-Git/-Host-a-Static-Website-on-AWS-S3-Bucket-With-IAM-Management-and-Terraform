# 💻Host a Static Website on AWS S3 Bucket with Terraform.☁️

Hi! Welcome to my repository containing my AWS Project I've have undertaken as a Cloud Engineer and Cloud architect enthusiast⚡️:

In this repository you will see a description of the project, low and high level architecture, scripting files and information on other key assets that I have used to develop this project as part of my portfolio and progressive development.

## **Website Page**


## **Project Overview** 

This project demonstrates how to host a Static Website on AWS, utilising AWS services for a scalable, simple, storage soluton and highly available architecture. The key components include the usage of S3 Bucket, HTML Scripting, IAM User Management, Terraform scripting and Bash Scripting and many more. The setup ensures cost effectiveness as hosting the website is cheap due to the non-existence of any other components. simplicity as it holds fixed content, where each page is coded in HTML and displays the same information to every visitor. Lastly, Terraform supports a number of cloud providers including AWS so it can be packaged and reuse the code in form of modules

![image](https://github.com/Otite-Git/Host-a-Dynamic-Web-App-on-AWS-With-Docker-Amzon-ECR-and-Amazon-ECS/assets/154989610/a6b60ad6-ba1c-4f5e-9255-c018bfdbb892)



- - - 
## **Architecture**

1. **S3 Bucket:** Enables environmental file storage.
2. **Application Load Balancer:** Distributes web traffic across an Auto Scaling Group of EC2 instances in two availability zones for high availability and fault tolerance.
3. **Route 53:** Used for domain name registration and DNS record management.
4. **GitHub:** Used for version control and collaboration, storing web files.
5. . **IAM Roles:** Used to allow for the secret access key and access key ID to authenticate with AWS in order to push the container image to ECR.


## **Deployment Steps**
