
FROM devopsedu/webapp
RUN apt-get update
RUN apt-get install -y nginx 
RUN mkdir /tmp/devopsedu/webapp
RUN touch /tmp/docker/php.txt
RUN git clone https://github.com/harisaptec/devopsproj1.git
EXPOSE 80
CMD /usr/sbin/devopsedu/webapp -g "daemon off;"
