LIST="node nodejs npm"

for pkg in $LIST; do
    if dpkg --get-selections | grep -q "^$pkg[[:space:]]*install$" >/dev/null; then
        echo -e "$pkg is already installed"
    else
        if apt-get -qq install $pkg; then
			echo "Successfully installed $pkg"
		else
			echo "Error installing $pkg"
		fi
    fi
