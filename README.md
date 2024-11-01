Install zsh, tmux, plugins...
===============

1. Install zsh
2. Install [Oh-My-Zshell](https://github.com/ohmyzsh/ohmyzsh)
3. Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation)
4. Install [tmux](https://github.com/tmux/tmux/wiki)

Symlink files and directories
===============
ln -s ~/MyConfig/nvim ~/.config/nvim
ln -s ~/MyConfig/dotfiles/zsh/.zshrc ~/.zshrc\
ln -s ~/MyConfig/dotfiles/zsh/.pk10k.zsh ~/.p10k.zsh\
ln -s ~/MyConfig/dotfiles/aliases/.alias ~/.alias\
ln -s ~/MyConfig/dotfiles/tmux.conf ~/.tmux.conf

Install zsh plugins...
===============
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

Install colorls to have nice looking ls (requires ruby)
===============
gem install colorls

TODO:
===============
Add actual plugins and all other files here, or create a script that will deploy and setup everything
