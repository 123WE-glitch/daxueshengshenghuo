@echo off
chcp 65001 >nul
echo ========================================
echo    大学生生活网 - 快速部署指南
echo ========================================
echo.
echo 请选择部署方式：
echo.
echo [1] Netlify 部署（推荐，完全免费）
echo [2] GitHub Pages 部署（推荐，完全免费）
echo [3] 查看详细部署文档
echo [4] 查看免费投稿平台（可被搜索）
echo [0] 退出
echo.
set /p choice=请输入选项 (0-4):

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto docs
if "%choice%"=="4" goto platforms
if "%choice%"=="0" goto end

:netlify
echo.
echo ========================================
echo    Netlify 部署步骤
echo ========================================
echo.
echo 步骤 1/5：注册 Netlify 账号
echo.
echo 1. 访问 https://www.netlify.com/
echo 2. 点击右上角 "Sign up"
echo 3. 使用邮箱、GitHub或Google账号注册
echo 4. 验证邮箱
echo.
pause
echo.
echo 步骤 2/5：部署网站
echo.
echo 1. 登录后，点击 "Add new site" → "Deploy manually"
echo 2. 将整个 wangzhan 文件夹拖拽到上传区域
echo 3. 等待上传和部署完成（约1-2分钟）
echo 4. 部署成功后会显示一个随机域名
echo.
pause
echo.
echo 步骤 3/5：修改网站名称（可选）
echo.
echo 1. 在网站管理页面点击 "Site settings"
echo 2. 找到 "Change site name"
echo 3. 输入你想要的名称，如：daxueshengshenghuo
echo 4. 保存后，你的网站地址变为：https://daxueshengshenghuo.netlify.app
echo.
pause
echo.
echo 步骤 4/5：绑定自定义域名（可选）
echo.
echo 1. 在域名注册商处购买域名（如阿里云、腾讯云）
echo 2. 在Netlify中点击 "Domain settings" → "Add custom domain"
echo 3. 输入你的域名，如：www.daxueshengshenghuo.com
echo 4. 按照提示配置DNS记录
echo.
pause
echo.
echo 步骤 5/5：提交给搜索引擎
echo.
echo 部署完成后，请按照 DEPLOYMENT.md 中的搜索引擎收录指南操作
echo.
echo ========================================
echo    Netlify 部署完成！
echo ========================================
echo.
pause
goto menu

:github
echo.
echo ========================================
echo    GitHub Pages 部署步骤
echo ========================================
echo.
echo 步骤 1/6：注册 GitHub 账号
echo.
echo 1. 访问 https://github.com/
echo 2. 点击 "Sign up" 注册账号
echo 3. 验证邮箱
echo.
pause
echo.
echo 步骤 2/6：创建仓库
echo.
echo 1. 登录后，点击右上角 "+" → "New repository"
echo 2. 仓库名称输入：daxueshengshenghuo（或你喜欢的名称）
echo 3. 选择 "Public"（公开）
echo 4. 勾选 "Add a README file"
echo 5. 点击 "Create repository"
echo.
pause
echo.
echo 步骤 3/6：上传文件
echo.
echo 方法A：使用GitHub网页界面
echo 1. 在仓库页面点击 "Add file" → "Upload files"
echo 2. 将 wangzhan 文件夹中的所有文件拖拽上传
echo 3. 在 "Commit changes" 中输入提交信息
echo 4. 点击 "Commit changes"
echo.
echo 方法B：使用Git命令行（需要安装Git）
echo 1. 打开命令行，进入 wangzhan 文件夹
echo 2. 执行以下命令：
echo    git init
echo    git add .
echo    git commit -m "Initial commit"
echo    git remote add origin https://github.com/你的用户名/daxueshengshenghuo.git
echo    git branch -M main
echo    git push -u origin main
echo.
pause
echo.
echo 步骤 4/6：启用 GitHub Pages
echo.
echo 1. 在仓库页面点击 "Settings"
echo 2. 左侧菜单找到 "Pages"
echo 3. 在 "Build and deployment" 下，"Source" 选择 "Deploy from a branch"
echo 4. "Branch" 选择 "main"，文件夹选择 "/ (root)"
echo 5. 点击 "Save"
echo 6. 等待1-2分钟，网站地址会显示在页面顶部
echo.
pause
echo.
echo 步骤 5/6：访问网站
echo.
echo 你的网站地址为：https://你的用户名.github.io/daxueshengshenghuo/
echo.
pause
echo.
echo 步骤 6/6：绑定自定义域名（可选）
echo.
echo 1. 在仓库Settings → Pages中找到 "Custom domain"
echo 2. 输入你的域名，如：www.daxueshengshenghuo.com
echo 3. 按照提示配置DNS记录
echo.
pause
echo.
echo 步骤 7/7：提交给搜索引擎
echo.
echo 部署完成后，请按照 DEPLOYMENT.md 中的搜索引擎收录指南操作
echo.
echo ========================================
echo    GitHub Pages 部署完成！
echo ========================================
echo.
pause
goto menu

:docs
echo.
echo 正在打开部署文档...
echo.
start DEPLOYMENT.md
goto menu

:platforms
echo.
echo ========================================
echo    免费投稿平台推荐
echo ========================================
echo.
echo 以下平台完全免费，且内容可被搜索引擎收录：
echo.
echo 【博客平台】
echo   - 知乎专栏：https://zhuanlan.zhihu.com/  ⭐⭐⭐⭐⭐
echo   - 简书：https://www.jianshu.com/  ⭐⭐⭐⭐
echo   - 掘金：https://juejin.cn/  ⭐⭐⭐⭐⭐
echo   - CSDN博客：https://blog.csdn.net/  ⭐⭐⭐⭐⭐
echo   - 博客园：https://www.cnblogs.com/  ⭐⭐⭐⭐
echo.
echo 【内容平台】
echo   - 百度文库：https://wenku.baidu.com/  ⭐⭐⭐⭐⭐
echo   - 今日头条：https://mp.toutiao.com/  ⭐⭐⭐⭐⭐
echo   - 百家号：https://baijiahao.baidu.com/  ⭐⭐⭐⭐⭐
echo   - 微信公众号：https://mp.weixin.qq.com/  ⭐⭐⭐
echo.
echo 【问答平台】
echo   - 知乎：https://www.zhihu.com/  ⭐⭐⭐⭐⭐
echo   - 百度知道：https://zhidao.baidu.com/  ⭐⭐⭐⭐⭐
echo.
echo 【社交媒体】
echo   - 微博：https://weibo.com/  ⭐⭐⭐⭐
echo   - 抖音：https://www.douyin.com/  ⭐⭐⭐⭐
echo   - B站：https://www.bilibili.com/  ⭐⭐⭐⭐
echo   - 小红书：https://www.xiaohongshu.com/  ⭐⭐⭐⭐
echo.
echo 【论坛社区】
echo   - 贴吧：https://tieba.baidu.com/  ⭐⭐⭐⭐⭐
echo   - 豆瓣小组：https://www.douban.com/group/  ⭐⭐⭐⭐
echo.
echo 【文档平台】
echo   - 百度经验：https://jingyan.baidu.com/  ⭐⭐⭐⭐⭐
echo   - 百度百科创建：https://baike.baidu.com/  ⭐⭐⭐⭐⭐
echo.
echo ========================================
echo   收录速度说明：
echo   ⭐⭐⭐⭐⭐ = 1-3天（极快）
echo   ⭐⭐⭐⭐ = 1-7天（快）
echo   ⭐⭐⭐ = 1-14天（一般）
echo ========================================
echo.
echo 想了解详细信息吗？
echo.
pause
echo.
echo 正在打开免费投稿平台详细文档...
echo.
start FREE_PLATFORMS.md
goto menu

:menu
echo.
echo ========================================
echo    返回主菜单
echo ========================================
echo.
goto start

:start
cls
echo ========================================
echo    大学生生活网 - 快速部署指南
echo ========================================
echo.
echo 请选择部署方式：
echo.
echo [1] Netlify 部署（推荐，完全免费）
echo [2] GitHub Pages 部署（推荐，完全免费）
echo [3] 查看详细部署文档
echo [4] 查看免费投稿平台（可被搜索）
echo [0] 退出
echo.
set /p choice=请输入选项 (0-4):

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto docs
if "%choice%"=="4" goto platforms
if "%choice%"=="0" goto end

:end
echo.
echo 感谢使用大学生生活网部署指南！
echo.
pause