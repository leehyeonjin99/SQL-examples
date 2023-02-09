select c.company_code, c.founder, count(distinct l.lead_manager_code), count(distinct s.senior_manager_code), count(distinct m.manager_code), count(distinct e.employee_code)
from company as c
left outer join lead_manager as l
on c.company_code = l.company_code
left outer join senior_manager as s
on l.lead_manager_code = s.lead_manager_code
left outer join manager as m
on s.senior_manager_code = m.senior_manager_code
left join employee as e
on m.manager_code = e.manager_code
group by c.company_code, c.founder
order by c.company_code
