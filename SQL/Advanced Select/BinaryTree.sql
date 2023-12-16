SELECT N,
if (P is null, 'Root', if((select count(*) from BST where P = B.N) > 0, 'Inner', 'Leaf'))
FROM BST AS B
ORDER BY N;
