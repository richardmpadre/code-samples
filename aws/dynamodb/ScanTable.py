import boto3
import json

TABLE_NAME='employees_table'
INDEX_NAME='Id'

client = boto3.client('dynamodb');

response = client.scan(
    TableName=TABLE_NAME,
    IndexName=INDEX_NAME,
    FilterExpression='id>:value',
    ExpressionAttribute={
        ':value': {
            'N':'2'
        }
    },
    Limit=100
)

print(json.dumps(response, indent=4));