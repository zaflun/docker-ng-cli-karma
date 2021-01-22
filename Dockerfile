FROM zaflun/ng-cli:11.1.0

MAINTAINER zaflun UG "developer@zaflun.com"
ARG CHROME_VERSION=<unset>

LABEL chrome=$CHROME_VERSION
	  
RUN apt-get update \
	&& apt-get install -y \
		xvfb \
		libosmesa6 \
		libgconf-2-4 \
		wget \
	&& wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
	sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
	apt-get update && \
	apt-get install -y google-chrome-stable && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
