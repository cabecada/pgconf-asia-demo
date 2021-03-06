-- on coordinator node
create extension if not exists postgres_fdw;
create server "shard1" foreign data wrapper postgres_fdw options (dbname 'postgres', port '4441');
create server "shard2" foreign data wrapper postgres_fdw options (dbname 'postgres', port '4442');
create server "shard3" foreign data wrapper postgres_fdw options (dbname 'postgres', port '4443');
create server "shard4" foreign data wrapper postgres_fdw options (dbname 'postgres', port '4444');

create user mapping for current_user server "shard1";
create user mapping for current_user server "shard2";
create user mapping for current_user server "shard3";
create user mapping for current_user server "shard4";
