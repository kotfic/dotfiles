#/bin/bash

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


mklink ~/.bash_profile
mklink ~/.bashrc
mklink ~/.xinitrc
mklink ~/.Xdefaults

# compton
[[ -f $(command -v compton 2>/dev/null) ]] && mklink ~/.compton.conf

# i3
[[ -f $(command -v i3 2>/dev/null) ]] && mklink ~/.i3/config
