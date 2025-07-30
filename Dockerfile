# Dockerfile
FROM minio/minio:latest

# Expose MinIO server and console ports
EXPOSE 9000 9001

# Set environment variables for access
ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin123

# Run MinIO in standalone mode
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9001"]
