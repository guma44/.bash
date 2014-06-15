if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

# load source files in ~/.bash
for file in ~/.bash/{functions,aliases,completions,config,paths,prompt,history}; do
    [ -r "$file" ] && source "$file"
done
unset file

