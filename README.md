
# ipsum
This is to demonstrate the DevOps ability to set up the environment with auto deploy.
Created by Sahanpere@gmail.com

# The task is to set up simple one file web page with image and text.

Use github and AWS codedeploy to make fully HA website with auto scaling and fail safe.
Technologies use
### Notepad++ : Edit the html content
### apache web server : to host web pages 
### Github : Git public repository
### Github Integration and Service : Setup webhook with Codedeploy
### AWS CodeDeploy : Configure and setup AWS infrastructure and automate the deployment
### AWS AMI /EC2 : Infrastructure to setup the web pages.
### AWS CLI/ S3 : Download the codedeploy agents into master client and install
### AWS  Autoscaling / ELB : Make the system HA and fail safe
### Yamal and shell scripting

# Procedure
Setup the web files in github with relevant files to do the code deployment into EC2 instance.
Following public github repository created for this purpose.
https://github.com/sahanpere/ipsum
You can then create local clone of this repository and add files.
e.g. git clone https://github.com/sahanpere/ipsum
        git add .
        git commit -m “Adding local files into repository”
        git push

Following approach is taken and use the resources within this repository
  ## Appspec.yml file will setup the environment while running the scripts in scripts folder to install and start apache.
  This will do after copying the / file to /var/www/html folder
  ## script/*.sh
  These files has yum installation and starting up the apache
  
  # Setting up the IAM
  Setup EC2 instance and create roles and policies according to the TAM.txt provided
  # Setup the Codedeploy agent
  Setup the EC2 codedeploy with given instruction in install_codedeployagent.txt 

# Automate the continues Deployment
AWS EC2 and AWS codedeply servers use to deploy the code and make it automated with each commit.
The Integration&Service uses from GitHub to setup a webhook with CodeDeploy to trigger a deploy of each commit.

# To test the continues deployment
Just edit index.html file content and commit the changes. The changes should display within few seconds in http://ipsumlb-757800952.us-east-1.elb.amazonaws.com

# This can be done in many ways.
### Setup S3 static web page and sync the S3 with github with a configuration tool like Jenkins. In order to make it HA you can use  the AWS CLI to access the directory that contains your application files.
### Use github and AWS codedeploy to make fully HA website with auto scaling and fail safe mechanism with Blue/Green deployment.
### Use Terraform and Ansible to set up infrastructure and automate the application installation by ansible and configure those with Jenkins.
### Use Jenkin Docker image to pull the github revision and deply in apache web server.

-- 
Sahan Perera (07564597554)
