# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-rvm Image Container

FROM dockerbase/devbase

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Run the build scripts
RUN     apt-get update

RUN     apt-get install -y --no-install-recommends libssl-dev man
RUN     apt-get install -y --no-install-recommends zlib1g-dev libreadline-dev \
            libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev

# Install rvm
RUN     apt-get install -y --no-install-recommends libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

# Remove the installed Ruby
RUN     apt-get remove -y ruby rbenv

# Clean up system
RUN     apt-get clean

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase

# Install rvm
ENV     RVM_DIR $HOME/.rvm
RUN     curl -L https://get.rvm.io | bash -s stable
RUN     $RVM_DIR/scripts/rvm
RUN     echo "source ~/.rvm/scripts/rvm" >> $HOME/.bashrc

# Install Ruby
RUN     $RVM_DIR/bin/rvm install 2.1.2
RUN     $RVM_DIR/bin/rvm use 2.1.2 --default

RUN     echo "gem: --no-ri --no-rdoc" > $HOME/.gemrc
# Install Rails
#RUN     $RVM_DIR/bin/rvm use 2.1.2 && gem install rails

# Define default command.
CMD ["bash"]
