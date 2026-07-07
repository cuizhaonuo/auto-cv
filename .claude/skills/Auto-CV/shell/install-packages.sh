#!/bin/bash
# Auto-CV 宏包安装检查脚本（TeX Live 版）
# TeX Live 在安装时已包含绝大多数宏包，此脚本仅验证关键包可用
# 用法：bash install-packages.sh

echo "======================================"
echo " Auto-CV 宏包检查脚本（TeX Live）"
echo "======================================"
echo ""

# 检查 xelatex 是否可用
if ! command -v xelatex &> /dev/null; then
    echo "✗ 未检测到 xelatex，请先安装 TeX Live："
    echo "  sudo apt install texlive-xetex texlive-latex-recommended texlive-lang-chinese"
    exit 1
fi

echo "✓ xelatex 已安装"
echo ""
echo "TeX Live 通常在安装时已包含所有必需宏包。"
echo "如需确认单个宏包，可使用 kpsewhich 命令："
echo "  kpsewhich geometry.sty"
echo ""
echo "若编译时报缺失宏包错误，安装相应 texlive-* 包即可："
echo "  sudo apt install texlive-latex-extra  # 额外宏包"
echo ""
echo "现在可以运行 bash build.sh 编译简历了。"
