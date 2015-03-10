update salary_cap_constants
set salary_cap = 143280000
where year = 2015;

update salary_cap_constants
set adjusted_cap = (salary_cap + carryover_incentive_adjustments)
where year = 2015;