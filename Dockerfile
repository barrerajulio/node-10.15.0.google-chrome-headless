FROM node:10.15.0
RUN apt-get update -qq && apt-get install && apt-get -y install python-setuptools python-dev build-essential && easy_install pip
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update && apt-get -y install google-chrome-stable
RUN npm install -g @angular/cli
RUN pip install awscli
