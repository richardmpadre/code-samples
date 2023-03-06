import boto3
import json
import random

TABLE_NAME='employees_table'
id_numbers = [2,4]
client = boto3.client('dynamodb');

for id_number in id_numbers:
    response = client.update_item(
        TableName=TABLE_NAME,
        Key={'Id': {'N': '{}'.format(id_number)}},
        UpdateExpression='SET #lnn = :lnv',
        ExpressionAttributeValues={':lnv': {'S': 'Flores'}},
        ExpressionAttributeNames={'#lnn': 'LastName'},
        ReturnValues='UPDATED_OLD'
    )

print(json.dumps(response, indent=4))