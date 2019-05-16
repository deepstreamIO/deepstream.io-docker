VERSION=$1

mkdir $VERSION
cp DockerfileTemplate $VERSION/Dockerfile
cd $VERSION

sed -i '' "s@%VERSION%@${VERSION}@" Dockerfile

docker build -t deepstreamio/deepstream.io:${VERSION} -t deepstreamio/deepstream.io:latest .
docker push deepstreamio/deepstream.io:${VERSION}
docker push deepstreamio/deepstream.io:latest

