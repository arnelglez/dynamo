FROM amazon/dynamodb-local:latest

# Variables de entorno opcionales
ENV AWS_ACCESS_KEY_ID=local
ENV AWS_SECRET_ACCESS_KEY=local
ENV AWS_REGION=us-east-1

EXPOSE 8000

CMD ["-jar", "DynamoDBLocal.jar", "-sharedDb", "-dbPath", "./data"]