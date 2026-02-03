# 西南交通大学研究生学位论文 LaTeX 模板 (SWJTUThesis)

本项目是西南交通大学硕士/博士学位论文的 LaTeX 模板，严格遵循西南交通大学研究生院发布的 **[西南交通大学研究生学位论文撰写范式（2024年8月修订）](https://gsnews.swjtu.edu.cn/info/1967/25444.htm)** 进行开发。

## 编译环境

为了保证论文能够正确编译并生成符合学校要求的 PDF 文档，请确保你的系统满足以下要求：

* **TeX 发行版**：推荐安装最新的 **TeX Live** 或 **MacTeX**。
* **编译引擎**：必须使用 **XeLaTeX** 或 **LuaLaTeX**。
* *注意：由于使用了 `fontspec` 和系统字体调用，不支持 pdfLaTeX。*

## 字体

暂时使用硬编码，请将系统字体（包括`SimSun.ttf`和`KaiTi.ttf`）复制到`font/`目录下。

## 编译指南

### 方式一：使用 Make 工具（推荐）

本项目提供了 `Makefile`，如果你是在 Linux/macOS 环境下，或 Windows 安装了 Make 工具，可以使用以下快捷命令：

* **编译论文** (`main.pdf`)：
```bash
make        # 编译论文
make clean  # 清理临时文件
make zip    # 打包
```

### 方式二：使用 latexmk

如果你没有安装 Make 工具，也可以直接使用 `latexmk` 进行自动化编译：

```bash
latexmk -xelatex main.tex
```

或者手动执行编译序列：

```bash
xelatex main
bibtex main
xelatex main
xelatex main
```

## 在线编译注意事项

* **Overleaf**：由于免费版 Overleaf 的编译超时限制，且本项目包含高清矢量图及复杂的字体配置，**直接在 Overleaf 上编译极大概率会报错（Timeout）**。

* **推荐方案**：
1. **本地编译**：在本地安装 TeX Live + VS Code (LaTeX Workshop) 获得最佳体验。
2. **TeXPage**：如果必须使用在线编辑器，推荐上传至 [TeXPage](https://www.texpage.com/)，经测试，可成功在 [TexPage] 上编译。


## 软件许可证 (License)

* **校徽与校名**：西南交通大学校徽校名图片（`figures/swjtu-*.pdf` 等）的版权归 **西南交通大学** 所有。
* **模板代码**：`swjtutex` 文档类集（`swjtuthesis.cls`, `swjtuthesis.sty` 等）基于 [The LaTeX Project Public License 1.3c](https://www.latex-project.org/lppl.txt) 授权开源。

---

*Disclaimer: 本项目为非官方模板，仅供学术交流与撰写学位论文使用。最终格式审查请以研究生院最新发布的官方要求为准。*