# XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
mkdir -p $ZSH_CACHE

# executable search path

# Java
export PATH=/usr/local/opt/openjdk/bin:$PATH

export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH

export DATE=$(date +%Y-%m-%d)

# https://github.com/mxcl/homebrew/issues/11182
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
# export PYTHON_CONFIGURE_OPTS="--enable-framework"

# Resolve GPG signing failure
export GPG_TTY=$(tty)

