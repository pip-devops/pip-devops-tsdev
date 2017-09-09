# Base image
FROM node:latest AS base
# Configure npm
RUN npm set progress=false && npm config set depth 0
# Install global packages
RUN npm install typescript@2.5.2 -g \
&& npm install mocha -g \
&& npm install chai -g \
&& npm install sinon -g \
&& npm install matcha -g