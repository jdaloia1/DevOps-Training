# Lab 2 - Intro To Infrastructure As Code (IAC)

## What will you learn ?

- Modifying and completing a YAML Pipeline.
- Link YAML Pipeline from repo to DevOps.
- Run YAML Pipeline and deploy BICEP file.


# Tasks

### 1. Modifying and completing a YAML Pipeline. 

In this section you will modify and complete a YAML Pipeline to deploy the module bicep file that you created in the previous lab.

1. Navigate to your "storage-account.bicep" file, and write the following code on line 1:
    - param storageAccountName string 

2. Now that the parameter has been declared, it can now be used. Where a hardcoded value for the storage account has been made (from the previous lab) now enter "storageAccountName" (no quotes). This will now use the parameter declared for the name.
- The property should look something like this "name: storageAccountName"

3. Now create the following parameters:
- deploymentLocation, storageAccountSKU and storageAccountKind (these will all be string data types.)
- You should end up with a set of parameters looking like the following:
  - param storageAccountName string 
  - param storageAccountSKU  string
  - param deploymentLocation string 
  - param storageAccountKind string 

4. Now map the parameters to their required property so that there are no hard coded references.

5. Please do the same for the Data Factory template, this will only need two parameters deploymentLocation and dataFactoryName, (both will be string Data Types)
#

### 2.Creating a module for your BICEP template.

1. Navigate now to the "deployment" folder in the "BICEP" folder.

2. Create a file called "main.bicep" 

3. In the empty file write the following "module storageAccount '../templates/storage-account.bicep' = 
- After you have written the "=" you should see an option in your VS code window to provide the "required properties" select this and this will generate the parameter mapping for the parameters you created in the storageAccount template.

4. Just as you create the parameters for the Storage Account template, please create the same parameters in the "main.bicep" file.

5. Please now map the newly created parmeters to the module.

6. Please complete the same operation for the Data Factory template.

# 

### 3.Creating dependancies and conditions (bonus task)

IAC allows you to be flexible with your deployments and allows you to pass in certain conditions and functions.
One of these conditions is called "depends on"

1. In your "main.bicep" file navigate to the data Factory module.
 
2. In between the two curly brackets "}}" add the following code:
-  dependsOn: [
    storageAccount
  ]

3. This will allow you to pass in array of items to make the Data Factory deployment dependant on.

4. Remove the dependancy condition that was just created.

5. Create a new parameter called deployDataFactory and make this a data type "bool" and add a hard code reference "false"
- It should look like the following "param deployDataFactory bool = false".

6. On the line where the Data Factory module has been delcared after the "=" add the following code "if(deployDataFactory)"
- The whole line should look something like this module dataFactory '../../../Demos/data-factory.bicep'   = if(deployDataFactory)   { 


#


# This is the end of the Andanced IAC Lab, Well Done !