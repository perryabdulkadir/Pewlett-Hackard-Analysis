# Overview
Pewlett-Hackard is in a situation comparable to many other U.S. companies; they face the imminent retirement of many baby boomer employees, who constitute a disproportionately large share of employees due to that generation’s size. In order to proactively head off this issue, the firm has asked me to conduct an analysis of their employment records to determine how many retirees they can expect in the near future by job title, as well as which employees are eligible for a mentorship program.

## Tools
Software: SQLite, PGAdmin 4

## Analysis 

### Number of Employees Retiring by Job Title



# Results
## Retiring by job title

![retiring_titles.PNG](Resources/retiring_titles.PNG)

* The above table makes clear that in the near future, large numbers (10,000+) of senior engineers, senior staff, engineers, and staff will be needed. 
* The table also demonstrates that the need for additional managers will be negligible. 

## Mentorship program eligibility 

![ mentorship_pie_chart.PNG](Resources/mentorship_pie_chart.PNG)


* A small number of employees are eligible for the Mentorship Program (1,549) compared to the number expected to retire (90,398).
* As shown in the pie chart above, significant proportions of those eligible for the mentorship program are staff, senior staff, engineers, and senior engineers. Few are technique leaders or assistant engineers.

# Summary
90,398 employees are likely to retire soon in the silver tsunami. With over 90,000 positions soon to be empty, and only 1,549 employees eligible for the mentorship program, each mentor would need to take on 58 new employees. At that point, it would not be a mentor relationship but an auditorium lecture. So, Pewlett-Hackard must either broaden the eligibility for mentor participation or find another solution to getting the new hires acclimated. 

If we conduct further analysis, it would be beneficial to see if more specific job title information exists. For example, over 40,000 employees simply have the title of “staff” or “senior staff”. If we could find department-level data on employees’ more specific titles, we could give the business a better idea of its staffing needs going forward. 

There are [estimates](https://partners.pennfoster.edu/blog/2015/september/the-cost-of-hiring-the-perfect-candidate-vs,-d-,-training-an-existing-employee) that employee turnover can cost 50%-60% of an employee’s annual salary due to lost productivity and training costs. By using the salaries.csv table, we could calculate the total wages of the employees expected to retire. This would give the business a rough estimate of the costs to expect associated with the turnover. 

