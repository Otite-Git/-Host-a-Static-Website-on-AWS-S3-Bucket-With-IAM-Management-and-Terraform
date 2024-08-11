# 💻Host a Static Website on AWS S3 Bucket with Terraform☁️

Hi! Welcome to my repository containing my AWS Project I've have undertaken as a Cloud Engineer and Cloud architect enthusiast⚡️:

In this repository you will see a description of the project, low and high level architecture, scripting files and information on other key assets that I have used to develop this project as part of my portfolio and progressive development.

## **Website Page**

[www.aws-terrafrom-static-website.s3-website-us-east-1.amazonaws.com/](https://drive.google.com/file/d/1u6HWVjvddFyTgQz88hk9p3l-ed-SWSG0/view?usp=sharing)

## **Project Overview** 

This project demonstrates how to host a Static Website on AWS, utilising AWS services for a scalable, simple, storage soluton and highly available architecture. The key components include the usage of S3 Bucket, HTML Scripting, IAM User Management, Terraform scripting and Bash Scripting and many more. The setup ensures cost effectiveness as hosting the website is cheap due to the non-existence of any other components. simplicity as it holds fixed content, where each page is coded in HTML and displays the same information to every visitor. Lastly, Terraform supports a number of cloud providers including AWS so it can be packaged and reuse the code in form of modules

![Low Level Architectural Diagram](https://github.com/user-attachments/assets/f0eb3f39-5be1-4e78-9e27-c0fc83eb2cdd)



- - - 
## **Architecture**

1. **S3 Bucket:** Enables environmental file storage.
2. **Application Load Balancer:** Distributes web traffic across an Auto Scaling Group of EC2 instances in two availability zones for high availability and fault tolerance.
3. **Route 53:** Used for domain name registration and DNS record management.
4. **GitHub:** Used for version control and collaboration, storing web files.
5. **IAM Roles:** Used to allow for the secret access key and access key ID to authenticate with AWS in order to push the container image to ECR.


## **Deployment Steps**

### Access keys in AWS IAM
1. Set up access keys in AWS IAM
2. Export those access keys in my computer’s terminal
3. The access key ID and secret access key are important as this is what gives access to uploading, configurating and creating resources over the terminal

### Visual Studio Code Setup
1.Go to the Visual Studio Code website and install Visual Studio Code: Depending on what type of OS is being used, Visual Studio Code can be installed downloading the binary files for Windows or macOS.

### Terraform Setup
1. Go to the Terraform website and install Terraform: Depending on what type of OS is being used, Terraform can be installed downloading the binary files for Windows or macOS

### Folder and File Creation
1. Create a folder in you computer directory called s3_static_website. Note that this folder will be the host directory when using Terminal or command line
2. Created a file called main.tf in Visual Studio Code and save it in the host directory file created above

### Terraform File Configuration
1. Set up the main.tf Terraform file inputting the relevant information such as bucket name. For the purpose of this project a main.tf file template has been created and inlcuded in this repository.
2. Within the main.tf Template file included in this repository, ensure to replace the bucket name defined in the file so it’s completely unique for you

### Terminal Navigation
1. Use your terminal to navigate to s3_static_website
2. Run this in terminal:
```bash
terraform init
terraform apply
```
The output should look like this below:
<img width="1138" alt="terraform init" src="https://github.com/user-attachments/assets/d9a53d7d-afd9-4712-a914-0395f48c1407">  <img width="1025" alt="terraform apply" src="https://github.com/user-attachments/assets/15e193e8-a934-4b8c-81b4-325128a440d1">

### S3 Bucket configuration
1. Once you have successfully completed the terminal navigation steps above
2. Log into your AWS account and head to the Bucket section with S3. Your Bucket should have been created and look like this below:
![Inside the created S3 bucket](https://github.com/user-attachments/assets/b8b4c4df-9834-4c0c-a9d4-759a21e0e818)


### Upload website content to your bucket
1. Upload the files (index.html and NextWork - Everyone...love_files.zip) files into your bucket (right click on each link, and select Save link as..) These files can be located in this repository.
2. Unzip the zip file you've downloaded.
Return to the Amazon S3 console with your bucket page open. Choose the Object tab.
- Choose Upload
- Choose Add files
- Choose index.html
- Choose add folder
- Choose the unzipped folder - NOT the zip file itself!
You might get a popup that tells you that all files in that folder will be uploaded.
- Choose Upload
- S3 will then get to work
3. Once the files and folder are uploaded into the S3 Bucket it should look like this below:
![image](https://github.com/user-attachments/assets/2bd4b9d3-5a92-4a97-98aa-b4147193196b)


### URL Access: Test the S3 Static web site on the new web browser
1. Go to the properties tab of S3 bucket and scroll to the end of this page to find Static website hosting options.
2. Copy the Bucket website endpoint and paste into the new tab of your web browser. It should open the newly created webpage 


## **How to Use**

1. Clone this repository to your local machine.
2. Follow the AWS documentation to create the required resources (S3 Bucket IAM Management) as outlined in the architecture overview.
3. Use the provided scripts to set up the reosurce and applications.
4. Configure the reosurces assets as per the architecture.
5. Access the Website website through the endpoint URL for your bucket.

## **Additional Resources**

- **AWS Documentation:** Refer to the [AWS documentation](https://aws.amazon.com/documentation/) for detailed guides on setting up S3 Bucket, IAM roles and other services such as VPC, EC2, Auto Scaling, and Load Balancer.
- **GitHub Repository Files:** Refer to [Otite-Git/-Host-a-Static-Website-on-AWS-S3-Bucket-With-Terraform](https://github.com/Otite-Git/Host-a-Static-Website-on-AWS-S3-Bucket-With-Terraform.git) to access the repository files for scripts, architectural diagrams, and configuration files necessary for deploying the website.

## **Contributing**

Contributions to this project are welcome! Please fork the repository and submit a pull request with your enhancements.

## **License**

This project is licensed under the MIT License - see the LICENSE file for details.

## **What problems did I solve by completing this project?**

1. **Simplicity:** I was able to effectively to simplift the creation of the hosting of the website through automating the deployment process using Terraform by reducing manual effort and ensures consistency across environments as the deployment of infrastructure and website hosting can be error-prone and time-consuming.
   
2. **Infrastructure Management:** Managing infrastructure changes manually can lead to configuration drift and inconsistencies. Using Terraform allows for version-controlled infrastructure management and easy updates.

3. **Security and Access Control:** Incorrectly configured access controls can expose the website or AWS resources to security risks. Terraform configurations can include security best practices, such as setting proper IAM policies and bucket permissions, to enhance security.


## **What issues did I face while working on the project and how did I resolve that issue?**
  
- **Terraform Configuration Errors:** I had faced the issue of Syntax errors and incorrect configuration in Terraform files. I was able to resolve both issues by using Terraform validate and terraform plan commands to check for errors and view changes before applying them.

- **Terraform file setup Error:** Initially when starting the project, I had faced the challenge of my created main.tf file not being picked up or when entering the terraform apply command. I would get an error message stating the file could not be found in my directory despite it being there. I had resolved this issue by creating a new copy of the file and saving it in VS Code ensuring the Terraform logo appeared after it was correctly formatted. I then uploaded it into the directory folder and ran the Terrafrom apply command again. After doing this it had successfully worked.
 

 ## **What overall lessons did I learn?**
 
- **AWS IAM (Identity and Access Management):** Understanding the role of IAM in securing and managing access to AWS resources. Creating IAM roles and policies to grant necessary permissions for Terraform to manage AWS resources.

- **Terraform Basics:** Infrastructure as Code (IaC): Understanding how to define and manage infrastructure using code. Terraform Configuration: Learning the syntax and structure of Terraform configuration files (e.g., .tf files).

- **AWS S3 for Static Websites:** Static Website Hosting: Configuring S3 buckets to host static content like HTML, CSS, and JavaScript. Bucket Policies: Setting up appropriate bucket policies to allow public access to the website content.

- **AWS S3 for State Management:** A lesson learnt is that nanaging Terraform state files, especially in a team environment can create confusion in terms of versioning. a Lesson would be to use remote state storage (e.g., AWS S3) with locking (e.g., DynamoDB) to manage state files and avoid conflicts.







