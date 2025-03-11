# Use Python 3.10 as the base image
FROM python:3.10

# Install Pandoc
RUN apt-get update && apt-get install -y pandoc

# Set up a working directory inside the container
WORKDIR /app

# Copy local files to the container (optional)
COPY . /app

# Install Python dependencies (optional)
RUN pip install --no-cache-dir fandango-fuzzer
RUN pip install --no-cache-dir faker

CMD ["/bin/bash"]
