export PIP_DOWNLOAD_CACHE=~/.cache/pip

# console prompt
PS1='\[\e]0;\u: \W\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

alias goagentd='python ~/github/goagent/goagent/local/proxy.py > /tmp/goagent.log 2>&1 &'
