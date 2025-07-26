FROM openjdk:17-slim

# Install tools
RUN apt-get update && \
    apt-get install -y curl bash git python3 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Setup Jenkins agent user (optional)
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Set working dir
WORKDIR /home/jenkins

# Set default command
CMD ["bash"]