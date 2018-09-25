lib แนะนำ
-SeleniumLibrary ไม่ต้องใช้ version2
-robotframework-faker สร้าง data Automatic
pybot -d output_dir *.robot

git 101

git status
git init

file comfig ของ git อยู่ใน .git

git add . #เอาหมด
git rm --cashe filename  #ลบ file ที่ add ไป
git commit -m 'comment'
git log # ดู log
git remote add origin https://github.com/chalalaz/jenkins-demo.git
git push -u origin master 
git pull origin master  #เอาไฟล์ลงมาที่เครื่อง

jenkins 101

1.create new project & new item
2.configure

plugins
1.robotframework
2.build monitor

