if docker login --username tanvirtin; then
    docker build --rm -f Dockerfile -t tindev .
    docker tag tindev tanvirtin/tindev
    docker push tanvirtin/tindev
fi
