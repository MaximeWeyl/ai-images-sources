ARG FROM


# ----- Block conda
FROM $FROM as conda_0

RUN echo "This is a light stage to test" && sleep 5
RUN echo "This should add random data" && base64 /dev/urandom | head -c 10000 > file.txt
