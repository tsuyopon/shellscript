#/bin/sh

# $B=hM}35MW(B
#   $B%+%l%s%H%G%#%l%/%H%jD>2<$N%G%#%l%/%H%j$rBP>]$H$9$k!#$?$@$7!"%+%l%s%H%G%#%l%/%H%j$rI=$9(B(.)$B$O=|30$9$k(B
#   $B$=$N8e!"$=$N%G%#%l%/%H%jFbIt$N%U%!%$%k$KFC2=$7$?=hM}$r<B;\$7$F!"$=$N%G%#%l%/%H%jFbIt$K=hM}7k2L$r;D$9(B

for dir in `find . ! -path . -type d -maxdepth 1` ;
do 
	cd $dir;
	echo $dir;
	# $BB8:_$9$k%^!<%/%@%&%s$rA4$F7k9g$7$F6u9T$r=|5n$7$F!"0\F0$7$?%G%#%l%/%H%jCf$K$*$$$F(Ball.md$B$H$7$FJ]B8$9$k(B
	(cat *.md | grep -v "^$" ) > all.md
	pwd;
	cd ..;
done
	

