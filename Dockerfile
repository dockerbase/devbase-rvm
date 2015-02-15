# VERSION 1.2
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-rvm Image Container

FROM dockerbase/devbase

# Run dockerbase script
ADD     devbase-rvm.sh /dockerbase/
RUN     /dockerbase/devbase-rvm.sh

USER    devbase
# Set environment variables.
ENV     HOME /home/devbase
# Define working directory.
WORKDIR /home/devbase

# Run dockerbase script
ENV     RVM_DIR $HOME/.rvm
ADD     rvm.sh /dockerbase/
RUN     /dockerbase/rvm.sh

# Run dockerbase script
ADD     ruby.sh /dockerbase/
RUN     /dockerbase/ruby.sh

# Run dockerbase script
ADD     rails.sh /dockerbase/
RUN     /dockerbase/rails.sh

