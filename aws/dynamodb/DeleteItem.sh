TABLE_NAME='employees_table'

aws \
dynamodb \
delete-item \
--table-name ${TABLE_NAME} \
--key '{"Id": {"N": "4"}}' \
--return-value ALL_OLD