@echo off
@echo Loggin is: "%1" Password is: "%2"

@echo Git part is starting
@echo Connecting to GitHub...

rem git config --global user.name "%1"
rem git config --global user.email "%2"

git config --global user.name "CrazyFenX"
git config --global user.email "kattoshkin@gmail.com"

git remote add FactorioRepos https://github.com/CrazyFenX/FactorioRepos.git
git remote show FactorioRepos

git status

@echo !!! Repos has been connected !!!

@echo Check it. If it's good, press any key

pause

git add .
git diff
@echo Check your changes. If it's good, press any key

pause

rem Определяем текущую дату
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

rem Фиксируем изменения
@echo Commiting...
git commit -m "commit by %mydate%:%mytime%"
@echo commit has been planted \^0\^

Pushing...
git branch -M main
git push -u origin main
@echo push has been planted