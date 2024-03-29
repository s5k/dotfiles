# ~/.zshrc

export DOTFILES="$HOME/Documents/Ours/dotfiles/.config/zsh"
export ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
	fzf-tab
	fzf
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/env.zsh --source_only
source $DOTFILES/utils.zsh --source_only
source $DOTFILES/paths.zsh --source_only
source $DOTFILES/init.zsh --source_only
source $DOTFILES/aliases.zsh --source_only
source $DOTFILES/hooks.zsh --source_only
source $DOTFILES/key_bindings.zsh --source_only

init

eval "$(zoxide init zsh)"
export _ZO_ECHO='1'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
