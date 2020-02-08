# 组件化 baseModue
baseModue

# 1.远程共有库使用 

touch 文件

git add .

git commit -m '描述'

git status

git remote add origin  远程库地址

git push origin master

git tag '0.0.1'

git push --tags

pod spec create baseModue 

git add .

git commit -m '修改baseModue.podspec'

git push

以下命令每创建一个库都需要操作一次？

pod trunk register xjr1270508005@sina.com  'xjryuanmeng' --verbose 

pod trunk push baseModue.podspec


Demo使用

pod init

# 2.本地私有库使用 

清除pod缓存
pod cache clean --all

https://www.jianshu.com/p/fc1aa5583c5b

https://www.cnblogs.com/richard-youth/p/4704413.html

调试信息

pod spec lint NAME.podspec --verbose

pod trunk push NAME.podspec --verbose
