#!/bin/bash

echo "正在安装依赖[zsh,git]"
sudo apt install zsh git -y

echo "正在下载oh-my-zsh 到 ${HOME}/.oh-my-zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git ${HOME}/.oh-my-zsh

if [ ! -d ${HOME}/.oh-my-zsh ];then
    echo "安装失败!,原因: 没有检测到[${HOME}/.oh-my-zsh]"
    exit
else
    echo "下载oh-my-zsh成功."
fi

echo "复制 zshrc.zsh-template 到 .zshrc"

if [ ! -f ${HOME}/.oh-my-zsh/templates/zshrc.zsh-template ];then
    echo "安装失败!,zshrc.zsh-template 不存在"
    exit
else
    cp ${HOME}/.oh-my-zsh/templates/zshrc.zsh-template ${HOME}/.zshrc
fi

if [ ! -f ${HOME}/.zshrc ];then
    echo "安装失败!,没有检测到 .zshrc"
    exit
else
    echo "安装成功!"
    exit
fi