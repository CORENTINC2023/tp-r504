ls=
value=
x=

while :
do
	ls=$(redis-cli --raw LLEN myqueue)
	if [ $ls -gt 0 ]
	then
		value=$(redis-cli --raw RPOP myqueue)
		ls=$(redis-cli --raw LLEN myqueue)
		if ! [ "$value" = "" ]
		then
			if [ $value -gt $thres ]
			then
				sleep $delay
			fi
		fi
		x=$(( $x+1 ))
	else
		echo "liste vide, terminaison"
		exit 0
	if [ $nb -gt $oldnb ]
	then
		nbjobs=$(jobs | grep Running | wc -l)
		echo "démarrage nouveau consumer: $x"
		./consumer.sh 1
		x=$((x+1))
	fi
	oldnb=$nb
done

















l
while :
do
	ls=$(redis-cli --raw LLEN myqueue)
	if [ $ls -gt 0 ]
	then
		value=$(redis-cli --raw RPOP myqueue)
		ls=$(redis-cli --raw LLEN myqueue)
		if ! [ "$value" = "" ]
		then
			if [ $value -gt $thres ]
			then
				sleep $delay
			fi
		fi
		x=$(( $x+1 ))
	else
		echo "liste vide, terminaison"
		exit 0
	fi
done
