## 1. Comparison between Monolith Applications & Microservices Applications?

| **Aspect**           | **Monolith**                                                                 | **Microservices**                                                                                     |
|----------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| Structure         | Application built as a single codebase.                 | The application consists of small services, each having specific functionality.    |
| Scaling       | Difficult to scale must add the entire application at once.                | Easy to scale; certain services can be scaled independently.                               |
| Complexity     | Simpler to manage for small to medium applications.     | More complex, requiring an orchestrator to manage multiple services.        |
| Dependencies   | Interrelated changes to one module can affect another.           | Isolated services have separate dependencies.                                                    |
| Development Speed | Slowly for large teams changes to one feature affect others. | Fast small teams can work in parallel on different services.                                         |
| Technology        | Usually uses one technology stack.                                 | May use different technologies for each service.                                            |
| Deployment       | Single deployment for the entire application.                                 | Independent deployment for each service.                                                         |
| Maintenance      | Difficult to maintain as the application grows.                             | Easy to fix or change without affecting other services.                                         |

## 2. Deploy Simple application NodeJS, Golang & Python

A. NodeJS

- Install NodeJS
  
  ![1](https://github.com/user-attachments/assets/aa074202-928d-44d9-91ea-2e69fe37bef1)

- Create a new directory

  ![2](https://github.com/user-attachments/assets/790b6f3d-b6d4-4552-a564-c6a59dd8a84f)


- After creating a new directory create a file with the name simple-app-node.js

![3](https://github.com/user-attachments/assets/28dbf5ac-003a-4e5b-8209-a731d0c23784)

- Install express, npm install, and npm init -y to ensure nodejs is ready to use

  ![4](https://github.com/user-attachments/assets/1f64d368-ca1c-4863-8af2-d47293bf5b40)

- Run nodejs with the following command and make sure the file name created is correct

  ![5](https://github.com/user-attachments/assets/e24697e1-e32f-4e24-a626-edcee88a523a)

-  Once nodejs is running check on the other vm to make sure it is running correctly.

  ![6](https://github.com/user-attachments/assets/6c9e9da4-c66c-4735-a810-e34310e9b533)

B. Golang

- Install golang first on vm

  ![7](https://github.com/user-attachments/assets/ec57ccc5-891f-44e7-bb64-1328a9a64f13)

- Create a new directory

  ![8](https://github.com/user-attachments/assets/a3cd78e1-0f37-493e-a35b-95c3aa469960)

- After creating a new directory create a file with the name simple-app-go.go

  ![9](https://github.com/user-attachments/assets/19261075-723e-46b6-8127-eb55cd1e1edd)

- Run golang with the following command and make sure the file name created is correct

  ![10](https://github.com/user-attachments/assets/abb4a78e-49df-4973-8aaa-a8cb4eaea0cb)

- Once golang is running check on the other vm to make sure it is running correctly.

  ![10](https://github.com/user-attachments/assets/621d4b42-3a30-471e-ac60-e7fb08a25849)

- Once golang is running check on the other vm to make sure it is running correctly.

C. Python

- Install python3 and pip3

  ![12](https://github.com/user-attachments/assets/136b8761-ef58-4bad-b47a-4bbfec7549a5)

- Create a new directory

  ![13](https://github.com/user-attachments/assets/8373318f-c737-4b39-89ed-6051ffa54057)

- Create an environment for python and activate it according to the command below

  ![14](https://github.com/user-attachments/assets/ee0d8cff-324b-46a4-897d-a0e8c1f08287)

- Install flask for running python

  ![15](https://github.com/user-attachments/assets/7abad44d-9b23-4753-9da3-3acd80878b6c)

- After creating the directory and installing the python requirements then create a simple-app-python.py file

  ![16](https://github.com/user-attachments/assets/2f9bebe4-6f55-4491-822b-f228ebfdc0e7)

- Run python with the following command and make sure the file name created is correct

  ![17](https://github.com/user-attachments/assets/33f03747-d85a-4f6b-bc69-135e07827e50)

-  Once golang is running check on the other vm to make sure it is running correctly

  ![18](https://github.com/user-attachments/assets/2c17dd7d-dd57-44d6-b2d2-9f0cef374667)

## 3. Deploy the dumbflix application (https://github.com/dumbwaysdev/dumbflix-frontend), using node version 14

A. After cloning repository github on the url github above and move the directory to the clone repository

![19](https://github.com/user-attachments/assets/084fce34-60c8-410c-9e34-4082ce7975ae)

B. Install nvm 14 and make sure to use nodejs version 14 

![20](https://github.com/user-attachments/assets/50f5db8f-01fc-47c4-9554-da9ec19297f6)

C. Do npm install

![21](https://github.com/user-attachments/assets/78d3a6a9-96aa-4cb5-9ca8-e04c0a9f2780)

D. Run with the "npm start" command then the results will be as shown below

![22](https://github.com/user-attachments/assets/5058cec6-40ea-413c-be0c-e504dd7538d5)

E. Once dumbflix is running check on your browser to make sure it is running correctly

![23](https://github.com/user-attachments/assets/12f739d4-9eba-49dd-8fa2-50cd7e19b1ba)

## 4. Implement the use of PM2 so that applications can run in the background (simple-app-node, simple-app-python, dumbflix)

A. Simple-app-node

- Install pm2 on your vm

![24 (nomor 4)](https://github.com/user-attachments/assets/51a4b07c-ed46-47a7-97e9-8270140ea3be)

- Move to directory nodejs and running following command below

![25](https://github.com/user-attachments/assets/466d8456-2e08-41de-b835-66e9b0fe86f5)

- Check your other vm for running your node use pm2

![26](https://github.com/user-attachments/assets/db4adca0-7f8a-4822-ad76-c2a6b43b44d8)

- To stop nodejs running using pm2 then use the command below

  ![27](https://github.com/user-attachments/assets/1020b925-124c-4edc-9341-7978f9038e22)

B. Simple-app-python

- For python, first enter the venv environment and run the pm2 command as shown below

  ![29](https://github.com/user-attachments/assets/9cbdf45d-a2a9-409f-a230-6eafe6f193b7)

- Check your other vm for running your node use pm2

  ![30](https://github.com/user-attachments/assets/3522a986-f6c1-4dbc-bc68-a8119ed5e1dd)

- To stop python running using pm2 the use the command below

  ![31](https://github.com/user-attachments/assets/8bcde8e9-9845-46af-999f-abb4c33cf20a)

C. Dumbflix

- Go to the dumflix directory first and do the following to run the dumbflix website

  ![32](https://github.com/user-attachments/assets/e622d215-e0b9-454a-8e3b-e738f960a1fc)

- Check your browser and input your ip address vm then result as below
  
  ![33](https://github.com/user-attachments/assets/f370eaf7-23c0-4dfe-832c-81bcfc5def9a)
