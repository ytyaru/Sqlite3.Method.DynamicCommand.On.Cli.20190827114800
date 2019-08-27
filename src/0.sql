.param init
.shell echo 'A\\\nB' > ./output.txt
insert or replace 
  into sqlite_parameters 
  values('output', 
    rtrim(cast(readfile('./output.txt') as text), x'0A'));
select * from sqlite_parameters;

