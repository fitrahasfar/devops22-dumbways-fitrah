## 1 What is git?
Git is a Distributed Version Control System designed to manage file changes and can involve multiple people in a repository, making software development easier.

## 2. Describe the flow of how Git works?
A. Clone repository

<img width="693" alt="Screenshot 2024-12-13 at 22 00 32" src="https://github.com/user-attachments/assets/6baeb1cc-d3cd-46ac-a58f-5121cc333dac" />

B. Make changes to file

<img width="1470" alt="Screenshot 2024-12-13 at 22 08 06" src="https://github.com/user-attachments/assets/2afd35cc-2b4e-4c40-8006-86c9af90ff9a" />

C. Mark the change

<img width="610" alt="Screenshot 2024-12-13 at 22 13 55" src="https://github.com/user-attachments/assets/f0adbbb5-2cb4-422e-ae7b-753b9b5b0afd" />

D. Commit changes

<img width="761" alt="Screenshot 2024-12-13 at 22 16 25" src="https://github.com/user-attachments/assets/c47e1e47-c120-4a3d-8151-fdda455e7721" />

E. Push to repository

![image](https://github.com/user-attachments/assets/3432f8f7-ad44-4a30-b334-ce4b1d776bd4)

F. Check repository github after push 

<img width="1470" alt="Screenshot 2024-12-13 at 22 25 14" src="https://github.com/user-attachments/assets/6919238b-3502-492c-a11f-fbc102bd19b6" />

## 3. Git command documentation
A. git config --global user.name/user.email > Setting up Git Global Identity

![1](https://github.com/user-attachments/assets/71af813a-ab59-47c7-beb4-b8e906cdab96)

B. git init > Create a new Git repository in the local directory

![2  git init](https://github.com/user-attachments/assets/be2885c0-9fed-4343-8e03-b899260164fa)

C. git status > Display the status of files in the repository.

![3  git status](https://github.com/user-attachments/assets/274a1517-f898-4f1d-96b9-781b00862ca8)

D. git log > View the list of commits that have been made.

![4  git log](https://github.com/user-attachments/assets/eafb9117-7c48-4ddf-9680-0b4c2d01233d)

E. git pull origin main > Retrieve the latest updates from the remote repository.

![5  git pull](https://github.com/user-attachments/assets/12a7d27c-507a-4cb2-9fc2-933b15e17916)

F. git branch > Display branch

![6  git brach](https://github.com/user-attachments/assets/8ff595f7-30d1-475a-989d-157f8f6a1fe0)

G. git branch master > create a new branch master

![image](https://github.com/user-attachments/assets/91f70dc3-643c-4d2b-a8c5-6114036254e4)

I. git branch -d master > delete branch master

![8  git delete brach](https://github.com/user-attachments/assets/122a3b1d-5f44-44a2-a6da-c60f268e0d6f)

J. git checkout master > Switch to another branch.

![9  git checkout](https://github.com/user-attachments/assets/48d7d9dd-538b-476a-beaa-f0d4c6966501)

K. git remote > Checking Remote Repository in Git.

![10  git remote](https://github.com/user-attachments/assets/b1ac23a1-2043-4685-ae1c-562b254c5475)

## 4. Study case
There are 2 developers who are developing applications from company A, let's call them Reyhan and Teguh, they happen to be working on the same project, and they are working on the same file index.html. Reyhan makes changes to the index.html file and commits: git add index.html;
git commit -m ‘fix: Typo on Description’.  Teguh happened to also make changes to index.html and commit: git add index.html; git commit -m ‘feat: Header Adjustment’. Then here it turns out that Reyhan did a push to the repository. Teguh, who has not yet done a push, tries to push to the repository. Because it turns out that there are new changes on the remote that Teguh does not yet have, Git rejects Teguh's push and notifies that there is a conflict. Here Teguh must fix the conflict so that the changes made by Teguh can be saved into the app repository. then how do you handle the case owned by Teguh?

Solution:
A. Perform a pull request on git that is used to get the changes that reyhan has made and make the changes that you want to make.

![image](https://github.com/user-attachments/assets/d2a46d0a-b14e-4d5d-93bb-ee30ac8ce7ed)

B. After making changes, mark the file that has been changed.

![image](https://github.com/user-attachments/assets/e6f54cf0-2b4d-45bf-b16e-1aa62158692b)

C. Commit to Resolve Conflict.

![image](https://github.com/user-attachments/assets/5d35b88d-f21e-438e-a9b7-8137d2279485)

D. Push to git repository.

![image](https://github.com/user-attachments/assets/6e98f665-ec90-4b09-b109-95fc3c24685e)
