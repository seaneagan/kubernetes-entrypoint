FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
        curl
RUN curl -Lo /usr/local/bin/kubernetes-entrypoint https://raw.githubusercontent.com/seaneagan/kubernetes-entrypoint/pod_dependencies/kubernetes-entrypoint \
  && chmod 755 /usr/local/bin/kubernetes-entrypoint
CMD /usr/local/bin/kubernetes-entrypoint
