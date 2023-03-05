TABLE_NAME='employees_table'


aws \
dynamodb \
batch-get-item \
--request-items file://batch-get-items.json
