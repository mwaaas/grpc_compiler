Usage
# Print protobuf help message
docker run -it --rm \
    gnhuy91/protobuf --help

# Use current folder for input and output
docker run -it --rm -v $PWD:/src:rw \
    gnhuy91/protobuf --cpp_out=. *.proto

# If you ran into problems with user uid and gid
docker run -it --rm \
    -u $(id -u):$(id -g) \
    -v $PWD:/src:rw \
    -w /src \
    gnhuy91/protobuf --cpp_out=. *.proto