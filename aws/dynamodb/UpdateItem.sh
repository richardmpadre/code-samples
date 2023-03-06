TABLE_NAME='employees_table'

aws \
dynamodb \
update-item \
--table-name ${TABLE_NAME} \
--key file://resources/update_item_key.json \
--expression-attribute-values file://resources/update_item_values.json \
--expression-attribute-names file://resources/update_item_expression_names.json \
--update-expression "SET #pn = :pv, #kn=:kv" \
--return-values UPDATED_NEW