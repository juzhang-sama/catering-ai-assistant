@echo off
echo ========================================
echo    餐饮行业AI助手 - 统一启动脚本
echo ========================================
echo.

echo 请选择启动模式：
echo.
echo 1. 稳定模式 - 直接启动Electron（推荐）
echo 2. 完整模式 - 启动React应用
echo 3. 修复依赖 - 清理并重新安装依赖
echo 4. 退出
echo.

set /p choice=请输入选择 (1-4): 

if "%choice%"=="1" goto stable
if "%choice%"=="2" goto full
if "%choice%"=="3" goto fix
if "%choice%"=="4" goto exit
goto invalid

:stable
echo.
echo 正在启动稳定模式...
echo 设置环境变量...
set NODE_ENV=development
echo 启动Electron应用...
npx electron .
goto end

:full
echo.
echo 正在启动完整模式...
echo 设置环境变量...
set NODE_ENV=development
echo 启动webpack开发服务器...
start /B npm run dev:webpack
echo 等待webpack服务器启动...
timeout /t 15 /nobreak > nul
echo 启动Electron应用...
npx electron .
goto end

:fix
echo.
echo 正在修复依赖...
echo 删除损坏的node_modules...
rmdir /s /q node_modules 2>nul
echo 删除package-lock.json...
del package-lock.json 2>nul
echo 清理npm缓存...
npm cache clean --force
echo 重新安装依赖...
npm install
echo 依赖修复完成！
pause
goto end

:invalid
echo.
echo 无效选择，请重新运行脚本
pause
goto end

:exit
echo.
echo 退出启动脚本
goto end

:end
echo.
echo 应用已关闭
pause 