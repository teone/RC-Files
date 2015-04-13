export PATH=${PATH}:/Users/carlopasqualicchio/Dev/sdk/platform-tools:/Users/carlopasqualicchio/Dev/sdk/tools:/Users/carlopasqualicchio/Dev/apache-ant-1.9.4/bin

# MacPorts Installer addition on 2014-09-11_at_12:44:54: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Git branch in prompt.

parse_git_branch() {
    
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
        
        }

        export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git Branch Autocomplete
test -f ~/.git-completion.bash && . $_
