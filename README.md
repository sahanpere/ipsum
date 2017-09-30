
# ipsum
This is to demonstrate the DevOps ability to set up the environment with auto deploy.
Created by Sahanpere@gmail.com

# The task is to set up simple one file web page with image and text.

Following approach is taken and use the resources within this repository
  ## Appspec.yml file will setup the environment while running the scripts in scripts folder to install and start apache.
  This will do after copying the / file to /var/www/html folder
  ## script/*.sh
  These files has yum installation and starting up the apache

# Automate the continues Deployment
AWS EC2 and AWS codedeply servers use to deploy the code and make it automated with each commit.
The Integration&Service uses from GitHub to setup a webhook with CodeDeploy to trigger a deploy of each commit.

# To test the continues deployment
Just edit index.html file content and commit the changes. The changes should display within few minutes in http://52.72.65.61/ or http://ec2-52-72-65-61.compute-1.amazonaws.com/

# Further improvements
This can be further improved by adding autoscaling, HA, integrate into several instances and make the CI side complete after status change after successful test complete etc with some additional effort.

# Other ways to do this
If it's a static content this can be easily implemented by using S3. Or if the content uses DB's this could use terraform and ansible with Docker or AWS ECS services to containerize the deployment.

-- 
Sahan Perera (07564597554)
