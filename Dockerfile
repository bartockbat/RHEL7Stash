FROM registry.access.redhat.com/rhel7:latest 

#Maintainer
MAINTAINER Glen Millard "gmillard@redhat.com"

#
#Install the necessities

RUN yum clean all -y
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install git

WORKDIR /home
RUN wget https://www.atlassian.com/software/stash/downloads/binary/atlassian-stash-3.11.2-x64.bin

#set the exectuatble flag
RUN chmod a+x atlassian-stash-3.11.2-x64.bin

#Run the silent installer
RUN ./atlassian-stash-3.11.2-x64.bin -q

#The required ports - http and https
EXPOSE  7990 8006

# Get rid of the binary
RUN rm -rf /home/atlassian-stash-3.11.2-x64.bin

#Lauch the Stash application
CMD /opt/atlassian/stash/3.11.2/bin/start-stash.sh -fg
