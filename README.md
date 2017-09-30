# ipsum
This is to demostrate the DevOps ability of setting up enviornment with auto deploy.
Created by Sahanpere@gmail.com

# The task is to setup simple one file web page with image and text 
Following approch is taken and use the resources within this respository

Appspec.yml file will setup the enviornment while running the scripts in scripts folder to install and start apache.
This will do after copying the / file to /var/www/html folder
#script/*.sh
These files has yum installation and starting up the apache

#Automate the continues Deployment
AWS EC2 and AWS codedeply servers uses to deploy the code and make it automated with each commits.
The Integration&Service uses from github to setup a webhook with CodeDeploy to trigger a deploy of each commit.

# To test the continues deployment
Just edit index.html file content and commit the changes. The changes should display within few minutes in http://52.72.65.61/ or http://ec2-52-72-65-61.compute-1.amazonaws.com/

