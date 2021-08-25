-- selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title

SELECT projects.title, SUM(pledges.amount)
FROM projects
LEFT OUTER JOIN pledges
ON projects.id = pledges.project_id
GROUP BY projects.title;