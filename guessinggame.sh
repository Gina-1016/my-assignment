#Assignment: Bash, Make, Git, and Github
#guessinggame.sh by G_Acevedo

function guessFiles {
echo "Guess how many files are in the current directory?"
read archivos
currentFiles=$(ls -l | wc -l)
let currentFiles=$currentFiles-1
while true;
do
	if [[ $archivos -lt $currentFiles ]]
	then
		echo "Your guess: $archivos was to low. Please try again."
		echo ""
		guessFiles
		break
	elif [[ $archivos -gt $currentFiles ]]
		echo "Your guess: $archivos was to high. Please try again."
		echo ""
		guessFiles
		break
	else [[ $archivos -eq $currentFiles ]]
		echo "Your guess: $archivos is the correct number of files!"
		echo ""
		echo "Exiting program..."
		sleep 5
		break
	fi
done
}
