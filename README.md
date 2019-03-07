# Dotfiles

This project is a collection of dotfiles and other configuration files. It is designed to be simple and modular so you can easily pick as many files as you would like to use for your own setup.

Instead of having having your home directory clustered with various dotfiles, we have all of my relevant dotfiles bundled into a single `.dotfiles` direcory. To make sure that programs can find their files in the expected location, we use symbolic links.

## Included Configurations

The following configurations are currently included in this repository:

* [vim](#vim) (../blob/master/.vimrc)
* [zsh](#zsh) (../blob/master/.zshrc, ../blob/master/.oh-my-zsh)
* [X](#x) (../blob/master/.Xdefaults, ../blob/master/.Xdefaults.d)
* [git](#git) (../blob/master/.gitconfig, ../blob/master/.gitconfig.local)
* [conky](#conky) (../blob/master/.config/conky)

## Quick Start

1. Clone the repository.

    ``` console
    $ git clone https://github.com/rngcntr/.dotfiles.git ~/.dotfiles
    ```

2. Initialize the submodules (optional)

Some of the contained configurations are forks of existing configuration repositories. In order to use these, you have to clone the required submodules.

    ``` console
    $ cd ~/.dotfiles
    $ git submodule init
    $ git submodule update
    ```

## Detailed Setup

### vim

1. Follow step 1 of [Quick Start](#quick-start) (clone the repository)

2. Install [Vundle](https://github.com/VundleVim/Vundle.vim)

    ``` console
    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```

3. Create the symlink for `.vimrc`

    ``` console
    $ ln -s ~/.dotfiles/.vimrc ~/.vimrc
    ```

4. Install the specified vim plugins

    ``` console
    $ vim +PluginInstall +qall
    ```

### zsh

1. Follow steps 1 and 2 of [Quick Start](#quick-start) (clone the repository and submodules)

2. Create the symlinks for `.zshrc` and `.oh-my-zsh`

    ``` console
    $ ln -s ~/.dotfiles/.zshrc ~/.zshrc
    $ ln -s ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
    ```

3. Install oh-my-zsh

    ``` console
    $ ~/.oh-my-zsh/tools/install.sh
    ```

4. Set zsh as your default shell

    ``` console
    $ chsh -s $(which zsh)
    ```

5. Log out and back in for the changes to take effect

### X

1. Follow step 1 of [Quick Start](#quick-start) (clone the repository)

2. Create the symlinks for `.Xdefaults` and `.Xdefaults.d`

    ``` console
    $ ln -s ~/.dotfiles/.Xdefaults ~/.Xdefaults
    $ ln -s ~/.dotfiles/.Xdefaults.d ~/.Xdefaults.d
    ```

### git

1. Follow step 1 of [Quick Start](#quick-start) (clone the repository)

2. Create the symlinks for `.gitconfig` and `.gitconfig.local`

    ``` console
    $ ln -s ~/.dotfiles/.gitconfig ~/.gitoconfig
    $ ln -s ~/.dotfiles/.gitconfig.local ~/.gitconfig.local
    ```

3. Enter all of your personal settings into the .gitconfig.local file. **Make sure you never commit this file for privacy reasons.**

### conky

**Important Note:** My conky widgets are heavily personalized and are not expected to work as intended on arbitrary systems. Anyway, feel free to use them as a starting point to create your own conky experience.

1. Follow step 1 of [Quick start](#quick-start) (clone the repository)

2. Create the symlink for `conky`

    ``` console
    $ ln -s ~/.dotfiles/.config/conky ~/.config/conky
    ```

3. Start conky

    ``` console
    $ .config/conky/conky-start.sh
    ```

**Tip:** Using this setup, conky does not automatically start on boot or login. However, conky can be auto started by creating a desktop entry and placing it in `~/.config/autostart`. An example desktop entry would look like this:

    ``` desktop tab="~/.config/autostart/conky.desktop"
    [Desktop Entry]
    Name=Conky
    Comment=Autostart conky
    Type=Application
    Exec=sh -c "sleep 10; ~/.config/conky/conky-start.sh"
    ```
