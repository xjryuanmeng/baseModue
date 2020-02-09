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

同上，只是以下两个命令不需要

pod trunk register xjr1270508005@sina.com  'xjryuanmeng' --verbose 

pod trunk push baseModue.podspec

因为不需要放到远端

查看更多调试信息

pod spec lint NAME.podspec --verbose

pod trunk push NAME.podspec --verbose

清除pod缓存
pod cache clean --all

https://www.jianshu.com/p/fc1aa5583c5b

https://www.cnblogs.com/richard-youth/p/4704413.html

pod install

把Podfile内全部的库更新重新安装

pod install --verbose --no-repo-update

该命令只安装新添加的库，已更新的库忽略

pod update 库名--verbose --no-repo-update

该命令只更新指定的库，其它库忽略

# 3.远程私有库使用 




# Mac下 cocoapods重装,及pod command 找不到解决

https://www.jianshu.com/p/e37de160f428

1. 卸载已有的cocoapods

sudo gem uninstall cocoapods

2. 查看本地安装过的cocopods相关东西

gem list --local | grep cocoapods

3. 删除上述文件

sudo gem uninstall cocoapods-xxx

4. 查看Ruby环境

gem sources -l

若不合适,即修改

gem source -r https://rubygems.org/

gem source -a https://ruby.taobao.org/ (已停用)

gem sources -a https://gems.ruby-china.org/ (用这个)

5. 安装cocoapods

sudo gem install cocoapods

或者 sudo gem install -n /usr/local/bin cocoapods --re

如果遇到

Unable to resolve dependencies: cocoapods requires cocoapods-core (= 0.35.0), claide (~> 0.7.0), xcodeproj (~> 0.20.2), cocoapods-downloader (~> 0.8.0)

则需要重新更新gem

sudo gem update --system

pod setup

所有的项目的 Podspec 文件都托管在https://github.com/CocoaPods/Specs。第一次执行pod setup时，CocoaPods 会将这些podspec索引文件更新到本地的~/.cocoapods/目录下，这个索引文件比较大.

为了更快的下载这些索引文件,我们更换源

$ git clone https://git.coding.net/CocoaPods/Specs.git ~/.cocoapods/repos/master

$ pod repo update

$ pod update

如果遇到

[!] Failed to connect to GitHub to update the CocoaPods/Specs specs repo - Please check if you are offline, or that GitHub is down

我建议在 ~/.cocoapods/repos/master 的子目录 将Specs 文件名改为master,重新pod setup 等待一段时间,可能就会成功

6. 查看pod 版本

pod --version

1.3.1

7. 此时如果出现pod command找不到

将pod 添加到环境变量中 /usr/local/bin

具体操作可参考这篇文章

8. cocoapods 使用

1.进入到项目根目录下，生成Podefile文件

$pod init

2.填写对应的信息

3.下载第三方库

pod install

Podfile 基本格式

platform :ios, '9.0'

target '集成cocoapods' do

    pod 'AFNetworking'
    
    pod 'MJExtension'
    
end
