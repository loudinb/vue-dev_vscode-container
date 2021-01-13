FROM node:lts-alpine as base

#############################################
# Development container from the common base
FROM base AS development

# install simple http server for serving static content
RUN npm install -g @vue/cli

EXPOSE 8080

#############################################
# Testing container from the common base
FROM base AS testing


#############################################
# Production container from the common base
FROM base AS production
