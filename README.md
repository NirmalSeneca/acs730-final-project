
# ACS730_Group12_Project

    link for our git repository https://github.com/NirmalSeneca/acs730-final-project.git

        --------------------------------------------------<!-- CREATION OF BUCKET -->-------------------------------
    Create 3 bucket for 3 environment

        dev-group12-project        <dev env>
        staging-group12-project   <staging env>
        prod-group12-project      <prod env>

    Upload the below mentioned photos in each bucket (format should be in .jpeg)
    
        dafodil.jpeg
        daisy.jpeg
        hibiscus.jpeg
        lilly.jpeg
        rose.jpeg
        tulip.jpeg

    --------------------------------------<!-- CREATION OF SSH KEY  -->----------------------------------
    Generate 3 ssh key for different environments using below mentioned command in the webserver part of each environment

        ssh-keygen -t rsa -f Group12-dev
        ssh-keygen -t rsa -f Group12-staging
        ssh-keygen -t rsa -f Group12-prod

        --------------------------------------------------<!-- DEPLOYMENT -->--------------------------------------------------
    Once bucket is created we have to provision and do the deployment for 3 environment 
    We started deploying step by step  first with the dev environment and moved to the network part and run the terraform command there and after that to the webserver part using same command below:-
    
    Note: the Private and Public IP for of the webserver for CLoud9 environment in dev, staging and prod environment must be updated before running terraform
         ACS730FinalProject/environment/dev/network/

        alias tf=terraform
        tf init = Which will initialize Terraform configuration files inside the ACS730_Group7_Project directory
        tf fmt = Used to reformat Terraform configuration files in a standard manner
        tf validate =Validates the configuration files in a directory
        tf plan = Preview the Terraform actions that are changed which you can apply later
        tf apply --auto-approve =As per the dependency on configuration files this commands helps in creating or updating infrastructures 

    Change to the below mentioned directory.
        ACS730FinalProject/environment/dev/webserver/
        tf init
        tf fmt
        tf validate
        tf plan 
        tf apply --auto-approve


    Once deployment in dev is success we will apply same code in staging environment for network and webserver
    Change to the below mentioned directory. 

        ACS730FinalProject/environment/staging/network/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve

    Change to the below mentioned directory.
        ACS730FinalProject/environment/staging/webserver/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve
 
 
    At last we will be approaching prod environment and apply same command 
    Change to the below mentioned directory.

        ACS730_FinalProject/environment/prod/network/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve
 
    Change to the below mentioned directory
        ACS730_FinalProject/environment/prod/webserver/
        tf init
        tf fmt
        tf validate
        tf plan
        tf apply --auto-approve


    --------------------------------------------------<!-- TERRAFORM DESTROY -->--------------------------------------------------
    Once it is successful we will be now destroying the terraform configuration
    the destroying process will be in following order

        ACS730_FinalProject/environment/prod/webserver/
        tf destroy --auto-approve 
        ACS730_FinalProject/environment/prod/network/
        tf destroy --auto-approve 

        ACS730_FinalProject/environment/staging/webserver/
        tf destroy --auto-approve 
        ACS730_FinalProject/environment/staging/network/
        tf destroy --auto-approve 

        ACS730_FinalProject/environment/dev/webserver/
        tf destroy --auto-approve 
        ACS730_FinalProject/environment/dev/network/
        tf destroy --auto-approve 

   
