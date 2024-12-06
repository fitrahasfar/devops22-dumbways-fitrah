## 1. What is DevOps?
DevOps is an approach that integrates software development with IT operations. Its main goal is to improve collaboration between development and operations teams, enabling faster, more efficient and reliable software development cycles. DevOps emphasizes process automation, continuous monitoring, and faster application testing and deployment, thus improving quality and reducing the risk of errors.

## 2. Create 1 Virtual Machine?
A. Open page download multipass on your browser https://multipass.run/install
B. Choose windows as the operating system used
![image](https://github.com/user-attachments/assets/d52548eb-a7d7-44b2-8577-1e50dcb2303c)
C. Download the file from the link provided and then install it on your PC/Laptop
D. After installation the display will look like this
![image](https://github.com/user-attachments/assets/815fe7af-603c-4e4e-b9f3-cf43f68cfc93)
E. Select according to the version of Ubuntu you want and after it is finished the display will look like this
![image](https://github.com/user-attachments/assets/cc0e2871-ee5f-43e8-8ee3-d1555cf15162)

## 3. Install Apache2 Web Server to Virtual Machine?
A. Open terminal and enter the command sudo apt-get update
![image](https://github.com/user-attachments/assets/3a269944-83b2-4aa9-9160-e5a938dba7a3)
B. To install apache2 enter the command sudo apt-get install -y apache2
![image](https://github.com/user-attachments/assets/0e0b1d3c-b6e2-4fb1-af2d-d6d20e2b57a9)
C. To see apache2 running enter the command systemctl status apache2
![image](https://github.com/user-attachments/assets/7e8baedd-7aa0-490d-967c-16ba45755ce9)
D. See apache2 is running by enter command curl localhost as shown in the picture
![image](https://github.com/user-attachments/assets/b83ab36f-5fe7-4073-9f38-2ecf8524d4b8)
