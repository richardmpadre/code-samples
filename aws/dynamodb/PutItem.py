import boto3
import json

TABLE_NAME='employees_table'
client = boto3.client('dynamodb');

response = client.put_item(
    TableName=TABLE_NAME,
    Item={
        'Id': {'N': '4'},
        'Name': {'S': 'Paloma'}
    },
    ReturnValues='ALL_OLD'
)

print(json.dumps(response, indent=4))