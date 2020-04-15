#Install anydesk and stuffs

anydesk_finished() {
	local password="password"
	echo $password | sudo anydesk --set-password
	echo $password
	echo $(anydesk --get-id)
}
sudo yum -y install curl
cat > /etc/yum.repos.d/AnyDesk-CentOS.repo << "EOF"
[anydesk]
name=AnyDesk CentOS - stable
baseurl=http://rpm.anydesk.com/centos/$basearch/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.anydesk.com/repos/RPM-GPG-KEY
EOF
sudo yum -y update
sudo yum -y install anydesk && anydesk_finished