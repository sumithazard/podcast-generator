# Use official Python 3.10 slim image as base
FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libyaml-dev \
    git \
 && rm -rf /var/lib/apt/lists/*

# Install PyYAML via pip
RUN pip install --no-cache-dir PyYAML

# Copy your scripts into the container
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Make entrypoint executable
RUN chmod +x /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]