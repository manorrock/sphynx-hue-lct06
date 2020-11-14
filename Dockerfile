FROM debian
EXPOSE 8080
COPY target/sphynx-hue-lct06 /opt/sphynx/hue-lct06
COPY entrypoint.sh /opt/sphynx/entrypoint.sh
RUN chmod a+x /opt/sphynx/entrypoint.sh
ENTRYPOINT ["/opt/sphynx/entrypoint.sh"]
CMD ["/opt/sphynx/hue-lct06"]
