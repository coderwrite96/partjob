# 1531如何提交作业

## 配置ssh
1. 使用`cat ~/.ssh/id_ed25519.pub`查看公钥
2. 如果没有公钥，类似下面的输出是没有公钥的情况：
```
$ cat ~/.ssh/id_ed25519.pub
cat: /import/ravel/5/z5313514/.ssh/id_ed25519.pub: No such file or directory
```
使用`ssh-keygen -t ed25519`生成公钥，然后一路回车。提示然后跳到下一步
```
$ ssh-keygen -t ed25519
Generating public/private ed25519 key pair.
Enter file їn which to save the key (/import/ravel/5/z5555555/.ssh/id_ed25519):
Created directory ′/import/ravel/5/z5555555/.ssh′.
Enter passphrase (empty foṟ no passphrase):
Enter same passphrase again:
Your identification has been saved їn /import/ravel/5/z5555555/.ssh/id_ed25519.
Your public key has been saved їn /import/ravel/5/z5555555/.ssh/id_ed25519.pub.
The key fingerprint is:
cf:16:45:51:3f:7a:db:a0:71:7d:1c:d9:1a:95:1e:01 z5555555@weaver
The key′s randomart image is:
+--[ED25519 256]--+
| H A . D .E . G. |
| R   Y..  . N  I |
| . A .. .  +.+ U |
|+ . .  . +.o. L .|
|.X + .. S o B  I |
|O = + N  .. .A N.|
| B o    I .   A  |
|* ...o . o .T  . |
|.o.o+..  o   A M |
+----[SHA256]-----+
```

3. 添加公钥到gitlab
执行`cat ~/.ssh/id_ed25519.pub`到剪贴板，然后在gitlab的settings->ssh keys中添加公钥。
https://nw-syd-gitlab.cseunsw.tech/-/user_settings/ssh_keys


## 个人作业提交 6 步 提交
1. git clone INSERT_LAB_SSH_URL
2. cd lab0X_example
3. Make changes to the relevant files
4. git add FILE1 FILE2 ...
5. git commit -m "A relevant message for the change"
6. git push


## 小组作业 8 步提交
1. git checkout master (切换到主分支)
2. git pull (在创建新分支前获取团队成员的最新更改)
3. git checkout -b FEATURE_BRANCH (从主分支创建并切换到新的功能分支)
4. 对相关文件进行修改并保存
5. git add FILE1 FILE2 ... (添加修改的文件到暂存区)
6. git commit -m "相关的更改说明" (提交更改)
7. git push -u origin FEATURE_BRANCH (首次推送需要创建远程分支，之后只需要使用git push)
8. 刷新GitLab页面并确认本地的FEATURE_BRANCH分支已同步到GitLab上的FEATURE_BRANCH分支
9. 把merge request发送给其他小伙伴，让他们进行review然后approve，最后merge到master分支


# 一些关于git的资料
https://git-scm.com/book/zh/v2