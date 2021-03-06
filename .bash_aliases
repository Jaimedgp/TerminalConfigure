# Alias
alias sqlitestudio="/opt/SQLiteStudio/sqlitestudio &"
alias workstation="ssh -XYL  8000:localhost:8888 username@x.xxx.xx.xxx"


# Paths to export
export PATH="/opt/anaconda/anaconda3/bin:$PATH"

export PATH=$PATH":$HOME/.bin/Update-DS-Calendar/src"
export PATH=$PATH":$HOME/.bin/"


if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  source /usr/share/powerline/bindings/bash/powerline.sh
fi


# Start Tmux
if [ -z "$TMUX" ]; then
	tmux attach -t default || tmux new -s default
fi 


# New function to open pdf
pdf() {
	xdg-open "$1"
}


# Function to send files to workstation
wksend() {
	scp "$1" username@x.xxx.xx.xxx:~/"$2"
}


# Function to recive files to workstation
wktake() {
	scp username@x.xxx.xx.xxx:~/"$1" "$2"
}
