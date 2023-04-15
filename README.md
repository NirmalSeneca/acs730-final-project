
# ACS730_Group12_Project

    link to our git repository https://github.com/NirmalSeneca/acs730-final-project.git

    Video Link:- https://seneca-my.sharepoint.com/:v:/g/personal/nmpanchal2_myseneca_ca/EUBpiP6KMzdBsC8BjBOpizMBMsSXfV19i4X3sbWbRGq8AQ?e=JOIpCd
    Step 1: Create 3 bucket for each environment

            dev-group12-project  for dev environment
            staging-group12-project for staging environement
            prod-group12-project  for prod environment

    Step 2: We need to upload the photos in each s3 bucket(format should be in .jpeg)
    
    blackclover.jpeg
    bluelock.jpeg
    bleach.jpeg
    onepiece.jpeg
    naruto.jpeg
    demonslayer.jpeg   

    Step 3: Generate 3 ssh key for different environments using below mentioned command in the webserver part of each environment

        ssh-keygen -t rsa -f Group12-dev
        ssh-keygen -t rsa -f Group12-staging
        ssh-keygen -t rsa -f Group12-prod

    Step 4: 
    Once bucket is created we will deploy the environment dev stage and prod one by one so that we can provisioned the infrastructure as asked in the assignment
    
    Step 5: 
    We need to update the private and public ip address of the cloud9 environment in varibles.tf folder in webserver in each environment

        alias tf=terraform
        tf init 
        tf fmt 
        tf validate 
        tf plan 
        tf apply --auto-approve 

    Change the directory to.
        ACS730-Final-Project/environment/dev/webserver/
        tf init
        tf fmt
        tf validate
        tf plan 
        tf apply --auto-approve


   If successfully deployed on dev we will run it on staging and prod

        ACS730-Final-Project/environment/staging/network/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve

   Change the directory to.
        ACS730-Final-Project/environment/staging/webserver/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve
 .
    Change the directory to.
        ACS730-Final-Project/environment/prod/network/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve
 
    Change the directory to.
        ACS730_FinalProject/environment/prod/webserver/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve


    Step 6:
    We can destroy the infra using the commands below

        ACS730-Final-Project/environment/prod/webserver/
        tf destroy --auto-approve 
        ACS730-Final-Project/environment/prod/network/
        tf destroy --auto-approve 

        ACS730-Final-Project/environment/staging/webserver/
        tf destroy --auto-approve 
        ACS730_FinalProject/environment/staging/network/
        tf destroy --auto-approve 

        ACS730-Final-Project/environment/dev/webserver/
        tf destroy --auto-approve 
        ACS730-Final-Project/environment/dev/network/
        tf destroy --auto-approve 

   
