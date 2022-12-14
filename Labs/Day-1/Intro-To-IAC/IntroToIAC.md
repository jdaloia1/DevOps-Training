# Lab 2 - Intro To Infrastructure As Code (IAC)

## What will you learn ?

- Creating the right folder structure for your BICEP IAC templates.
- Create a Storage Account template. 
- Create a Data Factory template
- Deploy BICEP templates to Azure Resource Group


# Tasks

### 1. Creating the right folder structure. 

1. Navigate to the Sandbox folder on the root of the repo (in visual studio code)

2. Create a folder called "bicep"

3. In the Bicep folder create two folders one called "templates" and the other called "deployment"


#

### 2.Creating Storage Account BICEP template

1. In the templates folder create a file called "storage-account.bicep"
    a. Using the .bicep extension tells visual studio code that this is a Bicep template and you should see the BICEP icon appear on the file.


2. Inside the empty "storage-account.bicep" file write the following code **_on one line_**
    - resource 
    - storageAccount
    - 'Microsoft.Storage/storageAccounts@2021-09-01' =

Compiled together this should appear just like the following **_resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = _**

3. After you have written the "=" you should see an option in your VS code window to provide the "required properties" select this.
   - The required properties to deploy a storage account have now been provided for you.
   - Name , Location, SKU and Kind are the property values that need to be provided.

4. We will now provide the values for these properties:
    - Name = provide a name for your storage account, this must be in '', it must be globably unique and MUST contain only letters and numbers.
    - Location = 'uk south'
    - SKU Name = 'Standard_LRS'
    - Kind = 'StorageV2'

This template now has all the required properties to deploy a Storage Account.


# 

### 3.Creating a Data Factory Template
 
1. In the templates folder create a file called "data-factory.bicep"
    a. Using the .bicep extension tells visual studio code that this is a Bicep template and you should see the BICEP icon appear on the file.


2. Inside the empty "data-factory.bicep" file write the following code **_on one line_**
    - resource 
    - dataFactory
    - 'Microsoft.DataFactory/factories@2018-06-01' =

3. After you have written the "=" you should see an option in your VS code window to provide the "required properties" select this.
   - The required properties to deploy a Data Factory have now been provided for you.
   - Name and Location are the property values that need to be provided. 
   - If Location was not generated by the required properties function please add a line similarly done to the storage account template.

#

### 4. Deploying the BICEP template

There are two ways to deploy a BICEP template locally:
- BICEP extension via VS Code
- Powershell

For the benefit of this course we will deploy the file via the visual studio code extension.

1. Navigate back to the "storge-account.bicep" file.

2. Once in the file run the following command "ctrl shift p"

3. This will bring a drop down bar/ 
- Enter the following command ">Bicep:Deploy Bicep File..."
- This will now give you the option to deploy a BICEP template.

4. Select the correct resource group to deploy too

5. Say "none" to the parameter file

6. The deployment will now begin and a URL in the terminal window will appear which will take you to the deployment blade of the resource group for you to track the deployment.

7. Now complete the same task for the Data Factory template.




#
#

# This is the end of the Intro to IAC Lab, Well Done !