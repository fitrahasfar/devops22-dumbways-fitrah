1. Deploy database MySQL
   
   A. Install mysql-server
   
   ![1](https://github.com/user-attachments/assets/8dc6832a-0d65-45b8-933c-ea93c13050b6)

   B. Run mysql and enable mysql
   
   ![2](https://github.com/user-attachments/assets/eda65123-2bd4-4d0d-85f9-620d0bf21393)

   C. To increase the security of the mysql installation type sudo mysql_secure_installation
   ![3 (2  A setup secure installation)](https://github.com/user-attachments/assets/876953a6-8c6a-4c3b-bb4d-7a9fe172283a)

   ![3 1](https://github.com/user-attachments/assets/5aeda25d-3f28-43cc-b835-93a5a7deceff)

   ![3 2](https://github.com/user-attachments/assets/cec7f247-71a1-4970-8890-3b8f04f78ffb)

   ![3 3](https://github.com/user-attachments/assets/33697f15-7f00-4366-b76c-dc6ed3040629)

   ![3 4](https://github.com/user-attachments/assets/54420595-1423-4d9e-a742-25aaa4ffd515)

   ![3 5](https://github.com/user-attachments/assets/678b8006-d69e-4101-80d8-7d1a83ae14de)

   D. At the beginning of the mysql installation we can log in without a password, therefore we will provide a password in advance for our mysql access to be more secure, first enter mysql using the sudo mysql command.

   ![4 (masuk ke sql tanpa pass)](https://github.com/user-attachments/assets/47bb72c8-f298-42fa-b400-899aaf9f2ec6)

   E. After that, enter the ALTER USER command to assign a password to root and enter the FLUSH PRIVILEGES command to apply the changes made.
   
   ![5 (masukkan pass)](https://github.com/user-attachments/assets/144fe5a1-977a-4ce1-9fcc-162e319e0187)

   F. Login using the command “msysql -u root -p” and enter the password created earlier.

   ![6](https://github.com/user-attachments/assets/f0d8b73c-d817-4df5-8784-3950ae31eb00)

   H. Create a new database named devops.

   ![7  (4_1 buat database baru)](https://github.com/user-attachments/assets/aef6ad7f-abdd-4327-a75f-55ac395fa67c)

   I. Create a new user on localhost and enter the password

   ![8  (4_2  buat user baru)](https://github.com/user-attachments/assets/8bd593c4-93dd-4d68-ac6f-5a6af373ae74)

   J. Give privileges to the new user, which can only access the devops database, but also view all the contents of the tables in the devops database and apply the changes.

   ![9  (4_3  berikan hak akses, perbarui hak akses, dan keluar dari mysql)](https://github.com/user-attachments/assets/7bd8af01-6380-472c-94e1-2dc2c003e7a5)

   K. You can see the picture below if different privileges can affect when we log in.

   ![10  (4_4  login menggunakan kedua user dan perhatikan perbedaan root dan user baru)](https://github.com/user-attachments/assets/05fbd874-ba75-4408-97a3-31323f3c142d)

   L. After that, exit mysql and type sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf for us to change the ip of bind-address and mysqlx-bind-address. When changing the ip to 0.0.0.0 it can make our mysql accessed from outside.

   ![11  (5_1  masuk ke dalam sudo nano -etc-mysql-mysql conf d-mysqld cnf dan tambahkan ip public di bind-address)](https://github.com/user-attachments/assets/1b7c4d6f-2f0f-44b7-a544-7c802c0685d2)

   M. Restart mysql

   ![12  (5_2 restart mysql)](https://github.com/user-attachments/assets/2378ab2c-966f-4aa9-bc04-c0a2ba673565)


2. Role Based
   
   A. Login to mysql

   ![1  (A  Masuk ke mysql)](https://github.com/user-attachments/assets/b6931a13-8478-404d-bab6-859d39b78def)

   B. Create database demo;

   ![1  (B  Buat database dan masuk kedalam database telah dibuat)](https://github.com/user-attachments/assets/2f0b54ef-5d2a-4acb-9abb-cd19db5c8b34)

   C. Create a transaction table with the table contents as pictured.

   ![1  (C  buat table transaksi)](https://github.com/user-attachments/assets/a9525de8-0b4d-4c0f-871f-d214b611b667)

   D. Create two role admin and guest.

   ![2  create role](https://github.com/user-attachments/assets/33c805c5-d38c-4d03-abd2-503781148819)

   E. Assign access rights to each role.

   ![3  berikan hak akses](https://github.com/user-attachments/assets/2a8440f3-e376-4870-92a1-129702fd2742)

   F. Create a new user and grant access.

   ![4  buat user dan tetapkan role](https://github.com/user-attachments/assets/3d330d52-98a8-43a6-8484-90d62f295731)

   ![5  buat user guest dan tetapkan role](https://github.com/user-attachments/assets/037404fc-afc6-4680-b832-68783d72aac8)

   G. Set Role user.
   
   ![6  Set role di admin](https://github.com/user-attachments/assets/383ea953-6fc4-4c29-b7da-af5e1f4ce673)

   ![7  Set role di guest](https://github.com/user-attachments/assets/b8f6603f-ad7a-4e2c-bba0-226b3b00ff76)

   H. Each new user has been granted access rights.

   ![8  uji coba role admin menggunakan user baru](https://github.com/user-attachments/assets/3bea8ded-9dd3-4504-ae75-82c4a632002b)

   ![8  uji coba role guest](https://github.com/user-attachments/assets/525f2dd7-4999-4dd4-9eca-15e653d814bf)

3. Remote User

   A. First create a new user, grant access, and apply the changes made.

   ![1  remote akses](https://github.com/user-attachments/assets/ca2d5884-9625-49ab-acc6-d97531ba0f84)

   B. Login using a new user and enter the ip address of the vm where mysql is installed.

   ![2  login melalui vm2](https://github.com/user-attachments/assets/a2c6bd46-a306-4051-a8e5-0ac62240bef4)

