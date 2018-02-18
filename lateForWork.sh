answerY="yes"
answerN="no"

read -p "Please input your name:" name
echo "Good morning,$name"
read -p "Are you late for work?:(yes/no)" answerA

if [ $answerA = $answerY ]; then
 	echo "oh no,you gotta send an email to your boss!"
 	touch messageTextToBoss.txt
 	emailMessage="Hi Boss,this is $name\nI'm late for work this morning.\nI'll be at work around $(date -v+30M "+%H:%M")"
 	echo -e $emailMessage > messageTextToBoss.txt
else
 	echo "cool! Let's listen to your favorite song for the sake of good morning!"
	open https://youtu.be/Yu6--WBPBHo
fi

