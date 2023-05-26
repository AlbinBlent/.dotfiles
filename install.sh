# Install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Might have to change paths in this next command. This was outputed from the install of brew
#echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/albin/.zprofile
#eval "$(/opt/homebrew/bin/brew shellenv)"

#install from Brewfile
brew bundle

# Install tpm - tmux plugin manager
/bin/bash -c "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

# Symlink configs
/bin/bash -c "./symlink.sh"

# Source configs
source ~/.dotfiles/.zshrc
