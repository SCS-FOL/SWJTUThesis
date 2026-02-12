# 西南交通大学研究生学位论文 LaTeX 模板 (SWJTUThesis)

本项目是西南交通大学硕士/博士学位论文的 LaTeX 模板，严格遵循西南交通大学研究生院发布的 **[西南交通大学研究生学位论文撰写范式（2024年8月修订）](https://gsnews.swjtu.edu.cn/info/1967/25444.htm)（下面简称“《撰写范式》”）** 进行开发。

## 编译环境

为了保证论文能够正确编译并生成符合学校要求的 PDF 文档，请确保你的系统满足以下要求：

* **TeX 发行版**：推荐安装最新的 **TeX Live** 或 **MacTeX**。
* **编译引擎**：必须使用 **XeLaTeX** 或 **LuaLaTeX**。
* *注意：由于使用了 `fontspec` 和系统字体调用，不支持 pdfLaTeX。*

已在 macOS 15、Windows 11、Debian 13、[TexPage](https://www.texpage.com/) 上编译成功（Tex Live 2025）。

## 字体

根据《撰写范式》，正文中文应使用**宋体**，标题使用**黑体**，西文使用 **Times New Roman**。

为兼顾跨平台易用性与排版严谨性，本模板会优先检测项目根目录下的 `font/` 文件夹。**若使用移植系统字体的方案，需要复制`SimSun.ttf`、`SimHei.ttf`、`KaiTi.ttf`到`font/`目录下**；若无本地字体，则根据操作系统自动调用系统字体或开源替代字体。

### 中文字体策略

| 优先级 | 模式 / 系统 | 正文 (宋体) | 标题 (黑体) | 说明 |
| :- | :- | :- | :- | :- |
| **1 (最高)** | **本地模式**  | `font/SimSun.ttf`   | `font/SimHei.ttf`  | 与官方模板字体完全一致 |
| 2 | **Windows** | SimSun | SimHei | 与官方模板字体完全一致 |
| 3 | **macOS** | Songti SC | Heiti SC |
| 4 | **Linux** | FandolSong | FandolHei |

### 西文字体策略

| 字体类型 | Windows / macOS | Linux |
| :- | :- | :- |
| **衬线 (Serif)** | Times New Roman | TeX Gyre Termes |
| **无衬线 (Sans)** | Arial | TeX Gyre Heros |
| **等宽 (Mono)** | Courier New | TeX Gyre Cursor |

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

* **Overleaf**：由于免费版 [Overleaf](https://www.overleaf.com/project) 的编译超时限制，且本项目包含高清矢量图及复杂的字体配置，**直接在 [Overleaf](https://www.overleaf.com/project) 上编译极大概率会报错（Timeout）**。

* **推荐方案**：
1. **本地编译**：在本地安装 TeX Live + VS Code (LaTeX Workshop) 获得最佳体验。
2. **TeXPage**：如果必须使用在线编辑器，推荐上传至 [TeXPage](https://www.texpage.com/)，经测试，可成功在 [TexPage](https://www.texpage.com/) 上编译。


## 软件许可证 (License)

* **校徽与校名**：西南交通大学校徽校名图片（`figures/swjtu-*.pdf` 等）的版权归 **西南交通大学** 所有。
* **模板代码**：`swjtutex` 文档类集（`swjtuthesis.cls`, `swjtuthesis.sty` 等）基于 [The LaTeX Project Public License 1.3c](https://www.latex-project.org/lppl.txt) 授权开源。

---

*Disclaimer: 本项目为非官方模板，仅供学术交流与撰写学位论文使用。最终格式审查请以研究生院最新发布的官方要求为准。*