-- Christian Cabrera

USE Pizzeria;


-- insert base prices ---------

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('small', 'Thin', 3, 0.5);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('small', 'Original', 3, 0.75);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('small', 'Pan', 3.5, 1);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('small', 'Gluten-Free', 4, 2);

------ medium 
INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('medium', 'Thin', 5, 1);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('medium', 'Original', 5, 1.5);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('medium', 'Pan', 6, 2.25);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('medium', 'Gluten-Free', 6.25, 3);

----- large
INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('Large', 'Thin', 8, 1.25);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('Large', 'Original', 8, 2);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('Large', 'Pan', 9, 3);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('Large', 'Gluten-Free', 9.5, 4);

--- X large
INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('X-Large', 'Thin', 10, 2);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('X-Large', 'Original', 10, 3);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('X-Large', 'Pan', 11.5, 4.5);

INSERT INTO basepizza (BasePizzaSize, BasePizzaCrustType, BasePizzaPrice, BasePizzaCost)
VALUES ('X-Large', 'Gluten-Free', 12.5, 6);

------

-- populating the discount table

INSERT INTO discount(DiscountName, PercentageOff, AmountOff)
VALUES ('employee', 15, NULL);

INSERT INTO discount(DiscountName, PercentageOff, AmountOff)
VALUES ('Lunch Special Medium', NULL, 1);

INSERT INTO discount(DiscountName, PercentageOff, AmountOff)
VALUES ('Lunch Special Large', NULL, 2);

INSERT INTO discount(DiscountName, PercentageOff, AmountOff)
VALUES ('Specialty Pizza', NULL, 1.5);

INSERT INTO discount(DiscountName, PercentageOff, AmountOff)
VALUES ('Gameday special', 20, NULL);

------ 

-- populate topping 

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Pepperoni', 1.25, 0.2, 100, 2, 2.75, 3.5, 4.5);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Sausage', 1.25, 0.15, 100, 2.5, 3, 3.5, 4.25);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Ham', 1.5, 0.15, 78, 2, 2.5, 3.25, 4);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Chicken', 1.75, 0.25, 56, 1.5, 2, 2.25, 3);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Green Pepper', 0.5, 0.02, 79, 1, 1.5, 2, 2.5);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Onion', 0.5, 0.02, 85, 1, 1.5, 2, 2.75);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Roma tomato', 0.75, 0.0, 86, 2, 3, 3.5, 4.5);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Mushrooms', 0.75, 0.1, 52, 1.5, 2, 2.5, 3);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Black Olives', 0.6, 0.1, 39, 0.75, 1, 1.5, 2);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Pineapple', 1, 0.25, 15, 1, 1.25, 1.75, 2);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Jalapenos', 0.5, 0.05, 64, 0.5, 0.75, 1.25, 1.75);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Banana Peppers', 0.5, 0.05, 36, 0.6, 1, 1.3, 1.75);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Regular Cheese', 1.5, 0.12, 250, 2, 3.5, 5, 7);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Four Cheese Blend', 2, 0.15, 150, 2, 3.5, 5, 7);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Feta Cheese', 2, 0.18, 75, 1.75, 3, 4, 5.5);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Goat Cheese', 2, 0.2, 54, 1.6, 2.75, 4, 5.5);

INSERT INTO topping (ToppingName, ToppingPrice, ToppingCost, ToppingInventoryLevel, ToppingSmallUsed,
ToppingMediumUsed, ToppingLargeUsed, ToppingXlargeUsed)
VALUES ('Bacon', 1.5, 0.25, 89, 1, 1.5, 2, 3);


-- orders 
-- ORDER 1
INSERT INTO createdpizza (CreatedPizzaBaseID)
VALUES ((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Thin' AND BasePizzaSize = 'large'));

INSERT INTO foodrequest(FoodRequestPrice, FoodRequestCost, FoodRequestTimestamp, FoodRequestDiscountCode)
VALUES (13.50, 3.68, '12:03 p.m', (SELECT DiscountCode FROM discount WHERE DiscountName = 'Lunch Special Large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES((SELECT FoodRequestNumber FROM foodrequest WHERE FoodRequestTimestamp = '12:03 p.m'), 1, 'Finished', NULL, '13.50', '3.68');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (1, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (1, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese') * 2, 'Y');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (1, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (1, 'Sausage', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Sausage'), 'N');

INSERT INTO dineinorder(DineInOrderFoodRequestID, DineInOrderTable)
VALUES((SELECT FoodRequestNumber FROM foodrequest WHERE FoodRequestTimestamp = '12:03 p.m'), 14);

INSERT INTO seat (SeatNumber, SeatTableNumber, SeatOrderID)
VALUES(1, 14, (SELECT DineInOrderID FROM dineinorder WHERE DineInOrderTable = 14));

INSERT INTO seat (SeatNumber, SeatTableNumber, SeatOrderID)
VALUES(2, 14, (SELECT DineInOrderID FROM dineinorder WHERE DineInOrderTable = 14));

INSERT INTO seat (SeatNumber, SeatTableNumber, SeatOrderID)
VALUES(3, 14, (SELECT DineInOrderID FROM dineinorder WHERE DineInOrderTable = 14));

-- ORDER 2 ------
INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Pan' AND BasePizzaSize = 'medium'));

INSERT INTO foodrequest(FoodRequestPrice, FoodRequestCost, FoodRequestTimestamp, FoodRequestDiscountCode)
VALUES (10.60, 3.23, '12:05 p.m', (SELECT DiscountCode FROM discount WHERE DiscountName = 'Lunch Special Medium'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(2, 2, 'Finished', NULL, '10.60', '3.23');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Feta Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Feta Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Black Olives', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Black Olives') * 2, 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Roma Tomato', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Roma Tomato'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Mushrooms', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Mushrooms'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Banana Peppers', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Banana Peppers'), 'N');

INSERT INTO dineinorder(DineInOrderFoodRequestID, DineInOrderTable)
VALUES(2, 4);

INSERT INTO seat (SeatNumber, SeatTableNumber, SeatOrderID)
VALUES(1, 4, (SELECT DineInOrderID FROM dineinorder WHERE DineInOrderTable = 4));

-- order 2 part 2
INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'small'));

INSERT INTO foodrequest(FoodRequestPrice, FoodRequestCost, FoodRequestTimestamp, FoodRequestDiscountCode)
VALUES (6.75, 1.40, '12:05 p.m', NULL);

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(3, 3, 'Finished', NULL, '6.75', '1.40');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (3, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (3, 'Chicken', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Chicken'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (2, 'Banana Peppers', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Banana Peppers'), 'N');

INSERT INTO dineinorder(DineInOrderFoodRequestID, DineInOrderTable)
VALUES(3, 4);

INSERT INTO seat (SeatNumber, SeatTableNumber, SeatOrderID)
VALUES(2, 4, 3);

-- Order 3
INSERT INTO savedcustomer(SavedCustomerFirstName, SavedCustomerLastName, SavedCustomerPhoneNumber, SavedCustomerAddress)
VALUES ('Andrew', 'Wilkes-Krier', '864-254-5861', NULL);

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO foodrequest(FoodRequestPrice, FoodRequestCost, FoodRequestTimestamp, FoodRequestDiscountCode)
VALUES (10.75, 3.30, '9:30 p.m', NULL);

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 4, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (4, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (4, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 5, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (5, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (5, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 6, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (6, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (6, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 7, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (7, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (7, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 8, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (8, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (8, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO createdpizza(CreatedPizzaBaseID)
VALUES((SELECT BasePizzaID FROM basepizza WHERE BasePizzaCrustType = 'Original' AND BasePizzaSize = 'large'));

INSERT INTO finalpizza(FinalPizzaOrderNumber, FinalPizzaNumber, FinalPizzaStatus, FinalPizzaDiscountCode, FinalPizzaPrice, FinalPizzaCost)
VALUES(4, 9, 'Finished', NULL, 10.75, 3.30);

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (9, 'Regular Cheese', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Regular Cheese'), 'N');

INSERT INTO pizzatopping(PizzaToppingPizzaID, PizzaToppingName, PizzaToppingPrice, PizzaToppingExtra)
VALUES (9, 'Pepperoni', (SELECT ToppingPrice FROM topping WHERE ToppingName = 'Pepperoni'), 'N');

INSERT INTO dineoutorder(DineOutOrderFoodRequestID, DineOutOrderReturnCustomer)
VALUES (9, (SELECT SavedCustomerID FROM savedcustomer WHERE SavedCustomerFirstName = 'Andrew' AND SavedCustomerLastName = 'Wilkes-Krier'));


