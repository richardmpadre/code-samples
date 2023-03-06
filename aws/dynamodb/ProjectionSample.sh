TABLE_NAME='employees_table'

aws \
dynamodb \
get-item \
--table-name ${TABLE_NAME} \
--key file://resources/update_item_key.json \
--projection-expression "Kids"