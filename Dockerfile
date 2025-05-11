FROM amazon/dynamodb-local:latest

# Crear el directorio que DynamoDB usará
RUN mkdir -p /home/dynamodblocal/data

# Establecer el directorio de trabajo
WORKDIR /home/dynamodblocal

# Variables de entorno opcionales
ENV AWS_ACCESS_KEY_ID=local
ENV AWS_SECRET_ACCESS_KEY=local
ENV AWS_REGION=us-east-1

EXPOSE 8000

CMD ["-jar", "DynamoDBLocal.jar", "-sharedDb", "-dbPath", "./data"]
