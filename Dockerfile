FROM registry:latest

# Add the custom configuration file we made 
ADD ./config.yml /docker-registry/config/config.yml

# Create the data directory
RUN mkdir /data

# Set the configuration file to config.yml
ENV DOCKER_REGISTRY_CONFIG /docker-registry/config/config.yml

# Make sure we use the prod configuration settings 
ENV SETTINGS_FLAVOR prod
