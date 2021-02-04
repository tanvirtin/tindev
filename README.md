# Tindev
Blueprint for my containerized development environment

How to I push this Dockerfile to Docker Hub?
- `docker login --username tanvirtin`
- `docker build --rm -f Dockerfile -t dev .`
- `docker tag dev tanvirtin/tindev`
- `docker push tanvirtin/tindev`
