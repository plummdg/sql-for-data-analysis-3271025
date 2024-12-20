SELECT Customer.CustomerID,
  FirstName,
  LastName,
  Count(Email)
From Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY Count(Email) DESC
LIMIT 10 -- Click on Run on active connection to run