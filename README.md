# Set default shell
```
$ chsh -s `which fish`
$ chsh -s /bin/zsh
...
```
(then logout and login)

# Set fish shell
- Linux install:
    ```
    $ sudo apt-add-repository ppa:fish-shell/release-3
    $ sudo apt-get update
    $ sudo apt-get install fish
    ```
- MacOs install:
    ```
    $ brew install fish
    ```

- Set full prompt dir length
    ```
    $ set -U fish_prompt_pwd_dir_length 0
    ```

- My custom fish prompt
    ```sh
    # Run script
    . set_fish.sh
    # or do it manually
    $ cp fish/config.fish ~/.config/fish/
    $ mkdir ~/.config/fish/conf.d/
    $ cp fish/fish_aliases_prompt.fish ~/.config/fish/conf.d/
    $ cp fish/fish_command_timer.fish ~/.config/fish/conf.d/
    $ cp fish/fish_prompt.fish ~/.config/fish/functions/
    ```
    - [source timer function](https://github.com/jichu4n/fish-command-timer) (on line 55 is better change color from blue to cyan)

- Default theme and other settings through command. -> Will open web browser and overwrite custom ``fish_prompt.fish`` at functions.
    ```
    $ fish_config
    ```

- Set fish for [visual code](https://medium.com/@maheshblog/vs-code-fish-cool-dev-setup-78c90d9e6a23)
  

# Set Nano editor
NOTE: on MacOS, it is necessary to install nano from homebrew.
```
$ brew install nano
```

## Location of `nanorc` 

- Linux: ~/.[nanorc](nanorc)

- MacOS: ~/.[nanorc](nanorc)

# Set zsh shell
NOTE: on Linux, it is necessary to install zsh 
```
$ sudo apt install zsh
```

## Location of `zshrc`
- Linux: ~/.[zshrc](zshrc)
- MacOS: /etc/[zshrc](zshrc)$$

# Install Pyenv
- install by [this link](https://github.com/pyenv/pyenv#homebrew-on-macos)
- and [pyenv virtualenv](https://github.com/pyenv/pyenv-virtualenv)
- keep in mind install for MacOs and fish is little different.



