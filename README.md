rest-api-1-nodeJS
=================

sebuah sample aplikasi rest api menggunakan nodeJS dan database MySQL

sample ini meliputi 

read   data
insert data
delete data

step

1. upload file sql yang berada di folder db ke mysql
2. masuk ke dalam directory aplikasi
3. ketik di terminal atau di cmd -> untuk terminal ketik node app.js
4. ketikan di address bar http://localhost:3000/api

=======================================================================

a. read data
   ketik di address bar http://localhost:3000/api/all
   
   read data yang spesifik
   http://localhost:3000/api/user/[id user]
   
   example : http://localhost:3000/api/user/1
   
b. insert data
   ketik di address bar http://localhost:3000/api/user/add/[nama user yang ingin di add]/[alamat juga]/[telp juga]/[email juga]
   
   example : http://localhost:3000/api/user/add/Andri Yunosa/Batu Ceper Tangerang/08967786543/andri@yunosa.com
   
c. delete data
   http://localhost:3000/api/user/delete/nama user [ nama user yang ingin di delete ]
   
   example : http://localhost:3000/api/user/delete/paisal azhari
   
semoga bermanfaat
programming is the art

nurjalih
