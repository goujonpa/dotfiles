# GIT PROMPT
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

# BASH THEME
if [ -f ~/.bash_theme ]; then
    . ~/.bash_theme
fi

# BASH ALIASES
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# JENV 
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ENV VARIABLES
export LANG="en_GB.UTF-8"
