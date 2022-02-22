# 02 Basic Version and Branch Management (Git)

### Apa itu Git Hub

<p align="justify"> Git Hub adalah salah satu version control system populer yang digunakan para developer untuk mengembangan software secara bersama sama/kolaborasi. <p>

### Seting Up

<p align="justify">Melakukan setting up name dan email dengan git config yang dilakukan pada git bash yang sudah terinstal. <p>
code config untuk setup email dan nama :

<code> $ git config --global user.name "user name" </code>

<code>$ git config --global user.email "user email"</code>

Setelah selesai melakukan setup user name dan user email, bisa melakukan pengengecekan dengan cara :

<code>$ git config --list</code>

### Branch

<p align="justify">Branch merupakan cabang dari repository utama

Cara melakukan branch yaitu, pertama kita membuat sebuah branch <code>git branch "Nama Branch"
</code> setelah membuat branch kita dapat melihat branch apa saja yang telah dibuat menggunakan <code> git branch --list </code> setelah mengetahui branch apa saja yang dimiliki, kemudian ingin berpindah kebranch yang lain menggunakan <code> $ git checkout "Nama Branch"</code> <p>

### Uraian singkat essay/praktikum

<p align="justify">Dalam praktikum ini kita ditugaskan untuk membuat sebuah repository dan kemudian melakukan implementasi branch yang terdiri dari 4 branch yaitu <strong>Master, developer, featureA, featureB</strong>, yang dimana kita membuat sebuah sebuah branch <code>git branch "nama Branch"</code>. Setelah menambahkan branch melakukan implementasi intruksi dari <strong>PUSH, PULL, STASH, MERGE</strong>.<p>

<strong>PUSH</strong> : <code>git push origin</code>

<strong>PULL</strong> : <code>git pull origin "nama branch/master"</code>

<strong>STASH</strong> : <code>git stash</code>

<strong>MERGE</strong> : <code>git merge "branch yang ingin dimerge"</code>

<p align="justify">Setelah mengimplementasikan intruksi dari <strong>PUSH, PULL, STASH, MERGE</strong>, kita mengimplementasikan sebuah penggunaan konflik.<p>
