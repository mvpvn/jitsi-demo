# Retrieve the latest package versions across all repositories
sudo apt update

# Ensure support for apt repositories served via HTTPS
sudo apt install apt-transport-https

sudo apt-add-repository -y universe

sudo apt update