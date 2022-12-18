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

@echo !!! Repos has been connected !!!

@echo Check it. If it's good, press any key

pause
