import boto3
import json

TABLE_NAME='employees_table'
client = boto3.client('dynamodb');

response = client.get_item(
    TableName=TABLE_NAME,
    Key={'Id': {'N':'3'}}
)

print(json.dumps(response['Item'], indent=4))