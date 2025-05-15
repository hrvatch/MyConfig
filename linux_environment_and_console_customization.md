## Fonts
Many of the tools described in the guide need to display some kind of icons or glyphs; those icons and glyphs can be found in Nerd Fonts. Nerd Fonts are a collection of popular, patched fonts specifically designed to include a wide range of icons and glyphs for use in development and programming environments. They're especially optimized for use in terminal environments with tools like:
- Zsh/Oh My Zsh prompts
- Powerline
- tmux
- Vim/Neovim

These fonts integrate icons from popular icon sets like Font Awesome, Material Design Icons, and more, making them ideal for terminal-based applications, IDEs, and text editors.

You can preview and download Nerd Fonts here: https://www.nerdfonts.com/font-downloads.

The font that I like to use is called MesloLG. Use the following command to download and install this font:

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip \
&& cd ~/.local/share/fonts \
&& unzip Meslo.zip \
&& rm Meslo.zip \
&& fc-cache -fv

## Linux aliases
In Linux, an **`alias`** is a shortcut or abbreviation for a command or a series of commands. Aliases are used to simplify frequently used commands, making them quicker and easier to execute. They are especially helpful for long, complex commands or for adding default options to commands.

Since I want my aliases to be applied every time I open new terminal, I've put them in a .alias file inside a home directory. This file is **`source`**d every a new terminal is opened.

This is how my `.alias` file looks like:
    alias cp='cp -i'   # `cp` will always prompt before overwriting
    alias rm='rm -i'   # `rm` will always prompt before every removal
    alias ll='ls -alh --group-directories-first' # `ls` will display all entries, use a long listing format, display sizes in human readable format, group directories before files

## Gnome terminal
There are many terminals outthere, there are probably some that are better than gnome-terminal, but I like this one. It works without issues, and I'm satisfied with the amount of customizations and performance. After installing gnome-terminal I want to change the colour palette to cattpuccin:
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 -

## Zsh/Oh My Zsh
Usually one of the first things I do on a fresh Linux install, I set-up my terminal. I'll do that by setting Zsh as default terminal, installing Oh My Zsh, Powerlevel10k theme, syntax highlighting and auto-suggestions for the zsh.

[Zsh (Z Shell)]() is a powerful and flexible command-line shell for Unix-like systems. It's an enhanced replacement for the default Bash shell, offering features like:
- Improved Autocompletion: Intelligent suggestions for commands, file paths, etc.
- Customizability: Themes and plugins, especially with frameworks like Oh My Zsh.

I'll [install Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) and make it my default shell. My suggestion is to install it with the package manager of your choice. Since I'm using Arch Linux btw, I'm installing Zsh with the following command:
    sudo pacman -S zsh

Once the Zsh is installed, I need to make it as my default shell:
    chsh -s $(which zsh)

After Zsh is installed, I'll install [Oh My Zsh](https://ohmyz.sh/). Oh My zsh is an open-source framework that enhances the Zsh shell by providing easy customization, a rich set of plugins, and a wide variety of themes. It simplifies the process of configuring and managing Zsh.

Install instructions for Oh My Zsh can be found [here](https://ohmyz.sh/#install).

After installing Oh My Zsh, I'll customize zsh with the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme. Download the Powerlevel10k theme with the following command:
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Open the `~/.zshrc`, find the line that sets `ZSH_THEME` and change its value to `"powerlevel10k/powerlevel10k"`.

Next, I'll install [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting/) and [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions/):
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

Open the `~/.zshrc`, find the line that sets `plugins` and add the following plugins to include `zsh-autosuggestions` and `zsh-syntax-highlighting`.
    plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

## tmux

## GNU Stow

## Fuzzy finder (fzf)

## Ripgrep (rg)

## Modifying the Linux `ls` command
The next thing I like to configure is the Linux `ls` command. Instead of using Linux `ls` I use the tool called `eza` [Link](https://github.com/eza-community/eza). To quote from the `eza` website:
> `eza` is a modern, maintained replacement for the venerable file-listing command-line program `ls` that ships with Unix and Linux operating systems, giving it more features and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and Git. And it’s small, fast, and just one single binary.
>
>By deliberately making some decisions differently, `eza` attempts to be a more featureful, more user-friendly version of `ls`.

After installing `eza` I'll first create an alias for the `ls` command by modifying a `.alias` file. I want `eza` to display colors, icons, hidden and "dot" files, 
