#!/bin/bash
#####################################
# Shell script will install oh-my-zsh and set by my custom settings.
# Modify ~/.zshrc file and copy own to ~/.zshrc_my
#
# USAGE:
#   use from current directory !
#   . ./set_zsh.sh
#####################################
# Jan Vicha
# 2020
#####################################

RED="\033[0;31m"
GREEN="\033[0;32m"
NC="\033[0m" # No Color
COUNT_PROCESS=9
ACTUAL_PROCESS=1
ZSH_THEME="candy"


######################################
#### install oh my zsh
######################################
echo -n -e "Do you want install oh-my-zsh [y/n]:" 
read install_oh_my_zsh

if [ ${install_oh_my_zsh} == "y" ]
  then
  echo -e "Starting... ${GREEN}1/${COUNT_PROCESS} oh my zsh install${NC}"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
    echo -e "\t${GREEN}1/${COUNT_PROCESS} oh my zsh installed${NC}" || \
    echo -e "\t${RED}1/${COUNT_PROCESS} oh my zsh Not installed, probably already exists.
  \tIf you are on Linux try:
  \t\tapt-get install zsh
  \t\tapt-get install git-core
  \t\twget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  \tsource: https://gist.github.com/tsabat/1498393${NC}" && return
elif [ ${install_oh_my_zsh} == "n" ]
  then
    echo -e "\t${GREEN}1/${COUNT_PROCESS} You selected not install oh-my-zsh${NC}"
else
    echo -e "\t${RED}1/${COUNT_PROCESS} Bad argument for install oh-my-zsh${NC} -> continue ..."
fi
((ACTUAL_PROCESS+=1))


######################################
#### install zsh-syntax-highlighting
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Installing zsh-syntax-highlighting oh-my-zsh${NC}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} zsh-syntax-highlighting oh-my-zsh plugin Installed'${NC}" ||
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} zsh-syntax-highlighting is already installed or error${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### install zsh-autosuggestions
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Installing zsh-autosuggestions oh-my-zsh${NC}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} zsh-autosuggestions oh-my-zsh plugin Installed'${NC}" ||
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} zsh-autosuggestions is already installed or error${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### change ZSH_THEME
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} ZSH_THEME change by custom settings to '${ZSH_THEME}'${NC}"
sed -i -E "s/^ZSH_THEME=.*/ZSH_THEME='${ZSH_THEME}'/" ~/.zshrc && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} ZSH_THEME changed by custom settings to '${ZSH_THEME}'${NC}" ||
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} Theme Not changed by custom settings${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### update plugins 
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} oh-my-zshrc ~/.zshrc update plugins${NC}"
python3 shell/update_plugins_zsh.py && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} oh-my-zshrc ~/.zshrc updated plugins${NC}" || \
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} oh-my-zshrc ~/.zshrc Not updated plugins${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### copy my zshrc to ~/.zshrc_my
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} zshrc_my copy to ~/.zshrc_my${NC}"
cp shell/zshrc ~/.zshrc_my && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} zshrc_my copied to ~/.zshrc_my${NC}" ||
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} zshrc_my Not copied to ~/.zshrc_my${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### add source for my zshrc to ~/.zshrc
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Ensure adding source path to ~/.zshrc for custom zshrc_my${NC}"
if [ $(grep -c "source ~/.zshrc_my" ~/.zshrc) == 0 ];then echo -e "\nsource ~/.zshrc_my\n" >> ~/.zshrc;fi &&
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Ensure added source path to ~/.zshrc for custom zshrc_my${NC}"
((ACTUAL_PROCESS+=1))


######################################
#### add ZSH_DISABLE_COMPFIX to start of ~/.zshrc
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Ensure adding ZSH_DISABLE_COMPFIX=true to ~/.zshrc to 1. line for custom zshrc_my${NC}"
if [ $(egrep -c "^ZSH_DISABLE_COMPFIX" ~/.zshrc) == 0 ];
  then echo -e "ZSH_DISABLE_COMPFIX=true\n" | cat - ~/.zshrc > temp && mv temp ~/.zshrc;fi &&
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} Ensure added ZSH_DISABLE_COMPFIX=true to ~/.zshrc to 1. line for custom zshrc_my${NC}"
((ACTUAL_PROCESS+=1))

######################################
#### copy ~/.vimrc
######################################
echo -e "Starting... ${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} vimrc copy to ~/.vimrc${NC}"
cp shell/vimrc ~/.vimrc && \
  echo -e "\t${GREEN}${ACTUAL_PROCESS}/${COUNT_PROCESS} vimrc copied to ~/.vimrc${NC}" ||
  echo -e "\t${RED}${ACTUAL_PROCESS}/${COUNT_PROCESS} vimrc Not copied to ~/.vimrc${NC}"
((ACTUAL_PROCESS+=1))


#### Info
echo -e "\n${RED}Do not forget on install (sudo)-> pip3 install percol and pyenv${NC}"
echo -e "${GREEN}Please reload shell source ~/.zshrc"
