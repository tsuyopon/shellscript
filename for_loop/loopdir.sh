#/bin/sh

# 処理概要
#   カレントディレクトリ直下のディレクトリを対象とする。ただし、カレントディレクトリを表す(.)は除外する
#   その後、そのディレクトリ内部のファイルに特化した処理を実施して、そのディレクトリ内部に処理結果を残す

for dir in `find . ! -path . -type d -maxdepth 1` ;
do 
	cd $dir;
	echo $dir;
	# 存在するマークダウンを全て結合して空行を除去して、移動したディレクトリ中においてall.mdとして保存する
	(cat *.md | grep -v "^$" ) > all.md
	pwd;
	cd ..;
done
	

