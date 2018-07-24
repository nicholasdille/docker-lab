FROM gocd/gocd-agent-ubuntu-16.04:v18.6.0

ENV AUTOREGISTER_KEY=0123456789abcdef
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]