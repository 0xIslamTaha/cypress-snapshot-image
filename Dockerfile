FROM cypress/browsers:node16.13.0-chrome95-ff94
WORKDIR /cypress_testing

ENV CI=1

COPY package.json package-lock.json ./

RUN npm ci && npx cypress verify

RUN cp -r /root/.cache /home/node/.cache
