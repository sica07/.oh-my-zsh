# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#gcalcli
alias gcal='gcalcli calw'
alias gcalm='gcalcli calm'
alias gcala='gcalcli agenda'
alias gcalr='gcalcli remind 10 "kdialog --msgbox \%s"'

#radios
alias classic='mplayer http://stream2137.init7.net:80'
alias commodore='mplayer http://relay1.slayradio.org:8000/'

# List directory contents
alias gti=git
alias g=git
alias sl=ls
alias ls='ls -hF --color=always'
alias la='ls -AF'       # Compact view, show hidden
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias ld='ll -rt'                   # sort by date


alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'

alias bc='bc -l'

# privileged access
if [ $UID -ne 0 ]; then
    alias _='sudo'
    alias please='sudo' #just for fun
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias shutdown='sudo shutdown -h now'
fi


alias j='jump'
alias k='clear'
alias cls='clear'
alias td='/usr/local/sbin/todo'

#mysql
alias sql='mysql -u root -pmatpas'

#hamster time tracker
alias tta='hamster-cli start'
alias tts='hamster-cli stop'
alias ttls='hamster-cli list'

#less with color
alias less='vim -u /usr/share/vim/macros/less.vim'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias irc="$IRC_CLIENT"


alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back
#Multi monitor
alias both='xrandr --output VGA-1 --auto --left-of HDMI-1'
alias standup='xrandr --output VGA-1 --auto --same-as HDMI-1 && xrandr --output HDMI-1 --off'
alias sit='xrandr --output HDMI-1 --auto --same-as VGA-1 && xrandr --output VGA-1 --off'
# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias	md='mkdir -p'
alias	rd='rmdir'
export PATH=/usr/lib:$PATH
export SVN_EDITOR=vim
export EDITOR=vim
export BUSTER_REPORTER=specification
export LESS='eirMX'
export IRC_CLIENT=weechat

#LOCAL CONFIG
export PATH=/opt/lampp/bin:$PATH
alias err='FILE=$(ls -t /var/www/html/FSPlaza/data/logs | head --lines=1) && less /var/www/html/FSPlaza/data/logs/$FILE'


#phpcs hack 
alias phpcs='phpcs -n'

alias myip='curl ifconfig.me/ip'
alias screencast='ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /tmp/out.mpg'
