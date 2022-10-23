SELECT
    m.name member,
    p.title project
FROM
    pm.members m
    RIGHT OUTER JOIN pm.projects p
    ON p.id = m.project_id
