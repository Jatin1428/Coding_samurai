USE bigbasket;
SELECT * FROM bigbasketds;

# no of product each brand has
SELECT brand, COUNT(product) AS no_of_prod
FROM bigbasketds
GROUP BY brand
ORDER BY no_of_prod DESC;

#number of brands, number of categories,  number of  subcategories
SELECT COUNT(brand) AS no_of_brands, COUNT(category) AS no_of_categories, COUNT(sub_category) AS no_of_sub_categories
FROM bigbasketds;

#Number of prod of each category
SELECT category, COUNT(product) AS no_of_products
FROM bigbasketds
GROUP BY category
ORDER BY no_of_products DESC;

#no of types
SELECT COUNT(type) AS no_of_types
FROM bigbasketds;

#Profit of Products in Desc Order
SELECT product , ROUND(profit ,2) AS profit
FROM bigbasketds
ORDER BY profit DESC;

#Which brand has been given highest rating
SELECT brand , rating
FROM bigbasketds
ORDER BY rating DESC;
 
# Select brands which have ratings>=4, if ratings are same arrange them acc to brand name.
SELECT brand , rating
FROM bigbasketds
WHERE rating >=4
ORDER BY rating DESC, brand;

# Brands and their products with their ratings with rating>=4, if ratings are same arrange them acc to brand name.
SELECT brand, product,rating
FROM bigbasketds
WHERE rating>=4
ORDER BY rating DESC, brand;

# profit of brand by products
SELECT brand, product, ROUND(profit,2) AS profit 
FROM bigbasketds
GROUP BY brand, product, profit
ORDER BY profit DESC,brand;


# categories of brand having rating between 3.5 & 4.5
SELECT brand , rating 
FROM bigbasketds
WHERE rating BETWEEN 3.5 AND 4.5
ORDER BY rating DESC;

#TOP 5brands having total profit >0
SELECT brand, ROUND(SUM(profit),2) AS total_profit
FROM bigbasketds
WHERE profit > 0 
GROUP BY brand
ORDER BY total_profit DESC
LIMIT 5;

#Top 10 brands wrt rating
SELECT brand, ROUND(AVG(rating), 2) AS avg_rating
FROM bigbasketds
WHERE rating >0
GROUP BY brand
ORDER BY avg_rating DESC
LIMIT 10;
