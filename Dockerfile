FROM java
MAINTAINER AKA RHP JEEP

COPY ./hackernews-clone-frontend /hackernews-clone

EXPOSE 8080

CMD [ "/bin/bash", "-c", "/hackernews-clone/start.sh" ]

