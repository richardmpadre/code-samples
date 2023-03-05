import boto3
import json

TABLE_NAME='employees_table'
INDEX_NAME='date_of_birth_index'

client = boto3.client('dynamodb')

response = client.query(
    TableName=TABLE_NAME,
    IndexName=INDEX_NAME,
    KeyConditionExpression='#da=:dv',
    FilterExpression='#pa=:pv',
    ExpressionAttributeValues={
        ':dv': {'N': '20230305'},
        ':pv': {'S': 'Baby'}
    },
    ExpressionAttributeNames={
        '#da': 'DateOfBirth',
        '#pa': 'Position'
    }
)

print(json.dumps(response['Items'], indent=4))