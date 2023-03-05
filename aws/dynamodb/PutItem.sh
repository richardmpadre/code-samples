TABLE_NAME='employees_table'

aws \
dynamodb \
put-item \
--table-name ${TABLE_NAME} \
--item file://put-item.json \
--return-values ALL_OLD