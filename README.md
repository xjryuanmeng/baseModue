# 组件化
# baseModue
baseModue

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

# 以下命令每创建一个库都需要操作一次？
pod trunk register xjr1270508005@sina.com  'xjryuanmeng' --verbose 

pod trunk push baseModue.podspec

