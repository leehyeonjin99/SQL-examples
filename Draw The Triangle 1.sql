with recursive temp_table as (
select 20 as u, repeat('* ', 20) as result
union all
select u - 1, repeat('* ', u - 1) as result from temp_table where u > 1
)

select result from temp_table;
