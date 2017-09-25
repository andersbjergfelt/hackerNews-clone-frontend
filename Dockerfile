FROM java

COPY ./hackernews-clone-build-docker /hackernews-clone

EXPOSE 8080

CMD [ "/bin/bash", "-c", "/hackernews-clone/start.sh" ]

