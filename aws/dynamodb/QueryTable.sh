TABLE_NAME='employees_table'
INDEX_NAME='date_of_birth_index'

aws \
dynamodb \
query \
--table-name ${TABLE_NAME} \
--index-name ${INDEX_NAME} \
--key-condition-expression "DateOfBirth=:dv" \
--filter-expression '#p=:pv' \
--expression-attribute-values '{":dv": {"N": "19890826"}, ":pv": {"S": "Software Engineer"}}' \
--expression-attribute-names '{"#p":"Position"}'

##{":dv": {"N": "19930629"}, ":pv": {"S": "Baby"}}`