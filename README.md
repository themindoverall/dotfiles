# dotfiles
my dotfiles

run setup.sh

then add to .zshrc:

```
export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim
alias vv=nvim

function tmi () {
  session=$(basename $PWD)
  tmux has-session -t $session 2> /dev/null
  tmux_session_exists=$?
  if [ $tmux_session_exists != 0 ]; then
    tmux new-session -s $session
  else
    tmux attach-session -dt $session
  fi
}
```
