# Tindev
Blueprint for my containerized development environment

How to I push this Dockerfile to Docker Hub?
- `docker login --username tanvirtin`
- `docker build --rm -f Dockerfile -t tindev .`
- `docker tag tindev tanvirtin/tindev`
- `docker push tanvirtin/tindev`
