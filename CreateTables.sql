-- Christian Cabrera


USE Pizzeria;

CREATE TABLE savedcustomer( 
SavedCustomerID				int			NOT NULL UNIQUE AUTO_INCREMENT, 
SavedCustomerFirstName		char(20) 	NOT NULL,
SavedCustomerLastName		char(20)	NOT NULL, 
SavedCustomerPhoneNumber 	char(15),
SavedCustomerAddress		char(50), 
PRIMARY KEY(SavedCustomerID),
CHECK((SavedCustomerPhoneNumber IS NOT NULL) OR (SavedCustomerAddress IS NOT NULL)) 
);


CREATE TABLE basepizza(
BasePizzaID		int		NOT NULL UNIQUE AUTO_INCREMENT, 
BasePizzaSize		char(8)		NOT NULL,
BasePizzaCrustType		char(12) 	NOT NULL,
BasePizzaPrice		numeric(4, 2)			NOT NULL,
BasePizzaCost		numeric(4,2)		NOT	NULL,
CHECK(BasePizzaPrice >= 0), 
PRIMARY KEY(BasePizzaID)
);


CREATE TABLE discount(
DiscountCode	int		NOT NULL UNIQUE AUTO_INCREMENT,
DiscountName		char(20)	NOT NULL,
PercentageOff	numeric(4,2),
AmountOff	numeric(4, 2),
CHECK((AmountOff IS NOT NULL AND PercentageOff IS NULL) OR (AmountOff IS NULL AND PercentageOff IS NOT NULL)), 
PRIMARY KEY(DiscountCode)
);


CREATE TABLE topping(
ToppingName			char(20)			NOT NULL UNIQUE,
ToppingPrice		numeric(4,2)		NOT NULL, 
ToppingCost			numeric(4,2)		NOT NULL,
ToppingInventoryLevel	int				NOT NULL,
ToppingSmallUsed	numeric(3,2)		NOT NULL,
ToppingMediumUsed	numeric(3,2)		NOT NULL,
ToppingLargeUsed	numeric(3,2)		NOT NULL,
ToppingXlargeUsed	numeric(3,2)		NOT NULL,
check(ToppingPrice >= 0),
PRIMARY KEY(ToppingName)
);

CREATE TABLE createdpizza(
CreatedPizzaID			int 	NOT NULL UNIQUE AUTO_INCREMENT,
CreatedPizzaBaseID		int		NOT NULL,
PRIMARY KEY(CreatedPizzaID),
FOREIGN KEY(CreatedPizzaBaseID) REFERENCES basepizza(BasePizzaID)
);

-- linking table for the toppings to go on the pizza 
CREATE TABLE pizzatopping(
PizzaToppingId			int		NOT NULL UNIQUE AUTO_INCREMENT,
PizzaToppingPizzaID		int 	NOT NULL,
PizzaToppingName		char(20)		NOT NULL, 
PizzaToppingPrice		numeric(4,2)	NOT NULL,
PizzaToppingExtra		char(1)			NOT NULL,
PRIMARY KEY(PizzaToppingPizzaID, PizzaToppingID), 
FOREIGN KEY(PizzaToppingName) REFERENCES topping(ToppingName), 
FOREIGN KEY(PizzaToppingPizzaID) REFERENCES createdpizza(CreatedPizzaID),
CHECK(PizzaToppingPrice >= 0)
);

CREATE TABLE foodrequest (
FoodRequestNumber		int		NOT NULL UNIQUE AUTO_INCREMENT,
-- FoodRequestPizzaNumber	int 	NOT NULL, 
FoodRequestPrice 		numeric(4,2)		NOT NULL,
FoodRequestCost			numeric(4,2)		NOT NULL, 
FoodRequestTimestamp	char(10)			NOT NULL,
FoodRequestDiscountCode		int, 
PRIMARY KEY(FoodRequestNumber),
-- FOREIGN KEY(FoodRequestPizzaNumber) REFERENCES createdpizza(CreatedPizzaID),
FOREIGN KEY(FoodRequestDiscountCode) REFERENCES discount(DiscountCode)
);

CREATE TABLE finalpizza(
FinalPizzaOrderNumber	int	 NOT NULL,
FinalPizzaNumber		int  NOT NULL, 
PRIMARY KEY(FinalPizzaOrderNumber, FinalPizzaNumber),
FinalPizzaStatus		char(10)	NOT NULL,
FinalPizzaDiscountCode	int,
FinalPizzaCost			numeric(4,2),
FinalPizzaPrice			numeric(4,2),
FOREIGN KEY(FinalPizzaOrderNumber) REFERENCES foodrequest(FoodRequestNumber),
FOREIGN KEY(FinalPizzaNumber) REFERENCES createdpizza(CreatedPizzaID),
FOREIGN KEY(FinalPizzaDiscountCode) REFERENCES discount(DiscountCode)
);

CREATE TABLE dineinorder(
DineInOrderID				int		NOT NULL UNIQUE AUTO_INCREMENT,
DineInOrderFoodRequestID	int	 NOT NULL,
DineInOrderTable			int		NOT NULL,
PRIMARY KEY(DineInOrderID),
FOREIGN KEY(DineInOrderFoodRequestID) REFERENCES foodrequest(FoodRequestNumber)
-- FOREIGN KEY(DineInOrderTable) REFERENCES seat(SeatTableNumber)
);


CREATE TABLE dineoutorder(
DineOutOrderID		int		NOT NULL UNIQUE AUTO_INCREMENT, 
DineOutOrderFoodRequestID	int		NOT NULL,
DineOutOrderReturnCustomer		int		NOT NULL,
PRIMARY KEY(DineOutOrderID),
FOREIGN KEY(DineOutOrderFoodRequestID) REFERENCES foodrequest(FoodRequestNumber),
FOREIGN KEY(DineOutOrderReturnCustomer) REFERENCES savedcustomer(SavedCustomerID)
);
CREATE TABLE seat(
SeatOrderID			int		NOT NULL,
SeatTableNumber		int 	NOT NULL,
SeatNumber			int		NOT NULL,
PRIMARY KEY(SeatOrderID, SeatNumber),
FOREIGN KEY(SeatOrderID) REFERENCES dineinorder(DineInOrderID),
CHECK((SeatTableNumber > 0 ) AND (SeatNumber > 0))
);

/*
CREATE TABLE createdpizza(
CreatedPizzaID					int			NOT NULL UNIQUE AUTO_INCREMENT,
CreatedPizzaBasePizzaID			int			NOT NULL,
CreatePizzaStatus				char(10)	NOT NULL,
CreatedPizzaDiscountCode		int,
CreatedPizzaPrice				numeric(4,2)	NOT NULL,
CreatedPizzaCost				numeric(4,2)	NOT NULL,
PRIMARY KEY(CreatedPizzaID),
FOREIGN KEY(CreatedPizzaBasePizzaID) REFERENCES basepizza(BasePizzaID),
FOREIGN KEY(CreatedPizzaDiscountCode) REFERENCES discount(DiscountCode)
);
*/

















