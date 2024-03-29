
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/Code//Misc/dotfiles                    # dotfiles directory
olddir=~/Code/Misc/dotfiles-old             # old dotfiles backup directory
files=".vimrc .zshrc .gitconfig .oh-my-zsh .tmux.conf .vim .pryrc .gemrc, .ackrc .tmuxinator .vars"     # list of files/folders to symlink in homedir

########## Logic

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo ""

# move any existing dotfiles in qomedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving existing $file from ~ to $olddir/$file.bak"
    mv ~/$file $olddir/$file.bak
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
