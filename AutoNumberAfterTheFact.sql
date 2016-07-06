/*
for MySQL
*/
update a, (select @rownum:=(select max(RecordID) from Table_Name)) r  set a.RecordID= @rownum:=@rownum+1;

/*
"a" is the table which needs RecordID
"(select max(RecordID) from Table_Name)" is used to set the starting number for the sequence; we would want to have something here to avoid reusing a recordid which already exists or you can just type in an integer
*/
