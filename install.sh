# Install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Might have to change paths in this next command. This was outputed from the install of brew
#echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/albin/.zprofile
#eval "$(/opt/homebrew/bin/brew shellenv)"

#install from Brewfile
brew bundle

# Install AstroNvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Install tpm - tmux plugin manager
/bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

# source tmux file (tmux source .dotfiles/.config/tmux/tmux.config) -> install plugins: in tmux run prefix + I

# install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Symlink configs
/bin/bash -c "./symlink.sh"

# Source configs
source ~/.dotfiles/.zshrc
