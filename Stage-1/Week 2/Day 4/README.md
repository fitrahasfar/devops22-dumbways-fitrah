1. Shortcuts Documentation of Nano Text Editor
   A. Ctrl + o > Saves the file being edited.
   
   B. Ctrl + x > Exit Nano. If there are unsaved changes, Nano will ask if you want to save the changes.
   
   C. Ctrl + w > Search for text in a file.
   
   D. Ctrl + l > Deletes the entire row where the cursor was.
   
   E. Ctrl + u > Insert deleted text using Ctrl + k.
   
   F. Ctrl + g > Displays help for Nano commands.
   
   G. Ctrl + c > Display the position of the cursor in the file (row and column).
   
   I. Ctrl + a > Move to the beginning of the row.
   
   J. Ctrl + e > Move to the end of a line.

2. Text Manipulation Documentation
   A. sed 's/old_text/new_text/g' name_file > Searching and Replacing Text

   ![image](https://github.com/user-attachments/assets/252dd4d8-be11-485d-9a93-57d4fdcfe69d)

   B. sed '/profile/d' index.html > delete specific lines in a file

   ![image](https://github.com/user-attachments/assets/af7751d9-3719-4b88-93ef-3d9f47efa20b)

   C. grep '1' file.txt > search for text that matches a specific pattern in a file

   ![image](https://github.com/user-attachments/assets/1447240c-11b8-4410-b611-d307f576e126)

   D. grep -v '1' file.txt > Display rows that do not contain the word entered

   ![image](https://github.com/user-attachments/assets/198bfc46-de80-430c-867f-85c92d08516e)

   E. grep -c '1' file.txt > count the number of rows that contain a certain pattern
   
   ![image](https://github.com/user-attachments/assets/dee46214-d462-4a57-a7de-7440af1f942d)

   F. sed '3aadd new row' file.txt > add text after the 3rd line
   ![image](https://github.com/user-attachments/assets/a35131fd-8727-4e1b-a913-40cb9e1e90f3)

3. Study case
   You work in a team of data analysts for a website that displays Formula 1 drivers' data. The drivers' data is stored in an md text file called formula-one-drivers.md, with the following format:
   
   ID,Name,Team,Position,Salary
   
   001,Lewis Hamilton,Mercedes,1,70000000
   
   002,Max Verstappen,Red Bull Racing,2,50000000
   
   003,Sergio Perez,Red Bull Racing,3,25000000
   
   004,Charles Leclerc,Ferrari,4,15000000
   
   005,Lando Norris,Mclaren,5,10000000
   
   006,Daniel Ricciardo,AlphaTauri,6,8000000
   
   Your task is to do some text manipulation using the sed command in Linux. Here are some of the things you have to do.
   
   - Replace the words ‘Red Bull Racing’ with ‘Red Bull Racing Honda’ in the Team column.
  
   - Delete all rows containing drivers with more than 3 positions.

   Solution:
   A. Replace the words ‘Red Bull Racing’ with ‘Red Bull Racing Honda’ in the Team column.
   
   ![image](https://github.com/user-attachments/assets/e38f26db-4fec-49e0-97a6-61b7e1397f8f)

   B. Delete all rows containing drivers with more than 3 positions.

   ![image](https://github.com/user-attachments/assets/2473591a-c5cc-40e9-966c-83e80ccb1bbf)

4. Bash Script for Web Server Installation
   A. create a new file named install-webserver.sh and fill in the code according to the image
   
   ![image](https://github.com/user-attachments/assets/2bb717fd-dfef-4a0d-95ac-1ede4dbba518)

   B. Granting Execution Permissions to Scripts

   ![image](https://github.com/user-attachments/assets/0834e25e-9270-4677-be65-28ccdf814a0e)

   C. Running Scripts
   
   ![image](https://github.com/user-attachments/assets/489baca2-dea8-4823-bb4b-2dada5a27b83)

   D. Verify Installation

   ![image](https://github.com/user-attachments/assets/9a89adae-1e4e-479d-8c07-ddf1e949b4c2)

5. Study case
Implement Firewall on your Linux server.

- Create 2 Virtual Machines.
      
- The study case is so that only server A can only access the WebServer on server B.

- Look for ways that UFW can block or allow specific network protocols such as TCP and UDP.

- Explain the difference between TCP and UDP network protocols.

Solution:
A. Make sure that both vm (Virtual Machine) already have ufw.

![image](https://github.com/user-attachments/assets/405a59d8-9220-4621-8258-cf4007b8380f)

![image](https://github.com/user-attachments/assets/4f053d24-1fba-4143-9608-925cd3671df0)

B. Activate ufw as instructed below.

![image](https://github.com/user-attachments/assets/a9c5a741-4df7-4b99-aa3e-f7ceeed1df08)

![image](https://github.com/user-attachments/assets/51cf53b2-5098-42e6-8c7e-dde686c503e9)

C. On server B, create a firewall that only allows server A to access the webserver.


