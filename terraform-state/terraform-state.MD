# Terraform statefile / dynamodb template

## Introduction
This terraform template will deploy the basic terraform resources, bucket for statefiles, dynamodb table for locking, and permissions

## Configuration

Create a configuration file ../envs/<ENV NAME>-state.json
On details of the meaning of these variables see the [variables.tf](variables.tf)

## How to deploy

   1, Initialize terraform - without backend - as we now create the resources for the S3 backend

    terraform init -backend=false

   2, Make terraform plan

    terraform plan -var-file ../envs/<ENV NAME>-state.tfvars.json 

   3, Confirm that the plan is creating the resource and does not destroy something
   4, Apply the plan

    terraform apply -var-file ../../envs/marczis-test-env-state.tfvars.json 

**Note 1**: This step will make a new terraform plan, you can examine again the template on the console.

**Note 2**: This template generates a provider configuration in the ../../envs directory, which will be used by the next templates, by providing the file at the terraform init step like:

    terraform init -backend-config=../../envs/provider.tfvars.json

**IMPORTANT**: As this is the first step in building your infrastructure as a code, the statefile representing the statefile tempalte is stored in your working directory, make sure you make a copy of it and keep it at a safe location. It has sensitive content inside, so don't commit into the repository. Other option is to even change this template to use the now existing infrastructure - but this can lead to complications when you try to destroy it. (if you ever need to destroy it)