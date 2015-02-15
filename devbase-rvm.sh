# Run the build scripts
apt-get update

apt-get install -y --no-install-recommends libssl-dev man
apt-get install -y --no-install-recommends zlib1g-dev libreadline-dev \
        libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev

apt-get install -y --no-install-recommends libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

# Remove the installed Ruby
apt-get remove -y ruby rbenv

# Clean up system
apt-get clean
