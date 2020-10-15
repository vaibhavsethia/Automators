# Script to open Chrome -> Open your LeetCode and close the chrome window after 10 seconds
# When is it invoked : When you sign In 
# How to use : save the script and add it as an app that starts on booting
# Purpose : To keep your checkin streak even if you are taking a break from LeetCode

printf "\e[1;36mWanna run the Leetcode automation script ? (Y/N)\e[0m \n"
read Choice 
if [ "$Choice" == "Y" ] || [ "$Choice" == "y" ]; then
	/usr/bin/open -a "/Applications/Google Chrome.app" 'https://leetcode.com'
	printf "\e[1;33mChecking-In on Leetcode\e[0m \n"
	sleep 10
	pkill -a -i "Google Chrome"
	printf "\e[1;32mDone !\e[0m \n"
else
	printf "\e[1;36mOk !! Have a nice day.\e[0m \n"
fi