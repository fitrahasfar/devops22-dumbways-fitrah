Tasks :

-Install nginx
- Create a reverse proxy and use a domain with your name ex:
   - frontend: randal.studentdumbways.my.id

      -ssl cloudflare can be Active / or want to use SSL certbot is also welcome
   - backend: api.randal.studentdumbways.my.id

     -For Certbot Installation there are many ways (one of them is like in class), or if you find other ways to install certbot or other tools used to generate ssl feel free to use yaa.
      - Generate SSL for your reverse proxy.
      - Chalange try to find how to implement Wildcard SSL
  
A. Back-End

1. Install nginx

![1  install nginx](https://github.com/user-attachments/assets/e6ea9e8c-814f-4e05-b05f-d809a67b0f6b)

2. Create a new folder and create file api.fitrah.studentdumbways.my.id

![2  buat folder baru dan buat file api](https://github.com/user-attachments/assets/b5ca6953-5941-42ee-92ca-f7f20daedb09)

3. Enter the command webserver

![3  isikan file seperti diatas](https://github.com/user-attachments/assets/c20220e7-effc-49db-a20a-6cb399940cfb)

4. Check nginx and restart

![4  cek nginx dan restart](https://github.com/user-attachments/assets/5cb1703e-2fe4-42c5-acbd-1eec28354f6c)

5. Login to cloudflare, enter sub domain and ip address

![5  masuk ke cloudflare dan isikan sub domain dan ip](https://github.com/user-attachments/assets/ec805e63-f013-4b92-88ef-449c2d7aaf0e)

6.  Open your browser and input the domain

![6  buka browser dan masukan domain telah dibuat](https://github.com/user-attachments/assets/362d379a-d630-4865-b697-e19f919e7564)

7.  Install certbot

![7  install certbot](https://github.com/user-attachments/assets/a9d9ba1a-3da3-4f1b-a7c8-fd45cd83b936)

8.  Activate certbot to domain
   
![7  install certbot](https://github.com/user-attachments/assets/3c1ad934-ea6c-4598-b54e-81c79dabf237)

B. Front-End

1. Just like before, enter the apps folder and create a new file, namely fitrah.studentdumbways.my.id.

![image](https://github.com/user-attachments/assets/045589e9-0e5d-48d7-8622-ec6325a22ac0)

2. Enter the file and enter the webserver command and proxy pass pointing to the ip address of the dumbflix-frontend vm.

![image](https://github.com/user-attachments/assets/657cfcd4-3412-493a-a90a-7d2a5d5c7de6)

3. Check and restart nginx.

![4  cek nginx dan restart](https://github.com/user-attachments/assets/5cb1703e-2fe4-42c5-acbd-1eec28354f6c)

4. Log into cloudflare and add a record that is the ip address of the webserver and the sub domain used.

![image](https://github.com/user-attachments/assets/322e298a-ea21-410d-8334-dafda2bfbe1e)

5. Then create a browser and type in the sub-domain and the domain has been created.

![image](https://github.com/user-attachments/assets/af96d905-ca1f-4f49-bf0f-3872f13a1c44)

C. Wildcard domain

1. Enter the command wildcard, copy DNS TXT and value VALUE TXT

![wildcard](https://github.com/user-attachments/assets/0438f70d-8b2d-4f9c-9b9a-c8c0455975db)

2. Login cloudflare, choose type TXT, paste DNS TXT and VALUE from command wildcard

![image](https://github.com/user-attachments/assets/fd0e7a0b-6520-46a7-85cf-76c6c986777b)

