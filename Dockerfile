FROM minio/minio:latest

# MinIO starts on port 9000 and console on 9001 by default
EXPOSE 9000 9001

# Set entrypoint to run MinIO server in standalone mode
ENTRYPOINT ["minio"]

# Start in standalone mode with /data directory
CMD ["server", "/data", "--console-address", ":9001"]
