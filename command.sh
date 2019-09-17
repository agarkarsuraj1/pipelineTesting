npm install
result="$?"
if [ "$result" -eq "1" ]
then
	curl -X POST -H 'application/json' -d '{"channel": "##testcommand", "username": "Devops Team", 	"text": "'${PWD##*/}' pull request failed the unit testing and it was rejected", "icon_emoji": ":muscle:"}' https://hooks.slack.com/services/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
	#rm -rf 'la -Al'
else
	curl -X POST -H 'application/json' -d '{"channel": "##testcommand", "username": "Devops Team", "text": " '${PWD##*/}' pull request passed the test", "icon_emoji": ":muscle:"}' https://hooks.slack.com/services/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
	
fi
