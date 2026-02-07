# Base image
FROM nginx:1.25-alpine

# Maintainer info (LABEL preferred over MAINTAINER)
LABEL maintainer="devops@example.com"
LABEL app="static-web-app"
LABEL environment="dev"

# Set environment variables
ENV APP_HOME=/usr/share/nginx/html \
    NGINX_PORT=80

# Set working directory
WORKDIR $APP_HOME

# Remove default nginx static files
RUN rm -rf ./*

# Copy web application files
COPY index.html .
#COPY images/ images/
#COPY script.js .


# Set file permissions
RUN chmod -R 755 $APP_HOME

# Expose application port
EXPOSE $NGINX_PORT

# Health check
HEALTHCHECK --interval=30s --timeout=5s \
  CMD wget -q -O - http://localhost:$NGINX_PORT || exit 1

# Default command
CMD ["nginx", "-g", "daemon off;"]
