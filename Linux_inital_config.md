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

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Open ~/.zshrc, find the line that sets ZSH_THEME, and change its value to "powerlevel10k/powerlevel10k"

source ~/.zshrc
```

There are some website for install.

[zsh-autosuggetsion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md):

`https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md`

how to install spaceship():

[GitHub - spaceship-prompt/spaceship-prompt: Minimalistic, powerful and extremely customizable Zsh prompt](https://github.com/spaceship-prompt/spaceship-prompt)

how to install fira-code-nerd-ont

[GitHub - tonsky/FiraCode: Free monospaced font with programming ligatures](https://github.com/tonsky/FiraCode)

## AI and Machine Learning lib
```bash
# install miniconda 
wget https://repo.anaconda.com/miniconda/
# run script
./Miniconda3-latest-Linux-x86_64.sh
source ~/.zshrc

# install cuda-tool-kit
# https://developer.nvidia.com/cuda-downloads
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-6

```
## install smb,ssh, and frp
