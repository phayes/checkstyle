# This script installs go on Scrutinizer

export OWNER=github.com/phayes
export PROJECT=$OWNER/checkstyle

# Install go
wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
tar -xf go1.9.linux-amd64.tar.gz
sudo mv go /usr/local
export PATH=$PATH:/usr/local/go/bin

# Install bzr
sudo apt-get -y install bzr

# Set-up gopath
mkdir gopath
export GOPATH=~/build/gopath
mkdir -p $GOPATH/src/$OWNER
ln -s ~/build $GOPATH/src/$PROJECT
