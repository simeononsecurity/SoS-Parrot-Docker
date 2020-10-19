
FROM parrotsec/core:rolling
#MAINTAINER Lorenzo "Palinuro" Faletra (palinuro@linux.it)
ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 4.8-1

# Install components
RUN apt-get update; apt-get -y full-upgrade; apt-get -y dist-upgrade; apt-get -y install parrot-pico; apt-get -y install parrot-mini parrot-tools-cloud; apt-get -y install parrot-interface parrot-interface-full parrot-tools-full; apt -y --allow-downgrades install parrot-interface parrot-interface-full parrot-tools-full; apt-get -y install xrdp; rm -rf /var/lib/apt/lists/*

ENTRYPOINT bash $@


