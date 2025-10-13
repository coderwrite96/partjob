# COMP2521 代码风格规范指南

## 重要性说明

在 COMP2521 课程中，代码风格是评分的重要组成部分，一般占比20%。除了确保代码功能正确外，**良好的代码风格同样重要**，不规范的代码风格扣分还挺多。


## 自动化代码格式化工具

### 第一步：获取配置文件

下载课程提供的 `.clang-format` 配置文件：

{% file src="../.gitbook/assets/.clang-format" %}

### 第二步：放置配置文件

将 `.clang-format` 文件放置在包含您要提交的 `.c` 文件的**同一目录**中。

**目录结构示例：**
```
your_assignment/
├── .clang-format    # 配置文件
├── main.c           # 您的源代码
├── utils.c
└── header.h
```

<figure><img src="../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

### 第三步：执行格式化命令

在包含 `.clang-format` 文件的目录中，打开终端并执行：

```shell
  clang-format -style=file -i *.c *.h
```

**命令说明：**
- `-style=file`：使用当前目录下的 `.clang-format` 配置文件
- `-i`：直接修改原文件（in-place editing）
- `*.c`：对所有 `.c` 文件应用格式化

### 第四步：验证结果

格式化完成后，建议：
1. **检查文件内容**：确认代码逻辑没有被意外修改
2. **编译测试**：运行 `gcc` 编译确保代码仍然正确
3. **提交前再次格式化**：养成提交前最后一次格式化的习惯

## 最佳实践建议

### 开发流程中的格式化

1. **编写代码时**：专注于逻辑实现，不必过分关注格式
2. **功能完成后**：使用 clang-format 进行自动格式化
3. **提交之前**：最后一次运行格式化命令

### 常见注意事项

- **备份重要文件**：首次使用前建议备份源代码


*希望这个指南对您的学习有所帮助！如果觉得有用，欢迎请左哥喝咖啡～*

<figure><img src="../.gitbook/assets/wechat-luck-packet.png" alt="" width="188"><figcaption></figcaption></figure>



