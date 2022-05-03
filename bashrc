# Delete multiple lines from history from oldest to newest. 
# for i in {num..num}; do history -d num; done
# Example delete lines 384 through 391.
for i in {384..391}; do history -d 384; done

# History stuph
export HISTSIZE=20000
export HISTFILESIZE=20000
export HISTCONTROL=$HISTCONTROL:ignoreboth
export HISTTIMEFORMAT="%F %T "
export HISTIGNORE="ls:ll:cd:pwd:bg:fg:history:clear:exit"
