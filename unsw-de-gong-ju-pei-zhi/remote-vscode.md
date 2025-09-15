# 使用 VS Code 远程连接 UNSW 服务器

本指南将帮助您配置 VS Code 远程连接到 UNSW 的服务器，实现在本地编辑器中直接操作远程文件。

## 第一步：下载与安装 VS Code

请访问 VS Code 官网下载并安装最新版本：

{% embed url="https://code.visualstudio.com/" %}

## 第二步：安装 Remote-SSH 插件

<figure><img src="../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

## 第三步：配置 SSH 连接到学校账户

安装完 Remote-SSH 插件后，您会在 VS Code 左侧活动栏看到远程资源管理器图标

<figure><img src="../.gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (5).png" alt=""><figcaption></figcaption></figure>

点击远程资源管理器图标，然后开始配置连接信息

<figure><img src="../.gitbook/assets/image (6).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (7).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (9).png" alt=""><figcaption></figcaption></figure>

请按照以下信息配置连接：

```
主机名 (Host): vlab.cse.unsw.edu.au
端口 (Port): 22
用户名 (Username): 您的学号 (zID)
密码 (Password): 您的 UNSW 密码
```

**注意：** 请将 "您的学号" 替换为您实际的 zID（如 z1234567）

## 第四步：开始使用

配置完成后，点击连接按钮即可打开远程工作区，系统会显示您的远程文件夹

<figure><img src="../.gitbook/assets/image (12).png" alt=""><figcaption></figcaption></figure>

连接成功后，您可以：
- 浏览远程文件目录
- 右键创建新文件夹和文件
- 直接编辑远程文件
- 在集成终端中执行命令

<figure><img src="../.gitbook/assets/image (13).png" alt=""><figcaption></figcaption></figure>

至此，您已经可以像操作本地文件一样使用远程服务器了。

## 实践示例：创建第一个 Hello World 程序

以下是一个完整的开发流程示例：

### 步骤详解

1. **打开远程工作区**
   - 点击连接按钮进入远程环境

2. **创建项目文件夹**
   - 右键点击空白区域，选择 "New Folder"
   - 命名为 "first"

3. **创建源代码文件**
   - 右键点击 "first" 文件夹，选择 "New File"
   - 命名为 "hello.c"

4. **编写代码**
   - 双击 "hello.c" 文件开始编辑
   - 输入您的 C 代码

5. **保存文件**
   - 使用快捷键 `Ctrl+S` (Windows/Linux) 或 `Cmd+S` (Mac)
   - 或者启用自动保存：File → Auto Save

6. **编译和运行**
   - 右键点击 "first" 文件夹，选择 "Open in Integrated Terminal"
   - 在终端中输入：`gcc hello.c -o hello`
   - 运行程序：`./hello`
   - 查看输出结果

### 小贴士
通过多次练习这个流程，您将快速熟悉远程开发环境的使用。

## 文件管理建议

远程服务器将伴随您整个学习生涯，良好的文件组织习惯至关重要。

### 推荐的目录结构

建议为每门课程创建独立文件夹，并在课程文件夹下为每个实验、测试和作业创建子文件夹：

比如类似这样
```
comp2041
    ├── lab1
    │   ├── lab1.c
    │   ├── lab1.h
    │   ├── Makefile
    │   ├── test.c
    ├── lab2
    │   ├── lab2.c
    │   ├── lab2.h
    │   ├── Makefile
    │   ├── test.c
    ├── lab3
    │   ├── lab3.c
    │   ├── lab3.h
    │   ├── Makefile
    │   ├── test.c

comp1511
    ├── lab1
    │   ├── lab1.c
    │   ├── lab1.h
    │   ├── Makefile
    │   ├── test.c
    ├── lab2
    │   ├── lab2.c
    │   ├── lab2.h
    │   ├── Makefile
    │   ├── test.c
```

### 管理优势

这种结构化的文件组织方式具有以下优势：
- **清晰分类**：每门课程和每个任务都有独立空间
- **易于查找**：快速定位特定的作业或实验文件
- **版本控制友好**：便于使用 Git 等版本控制工具
- **备份方便**：可以按课程或任务进行选择性备份

---

*感谢使用本指南！如果觉得有帮助，欢迎请左哥喝咖啡～*

<figure><img src="../.gitbook/assets/image (1).png" alt="" width="188"><figcaption></figcaption></figure>

