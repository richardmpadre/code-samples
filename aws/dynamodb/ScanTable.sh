TABLE_NAME='employees_table'

aws \
dynamodb \
scan \
--limit 2 \
--return-consumed-capacity INDEXES \
--table-name $TABLE_NAME 