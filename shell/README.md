# Set default shell
```
$ chsh -s `which zsh`
$ chsh -s /bin/zsh
...
```
(then logout and login)

# Set Nano editor
NOTE: on MacOS, it is necessary to install nano from homebrew.
```
$ brew install nano
```

## Location of [nanorc](nanorc) 

- Linux: ~/.nanorc

- MacOS: ~/.nanorc

# Set zsh shell
- I am using [oh-my-zsh](https://ohmyz.sh/)
NOTE: on Linux, it is necessary to install zsh 
```sh
$ sudo apt install zsh # if not installed
$ pip install percol # for better ctrl+r find - if not working try with sudo/pip3
$ bash set_zsh.sh
```

## Location of [zshrc](shell/zshrc) 
- Linux: ~/.zshrc
- MacOS: ~/.zshrc or /etc/zshrc

# Install Pyenv
## Linux
```
$ curl https://pyenv.run | bash
```
## MacOs
- install by [this link](https://github.com/pyenv/pyenv#homebrew-on-macos)
- and [pyenv virtualenv](https://github.com/pyenv/pyenv-virtualenv)
- keep in mind install for MacOs and fish is little different.



