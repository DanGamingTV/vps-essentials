#Install anydesk and stuffs

anydesk_finished() {
	local password="password"
	echo $password | sudo anydesk --set-password
	echo $password
	echo $(anydesk --get-id)
}
sudo apt -y install curl
sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt -y update
sudo apt -y install anydesk && anydesk_finished