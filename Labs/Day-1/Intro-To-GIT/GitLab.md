# Lab 1 - Intro To Git

## What will you learn ?

- Import a code from a seperate repository by using forking.  
- Cloning a repository. 
- Create a branch in your newly created repository.
- Commit Code to the newly created branch.
- Create a pull request to merge changes into the main branch.



# Tasks

### 1. Forking a repository 

1. Navigate to my repository by clicking the following link
    - https://github.com/jdaloia1/DevOps-Training

2. Select "Fork" in the top right handside of the screen.
    - Then select "Create a new Fork"

3. Give your a repository a name (or keep the original).

4. Select "Create fork" at the bottom 


#

### 2.Cloning the Repository 

1. In your repository select "Code" in the green box.
    a. Copy the HTTPS URL.

2. Navigate now to visual studio code.

3. Once in Visual Studio Code run the following short cut "CTRL SHIFT G"
    - This will bring up the GIT extension, then select "Clone a repostiory"

4. Paste the URL into the box that is asking for the URL 
     - Then select "Clone from Git Hub"

5. Now select a folder on your workstation to clone the code too, (Make sure it is in a suitbale location i.e. not on the root of the C Drive)

The repostory is now cloned and be accessed using the Visual Studio Code

#

### 3.Creating a branch 

In this section you will learn how to create a branch. Branching is an important Development process to know as 99.999% of the time you will be required to use Branches 

1. On the bottom right hand side of your screen you will see a repo logo and the word "main" Select this

2. A box at the top of the screen will appear select "+ Create New Branch From"
        - Give your new branch a name
        - Then select "main"

3. You will now notice that the branch name on the bottom right hand corner has now changed from "main" to branch name that you have provided.


You are now able to work in this branch and commit code.

#

### 4. Commit Code Changes

In this section you will learn how to commit a code change to your branch.


1. Navigate to the "Sandbox" folder on the root of the folder structure.

2. There you will find a file called "GitLab1.txt" 

3. In this file enter free text in order for the a change to be detected.
    a. Once a change has been made click "ctrl s" to save the file.

4. Once the file has been saved click "ctrl shft g" this will show the changed file and allow you to commit.

5. Enter a commit message explaining why the change has been commited, and then select the "tick" box to commit.

6. You may be presented with a message "there are no staged items to commit", select "Yes" to this.

7. Press sync changes and this will now sync the code change with the remote repository.



#

### 5. Creating a Pull Request (PR)

In this section you will learn how to create a Pull Request, a pull request allows you to merge your code changes in to another branch thus allowing code to collaborate code with your peers.

1. Navigate to the Git Hub (online) page where you can see the folder structure of the repository.

2. Select "Pull requests" from the options (inbetween "Issues" and "Actions")

3. Now select "New pull request"
