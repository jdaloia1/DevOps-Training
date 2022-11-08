# Lab 2 - Intro To Infrastructure As Code (IAC)

## What will you learn ?

- Create a Service Connection.
- Create an Environment.
- Configure Variable Groups.
- Create and run YAML pipeline in DevOps.


# Tasks

### 1. Creating a Service Connection 

In this section you will create a service connection will be used for serving the connection between DevOps and the Azure Subscription.

1. In DevOps, navigate to "Project Settings" in the bottom left hand corner of the screen.

2. Then navigate to "Service connections" under the "Pipelines" section.

3. Select "New service connection" 
- Then select "Azure Resource Manager"
- Select "Next"
- Then Select "Service principal (manual)"


4. Fill in the following required details:
- Subscription Id
- Subscription Name
- Service Principal Id
- Service Principal key
- Tenant Id

5. Verify the connection and provide the name "DevOps" in the service connection name.

#

### 2.Creating an Environmnet.

In this section you will create an Environment in DevOps which is used to manage control gates and access between environments.

1. On the left hand side of the screen there is the pipelines logo (looks like a rocket!) click this.

2. Now select "Environments". 

3. Select "New environment" at the top left.

4. In the name box provide "DEV" and make sure the Resource is set to "None" and the hit "Create".

# 

### 3.Creating variable groups.

In this section you will learn how to create and set up variables groups.

1. Staying in the pipeline section navigate now to "Library"

2. Select "+ Variable Group"
- In the "Variable group name" provide the name "DEV"

3. Now the parameters can be created by select the "+ Add" icon at the bottom.

4. Provide a parameter for every paramater that was called in the "main.bicep" file.
- As an example in the main.bicep file there is a paramter called "deploymentLocation", in the variable group create a variable called "deploymentLocation and provide the value as "uk south".
- IMPORTANT, create a variable called "resourceGroup" and provide the 
- Do this for all the parameters in the main.bicep and provide the appropriate values.
- If you did not manage to set up the main.bicep file in the previous lab, please find a working example to copy in the "Demo" folder of the repo.


#


### 4.Creating the Pipeline in DevOps.

In this section you will learn how to link the YAML pipeline from the repository and run the pipeline.

1. Staying in the "Pipelines" section in DevOps, now navigate to the "Pipelines" tab.

2. Select "New pipeline" in the top right section.

3. Select "GitHub" and provide your GitHub details

4. Approve any authentication requsts.

5. Select "Existing Azure Pipelines YAML file"

6. Make sure that your changes are in the "main" branch (submit a PR if required) and in the "Path" container selct the drop down and the path to the yaml file should be generated. Then select "Continue"

7. The pipeline will then appear on the screen, and then select "Run" on the top right hand corner.

8. The pipeline will now run and deploy the BICEP template!

# This is the end of the DevOps CI/CD Lab, Well Done !