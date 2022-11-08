# Lab 2 - Intro To Infrastructure As Code (IAC)

## What will you learn ?

- Create a Service Connection.
- Link YAML Pipeline from repo to DevOps.
- Configure Variable Groups and create Environments.
- Run YAML Pipeline and deploy BICEP file.


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

1. 

# 

### 3.Creating dependancies and conditions (bonus task)




#


# This is the end of the Andanced IAC Lab, Well Done !