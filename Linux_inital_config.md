after Linux install, do some Linux configuration for using PC effectively.

## Software install

```shell
sudo apt update
sudo apt install google-chrome-stable
# install google chrome webbrowser
sudo apt install wget curl gcc g++ make cmake gdb git 
```

```shell
#conda install downlaod by web UI

# add conda into bash evironment.
nano ~/.zshrc

#add 
export PATH="/home/<user>/anaconda3/bin:$PATH"


# conda 
conda init zsh or bash
# conda create
conda create -n name python=3.9
```

## Terminal

### install zsh & oh-my-zsh

```shell
sudo apt install zsh
cat /etc/shells # look the shell types.
chsh -s bin/zsh # setting system shell
reboot
#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#install incr (optical)
cd ~/.oh-my-zsh/plugins/
mkdir incr && cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
nano ~/.zshrc

# install syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/.zshrc

# install auto-suggetstion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

nano ~/.zshrc
#add this into file.
plugins=( 
    # other plugins...
    zsh-autosuggestions
)

# install spaceship
# for ho-my-zsh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# Set ZSH_THEME="spaceship" in your .zshrc.
```

There are some website for install.

[zsh-autosuggetsion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md):

`https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md`

how to install spaceship():

[GitHub - spaceship-prompt/spaceship-prompt: Minimalistic, powerful and extremely customizable Zsh prompt](https://github.com/spaceship-prompt/spaceship-prompt)

how to install fira-code

[GitHub - tonsky/FiraCode: Free monospaced font with programming ligatures](https://github.com/tonsky/FiraCode)



## install smb,ssh, and frp
