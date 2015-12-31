#/bin/bash

PWD=$(pwd)
DOTDIR=~/.dot

mklink(){
    if [ ! -f $1 ];
    then
        echo "Linking $1 => $DOTDIR/$(basename $1)"
        ln -s $DOTDIR/$(basename $1) $1
    else
        if [ ! -h $1 ]
        then
            echo "Backing up then linking $1 to $DOTDIR/$(basename $1)"
            mv $1 $1.bk
            ln -s $DOTDIR/$(basename $1) $1
        else
            echo "Skipping $1, already a Symlink"
        fi
    fi
}

# cd $DOTDIR && git pull && cd $PWD

mklink ~/.bash_profile
mklink ~/.bashrc
mklink ~/.xinitrc
mklink ~/.Xdefaults
mklink ~/.i3status.conf

# Global gitignore
mklink ~/.global_gitignore
git config --global core.excludesfile ~/.global_gitignore


# compton
[[ -f $(command -v compton 2>/dev/null) ]] && mklink ~/.compton.conf

# i3
[[ -f $(command -v i3 2>/dev/null) ]] && mklink ~/.i3/config

# Install requirements
/usr/bin/pip2 install -r ~/.dot/requirements.txt --user

mkdir -p ~/.config/whizkers
mklink ~/.config/whizkers/templates
mklink ~/.config/whizkers/variable_sets
mklink ~/.config/whizkers/defaults.yaml
