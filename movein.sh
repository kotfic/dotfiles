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
	    rm $1
	    ln -s $DOTDIR/$(basename $1) $1
	else
	    echo "Skipping $1, already a Symlink"
	fi
    fi   
}


mklink ~/.bash_profile
mklink ~/.bashrc

[[ -f $(which compton) ]] && mklink ~/.compton.conf

