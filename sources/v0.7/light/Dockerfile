ARG FROM


# ----- Block conda
FROM $FROM as conda_0

RUN echo "This is a light stage to test" && sleep 20

RUN echo "This is a second cached step" | tee b.txt && sleep 20

RUN echo "This should add 100 Mo of data" && base64 /dev/urandom | head -c 100000000 > file.txt
