# Install Rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L https://get.rvm.io | bash -s stable
$RVM_DIR/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> $HOME/.bashrc
