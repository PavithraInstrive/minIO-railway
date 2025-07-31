FROM minio/minio:latest

EXPOSE 9000 9001

ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin123

# Use the Railway-provided PORT env variable
CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]
