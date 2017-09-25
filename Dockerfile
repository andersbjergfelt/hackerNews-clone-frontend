FROM java

COPY ./hackerNews-clone-frontend /hackernews-clone

EXPOSE 8080

CMD [ "/bin/bash", "-c", "/hackernews-clone/start.sh" ]

