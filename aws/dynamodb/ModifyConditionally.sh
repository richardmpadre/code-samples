TABLE_NAME='employees_table'

aws \
dynamodb \
update-item \
--table-name ${TABLE_NAME} \
--key '{"Id": {"N": "4"}}' \
--expression-attribute-values file://resources/modify_conditionally_values.json \
--expression-attribute-names file://resources/modify_conditionally_names.json \
--update-expression "SET #in = :iv" \
--condition-expression "attribute_exists(#kn)" \
--return-values UPDATED_NEW