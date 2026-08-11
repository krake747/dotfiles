# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Go / dotnet / opencode
export PATH="$PATH:/usr/local/go/bin:$HOME/.dotnet:$HOME/.dotnet/tools:$HOME/.opencode/bin"

# User specific environment and startup programs