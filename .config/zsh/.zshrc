# ~/.zshrc

export DOTFILES="$HOME/.config"
export ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/zsh/env.zsh --source_only
source $DOTFILES/zsh/utils.zsh --source_only
source $DOTFILES/zsh/paths.zsh --source_only
source $DOTFILES/zsh/init.zsh --source_only
source $DOTFILES/zsh/aliases.zsh --source_only
source $DOTFILES/zsh/hooks.zsh --source_only
source $DOTFILES/zsh/key_bindings.zsh --source_only

init

eval "$(zoxide init zsh)"
export _ZO_ECHO='1'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"
