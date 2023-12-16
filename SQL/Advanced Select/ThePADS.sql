SELECT concat(name, '(', upper(substring(occupation, 1, 1)), ')') from occupations
ORDER BY name;

SELECT concat("There are a total of", ' ', count(occupation), ' ', lower(occupation), 's', ".")
FROM occupations
GROUP BY occupation
ORDER BY count(occupation) ASC;
