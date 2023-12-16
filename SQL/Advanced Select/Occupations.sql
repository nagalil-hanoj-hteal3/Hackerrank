SELECT Doctor, Professor, Singer, Actor
FROM (
  SELECT NameOrder, (max case Occupation when 'Doctor' then Name end) as Doctor,
    (max case Occupation when 'Professor' then Name end) as Professor,
    (max case Occupation when 'Singer' then Name end) as Singer,
    (max case Occupation when 'Actor' then Name end) as Actor
  FROM (
    SELECT Occupation, Name, row_number() over(partition by Occupation order by Name ASC) as NameOrder
    FROM Occupations
  ) as NameLists
  GROUP BY NameOrder
) as Names
