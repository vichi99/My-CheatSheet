# Set default shell
```sh
$ chsh -s `which zsh`
$ chsh -s /bin/zsh
...
```
(then logout and login)

# Set Nano editor
NOTE: on MacOS, it is necessary to install nano from homebrew.
```sh
$ brew install nano
```

- Copy [nanorc](nanorc) to: 

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
```sh
$ curl https://pyenv.run | bash
```
## MacOs
- install by [this link](https://github.com/pyenv/pyenv#homebrew-on-macos)
- and [pyenv virtualenv](https://github.com/pyenv/pyenv-virtualenv)
- keep in mind install for MacOs and fish is little different.
- [issue](https://github.com/pyenv/pyenv/issues/1746) for pyenv install on BigSur 
    ```shell
    $ brew install zlib

    # added to setings script
    $ export LDFLAGS="-L/usr/local/opt/zlib/lib" 
    $ export CPPFLAGS="-I/usr/local/opt/zlib/include"
    ```

# Vim editor syntax on and ruler
This will be set with `set_zsh.sh` script.
```sh
$ echo "syntax on" >> ~/.vimrc    
$ echo "set ruler" >> ~/.vimrc    
```

