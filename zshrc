# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[ %T] "
export TERM=rxvt-256color
setopt EXTENDED_HISTORY
newl=$'\n'
yeote=$(curl -s -X GET "https://api.kanye.rest/" | jq '.quote')
autoload colors
colors
daddy=$(curl -s -w '\n' -H "Accept: text/plain" https://icanhazdadjoke.com)
echo $fg[black] ".------."$fg[blue]".------."$fg[yellow]".------."$fg[red]".------."$fg[magenta]".------."$fg[white]".------."
echo $fg[black] "|P.--. |"$fg[blue]"|A.--. |"$fg[yellow]"|U.--. |"$fg[red]"|L.--. |"$fg[magenta]"|I.--. |"$fg[white]"|E.--. |"
echo $fg[black] "| :/\: |"$fg[blue]"| (\/) |"$fg[yellow]"| (\/) |"$fg[red]"| :/\: |"$fg[magenta]"| (\/) |"$fg[white]"| (\/) |"
echo $fg[black] "| (__) |"$fg[blue]"| :\/: |"$fg[yellow]"| :\/: |"$fg[red]"| (__) |"$fg[magenta]"| :\/: |"$fg[white]"| :\/: |"
echo $fg[black] "| '--'P|"$fg[blue]"| '--'A|"$fg[yellow]"| '--'U|"$fg[red]"| '--'L|"$fg[magenta]"| '--'I|"$fg[white]"| '--'E|"
echo $fg[black] "\`------'"$fg[blue]"\`------'"$fg[yellow]"\`------'"$fg[red]"\`------'"$fg[magenta]"\`------'"$fg[white]"\`------'"echo $fg_bold[green]
cowsay -f tux $yeote''$newl$newl'-Ye'
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
