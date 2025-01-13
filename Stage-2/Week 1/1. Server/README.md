1. Create new user for all of your server 

  A. Create new users for both virtual machines
  
  ![1](https://github.com/user-attachments/assets/c14677ff-f0c4-4720-b30d-f264201ea92b)

  ![1 1](https://github.com/user-attachments/assets/820b17f9-418e-4a6d-86ba-cf5708201217)

  B. Grant access rights to users already created

  ![2](https://github.com/user-attachments/assets/1d65da25-8b79-4b77-a858-979b65aa0d66)

  ![2 1](https://github.com/user-attachments/assets/5db2554f-9359-48a9-b66a-38aff941dd82)

  C. User login has been created in each vm

  ![3](https://github.com/user-attachments/assets/de0a317a-779b-4b9a-8fba-33dee60889a4)

  ![3 1](https://github.com/user-attachments/assets/2b4ad9b0-2871-4c30-a7ce-886a04568238)
  
2. The server can login with SSH-KEY and password

  A. Create a new directory with the name ~/.ssh and grant access rights using chmod to the folder that has been created. 

  ![4](https://github.com/user-attachments/assets/b3a9a509-e4cf-4562-8ba4-b9397b0716fc)

  ![4 1](https://github.com/user-attachments/assets/b55e247c-e6df-49b4-8d20-e7b0b9e211ee)

  B. Create another file with the name authorized_keys inside the ./ssh folder that will store the keys when they are created later and grant access rights to the created file.
  
  ![5](https://github.com/user-attachments/assets/1a7bd8c4-ebb0-473d-9dff-423d9237fed0)

  ![5 1](https://github.com/user-attachments/assets/d8ed4cad-ebae-49f9-b73f-422e96972bf8)

  C. type ssh-keygen to generate an ssh key 

  ![6](https://github.com/user-attachments/assets/60c3441b-5171-4e48-baf3-6525d87d7662)

  ![6 1](https://github.com/user-attachments/assets/84369861-f6a2-4e63-9ca3-f5e13a5fd1e8)

  D. inside the ssh folder there are 3 files, namely id_rsa for private keys, id_rsa.pub for public keys, and authorized_keys to store shared keys. 

  ![7](https://github.com/user-attachments/assets/4a8759b7-0338-49c7-92d7-aebf05685b53)

  ![7 1](https://github.com/user-attachments/assets/0f8656ae-740d-408f-9013-5d5b65631d8f)

  E. After that, copy the public key to the vm that we will remote, for example, copy the public key vm2 to vm1 to be able to remote vm1.

  ![8](https://github.com/user-attachments/assets/a6436bfa-ccfc-491d-8fe3-953c54eff019)

  ![8 1](https://github.com/user-attachments/assets/516d4087-247e-4798-896f-b94cffb36a3f)

  F. Open nano /etc/ssh/sshd_config to enable PubkeyAunthentication yes and PasswordAuthentication yes

  ![9](https://github.com/user-attachments/assets/f5ba53c1-7121-4e84-9a63-743a0c14205c)

  ![9 1](https://github.com/user-attachments/assets/8bb90664-6120-4cd2-b8a0-c7615aa34ac6)

  G. Sshd restart has been modified

  ![10](https://github.com/user-attachments/assets/993407ef-16cd-40c5-a068-79238043a47b)

  ![10 1](https://github.com/user-attachments/assets/4a22e20b-9636-40f9-94e3-65fe7057bb29)

  H. Login using user@ip address

  ![11](https://github.com/user-attachments/assets/46727d76-63e3-433c-9a04-529b344f9e86)

  ![11 1](https://github.com/user-attachments/assets/5cfff284-8731-4141-9a4b-0744421ada12)
