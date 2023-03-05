TABLE_NAME='employees_table'


aws \
dynamodb \
get-item \
--table-name ${TABLE_NAME} \
--key '{"Id": {"N": "3"}}'
