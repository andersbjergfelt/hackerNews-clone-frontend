FROM java

COPY /hackerNews-clone-frontend /hackerNews-clone

EXPOSE 8080

CMD [ "/bin/bash", "-c", "/hackerNews-clone/start.sh" ]

