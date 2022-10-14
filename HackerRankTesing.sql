select min(CompanyName), len(count(CompanyName)) as max                     --min(len(CompanyName))
from Customers
group by CompanyName
having len(CompanyName) = len(max(CompanyName))
order by len(CompanyName)



select MIN(companyname)
from Customers