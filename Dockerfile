FROM jenkins/jenkins:lts

# Switch to root user
USER root

# Install required packages properly
RUN apt-get update && \
    apt-get install -y --no-install-recommends make g++ && \
    rm -rf /var/lib/apt/lists/*

# Switch back to Jenkins user (best practice)
USER jenkins
