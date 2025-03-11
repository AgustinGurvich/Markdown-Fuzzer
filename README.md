Ensure Docker is installed

First, build Docker image:
docker build -t my_python_pandoc .

Then run in exec mode:
docker run --rm -it -v "$(pwd)":/app my_python_pandoc bash
