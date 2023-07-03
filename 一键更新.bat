@echo off

setlocal

REM 设置Git仓库路径
set GIT_REPO_PATH=E:\ChatGPT\AIChatWeb

REM 切换到Git仓库目录
cd %GIT_REPO_PATH%

REM 添加所有修改的文件
git add .

REM 提示用户输入提交消息
set /p COMMIT_MESSAGE=Please enter commit: 

REM 创建提交
git commit -m "%COMMIT_MESSAGE%"

REM 推送到远程仓库
git push -u origin "master"

endlocal
