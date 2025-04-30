set +x
n=1000
delay=3
while :
do
	nb=$(redis-cli --raw LLEN myqueue)
	if [ $nb -gt 0 ]
	echo "-start pushing, list size=$nb"
	for

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
