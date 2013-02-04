current_path=`pwd`
printf '\033[0;34m%s\033[0m\n' "Upgrading Oh My Zsh"
cd $ZSH

if git pull
then
	printf '\033[0;32m%s\033[0m\n' '         __                                     __   '
	printf '\033[0;32m%s\033[0m\n' '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
	printf '\033[0;32m%s\033[0m\n' ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
	printf '\033[0;32m%s\033[0m\n' '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
	printf '\033[0;32m%s\033[0m\n' '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
	printf '\033[0;32m%s\033[0m\n' '                        /____/                       '
	printf '\033[0;34m%s\033[0m\n' 'Hooray! Oh My Zsh has been updated and/or is at the current version.'
	printf '\033[0;34m%s\033[1m%s\033[0m\n' 'To keep up on the latest, be sure to follow Oh My Zsh on twitter: ' 'http://twitter.com/ohmyzsh'
else
	printf '\033[0;31m%s\033[0m\n' 'There was an error updating. Try again later?'
fi

if (git remote | grep upstream); then
	if (git remote | grep upstream && git fetch upstream && git merge upstream/master); then
		printf '\033[0;32m%s\033[0m\n' 'Upstream had changes, merge was successful!'
		printf '\033[0;32m%s\033[0m\n' 'Pushing to Github...'
		git push -f origin master
		printf '\033[0;32m%s\033[0m\n' 'Completed!'
	else
		printf '\033[0;31m%s\033[0m\n' 'There was an error updating from upstream. Try again later?'
	fi
else
	printf '\033[0;32m%s\033[0m\n' 'There was no upstream remote, will not pull changes from original oh-my-sh!'
fi



cd "$current_path"
