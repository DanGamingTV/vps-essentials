#Install anydesk and stuffs

anydesk_finished() {
	local password=(date | md5sum)
	echo $password | anydesk --set-password
	echo $password
	echo (anydesk --get-id)
}
sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk && anydesk_finished