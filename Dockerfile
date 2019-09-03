# Base image
FROM pipdevs/node:8.4.0 AS base
# Configure npm
RUN npm set progress=false && npm config set depth 0
# Install global packages
RUN npm install typescript@3.6.2 -g \
&& npm install mocha -g \
&& npm install chai -g \
&& npm install sinon -g \
&& npm install matcha -g