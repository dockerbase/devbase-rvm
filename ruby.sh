# Install Ruby
$RVM_DIR/bin/rvm install 2.2.0
$RVM_DIR/bin/rvm alias create default ruby-2.2.0

echo "gem: --no-ri --no-rdoc" > $HOME/.gemrc
