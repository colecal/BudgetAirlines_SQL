
create table Pilot (
	PilotID VARCHAR(50) primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	StartDate DATE,
	DOB DATE,
	Salary VARCHAR(50),
	Email VARCHAR(50),
	StreetAddress VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Zip VARCHAR(50),
	Phone VARCHAR(50)
);

create table airport (
	AbbrevName VARCHAR(50) primary key,
	FullAirPortName VARCHAR(50),
	TerminalsAvailable VARCHAR(50),
	MaintenanceHub VARCHAR(50)
);

create table plane (
	PlaneID INT primary key,
	Brand VARCHAR(50),
	Model VARCHAR(50),
	PremiumCapacity VARCHAR(50),
	EconomyCapcity VARCHAR(50),
	Range VARCHAR(50),
	MaitenanceStatus VARCHAR(50)
);

create table CreditCard (
	CardNumber VARCHAR(50) primary key,
	CardType VARCHAR(50),
	ExpMonth VARCHAR(50),
	ExpYear VARCHAR(50)
);

create table Customer (
	CustomerID VARCHAR(50) primary key,
	CustomerFirstName VARCHAR(50),
	CustomerLastName VARCHAR(50),
	CustomerDOB DATE,
	CustomerEmail VARCHAR(50),
	LoyaltyMember VARCHAR(50),
	StreetAddress VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	ZIP VARCHAR(50),
	Phone VARCHAR(50),
	CardNumber VARCHAR(50) foreign key references CreditCard(CardNumber));

create table Ticket (
	TicketID VARCHAR(50) not null primary key,
	FlightID VARCHAR(50),
	CustomerID VARCHAR(50) foreign key references Customer(CustomerID),
	SaleDate DATE
);

create table Vendor (
	VendorID VARCHAR(50) primary key,
	VendorName VARCHAR(50),
	AccountingCategory VARCHAR(50)
);

create table VendorTransaction (
	VendorID VARCHAR(50) foreign key references Vendor(VendorID),
	TransactionTotal INT,
	TransactionID VARCHAR(50) primary key
);

create table Flight (
	FlightID VARCHAR(50) primary key,
	Departure VARCHAR(50) foreign key references airport(AbbrevName),
	Destination VARCHAR(50) foreign key references airport(AbbrevName),
	PlaneID INT foreign key references plane(PlaneID),
	PilotID VARCHAR(50) foreign key references Pilot(PilotID),
	DepartureDate DATE,
	ArrivalDate DATE,
	FuelPaymentID VARCHAR(50) foreign key references VendorTransaction(TransactionID),
	FoodPaymentID VARCHAR(50) foreign key references VendorTransaction(TransactionID),
	MaintenancePaymentID VARCHAR(50) foreign key references VendorTransaction(TransactionID),
	StaffingPaymentID VARCHAR(50) foreign key references VendorTransaction(TransactionID),
	Price INT
);


ALTER TABLE Ticket
ADD FOREIGN KEY (FlightID) REFERENCES Flight(FlightID);








insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('296-RZM-380', 'Antin', 'Mattson', '12/3/2020 22:20', '5/23/1979 6:48', 63796, 'amattson0@npr.org', '5 Stoughton Trail', 'Mobile', 'AL', 2732, 2515940760);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('646-JOI-789', 'Katinka', 'Habert', '9/21/2019 16:59', '12/18/1990 21:50', 83252, 'khabert1@jimdo.com', '014 Calypso Park', 'Boise', 'ID', 29792, 2088915629);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('645-BQU-886', 'Evangelia', 'Wolfer', '6/17/2020 21:27', '8/31/1993 9:22', 177606, 'ewolfer2@salon.com', '50821 Gulseth Circle', 'Washington', 'DC', 74514, 2029313728);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('828-KCL-706', 'Bendite', 'Bolitho', '1/30/2017 15:38', '3/13/1983 0:15', 110667, 'bbolitho3@samsung.com', '11260 Bluejay Circle', 'Portsmouth', 'VA', 94730, 7577908273);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('320-BZA-981', 'Leighton', 'McWard', '7/13/2015 0:17', '12/10/1989 19:05', 190955, 'lmcward4@oakley.com', '8 Pine View Crossing', 'Austin', 'TX', 69914, 5128674462);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('176-RFG-921', 'Micheal', 'Dairton', '8/2/2018 9:35', '2/24/1993 11:05', 112017, 'mdairton5@ucoz.com', '93 1st Parkway', 'Denver', 'CO', 72874, 3033711472);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('538-HTG-851', 'Reese', 'Cowlin', '6/13/2015 16:32', '9/27/1994 2:30', 116732, 'rcowlin6@geocities.jp', '479 Northport Junction', 'Alexandria', 'VA', 55279, 7032748061);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('145-JME-550', 'Marijo', 'Guterson', '1/29/2016 5:16', '3/28/1993 8:23', 85869, 'mguterson7@list-manage.com', '53330 Oneill Avenue', 'Hartford', 'CT', 71736, 8606458430);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('235-ELY-146', 'Glendon', 'Mamwell', '6/25/2016 22:19', '12/16/1992 17:50', 75142, 'gmamwell8@spiegel.de', '86444 Mccormick Point', 'Youngstown', 'OH', 29358, 3309971981);
insert into Pilot (PilotID, FirstName, LastName, StartDate, DOB, Salary, Email, StreetAddress, City, State, Zip, Phone) values ('128-SWW-673', 'Andras', 'Paragreen', '8/17/2017 12:22', '11/18/1990 22:16', 130071, 'aparagreen9@comsenz.com', '681 Homewood Plaza', 'Fort Myers', 'FL', 38301, 2391303750);



insert into airport (AbbrevName, FullAirPortName, TerminalsAvailable, MaintenanceHub) values ('DFW', 'Dallas/FortWorth International Airport', 5, 1);
insert into airport (AbbrevName, FullAirPortName, TerminalsAvailable, MaintenanceHub) values ('ATL', 'Hartsfield-Jackson International Airport', 2, 0);
insert into airport (AbbrevName, FullAirPortName, TerminalsAvailable, MaintenanceHub) values ('DEN', 'Denver International Airport', 3, 0);
insert into airport (AbbrevName, FullAirPortName, TerminalsAvailable, MaintenanceHub) values ('ORD', 'OHare International Airport', 4, 1);
insert into airport (AbbrevName, FullAirPortName, TerminalsAvailable, MaintenanceHub) values ('LAX', 'Los Angeles International Airport', 4, 0);



insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('40022', 'Boeing', 737, null, null, '3159 nmi', 'TRUE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('90710', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('48101', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('72999', 'Boeing', 737, null, null, '3159 nmi', 'TRUE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('30912', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('32983', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('86309', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('72448', 'Boeing', 737, null, null, '3159 nmi', 'TRUE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('46048', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');
insert into plane (PlaneID, Brand, Model, PremiumCapacity, EconomyCapcity, Range, MaitenanceStatus) values ('88277', 'Boeing', 737, null, null, '3159 nmi', 'FALSE');



insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751820757850, 'mastercard', 1, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048373341003250, 'mastercard', 11, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048375551627260, 'mastercard', 12, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108750814127940, 'mastercard', 12, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379379843290, 'mastercard', 11, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048376342235760, 'mastercard', 6, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108756031677270, 'mastercard', 12, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759342872220, 'mastercard', 8, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759610858250, 'mastercard', 10, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108757989978220, 'mastercard', 7, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378141685570, 'mastercard', 4, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108750302631040, 'mastercard', 1, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759044208050, 'mastercard', 5, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108757970630230, 'mastercard', 10, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048370513197700, 'mastercard', 12, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048370976124140, 'mastercard', 4, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751198194440, 'mastercard', 3, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378905417890, 'mastercard', 1, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371704395280, 'mastercard', 8, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753452207850, 'mastercard', 1, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759942224910, 'mastercard', 7, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759960121550, 'mastercard', 8, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108754440010600, 'mastercard', 5, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372978945580, 'mastercard', 5, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048377890356650, 'mastercard', 6, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372676920940, 'mastercard', 3, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048375854710770, 'mastercard', 10, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371853982060, 'mastercard', 10, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371048433460, 'mastercard', 1, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108757831199240, 'mastercard', 1, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371343103160, 'mastercard', 10, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751489016840, 'mastercard', 7, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378714111740, 'mastercard', 7, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048374468295100, 'mastercard', 5, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371730157980, 'mastercard', 5, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379667261820, 'mastercard', 12, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379641057360, 'mastercard', 1, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751318950890, 'mastercard', 9, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108752191077520, 'mastercard', 3, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108758852192030, 'mastercard', 8, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753854110350, 'mastercard', 12, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371848981670, 'mastercard', 9, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108756354964140, 'mastercard', 6, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048375329215920, 'mastercard', 7, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108752719189260, 'mastercard', 1, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378362930730, 'mastercard', 8, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048370523328310, 'mastercard', 8, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372555779860, 'mastercard', 3, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108757782265810, 'mastercard', 1, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108756819610070, 'mastercard', 9, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108752999138800, 'mastercard', 6, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379629525460, 'mastercard', 8, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759086470780, 'mastercard', 9, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378660377710, 'mastercard', 10, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048378113637250, 'mastercard', 1, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108754438010970, 'mastercard', 10, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753662708300, 'mastercard', 11, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751120033690, 'mastercard', 2, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753206064490, 'mastercard', 9, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108755617656760, 'mastercard', 12, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751035728370, 'mastercard', 7, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108754082537370, 'mastercard', 12, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108752740562830, 'mastercard', 6, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048374369079530, 'mastercard', 4, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048374193921630, 'mastercard', 11, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108752002280440, 'mastercard', 9, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108758838523640, 'mastercard', 9, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753610359570, 'mastercard', 12, 2026);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108755574812610, 'mastercard', 9, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048370522970660, 'mastercard', 7, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108755453109260, 'mastercard', 11, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371024936930, 'mastercard', 12, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048376545677490, 'mastercard', 8, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048376660092680, 'mastercard', 5, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108755847046190, 'mastercard', 2, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048370801192850, 'mastercard', 5, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372075593710, 'mastercard', 11, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379379626410, 'mastercard', 7, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371780408150, 'mastercard', 1, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751596275650, 'mastercard', 5, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108756417028180, 'mastercard', 6, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753998415390, 'mastercard', 3, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108750136145580, 'mastercard', 6, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108755572329720, 'mastercard', 7, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108758525560680, 'mastercard', 5, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751064056800, 'mastercard', 7, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048377628304400, 'mastercard', 2, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108758796624710, 'mastercard', 1, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048373821635050, 'mastercard', 12, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108758966496940, 'mastercard', 6, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372062714800, 'mastercard', 4, 2024);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108759211152200, 'mastercard', 11, 2029);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048374845416960, 'mastercard', 1, 2025);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048372338099730, 'mastercard', 5, 2027);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108751703709690, 'mastercard', 9, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5108753750548170, 'mastercard', 8, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048374498189030, 'mastercard', 5, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048375554721850, 'mastercard', 9, 2028);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048371486619730, 'mastercard', 1, 2023);
insert into CreditCard (CardNumber, CardType, ExpMonth, ExpYear) values (5048379296298220, 'mastercard', 9, 2023);



insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('srh654pme', 'Gabrila', 'Airth', '1/2/2022 23:18', 'gairth0@google.de', 'FALSE', '16 Reindahl Circle', 'Winter Haven', 'FL', 56656, 8639956543, 5108751820757850);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jah835pym', 'Jasun', 'Pape', '7/28/2021 1:29', 'jpape1@howstuffworks.com', 'FALSE', '2355 Heffernan Parkway', 'Jersey City', 'NJ', 16463, 5518568410, 5048373341003250);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('wdv571bvr', 'Wynnie', 'Cottle', '1/10/2022 14:22', 'wcottle2@craigslist.org', 'FALSE', '972 Haas Lane', 'Katy', 'TX', 37143, 8327894508, 5048375551627260);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jum208err', 'Lisha', 'McMackin', '4/12/2022 11:01', 'lmcmackin3@usa.gov', 'TRUE', '7 Knutson Crossing', 'Seattle', 'WA', 49822, 2062056321, 5108750814127940);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dtj944xho', 'Dyann', 'Gabites', '6/25/2021 16:24', 'dgabites4@abc.net.au', 'FALSE', '9 Gerald Alley', 'Baltimore', 'MD', 80610, 4109832756, 5048379379843290);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('wmp028gtu', 'Alexandra', 'Batalini', '7/11/2021 10:07', 'abatalini5@dot.gov', 'FALSE', '446 Melvin Alley', 'Gainesville', 'FL', 91682, 3523590393, 5048376342235760);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('qmv635yom', 'Lynett', 'Vasilov', '7/29/2021 1:14', 'lvasilov6@123-reg.co.uk', 'FALSE', '61910 Pankratz Road', 'Killeen', 'TX', 31403, 2543635288, 5108756031677270);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('wzt761zfc', 'Dagmar', 'Denney', '8/2/2021 10:54', 'ddenney7@wikia.com', 'TRUE', '9063 Basil Alley', 'New York City', 'NY', 7256, 9175117485, 5108759342872220);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dxo583exe', 'Wilone', 'Squirrell', '5/15/2021 0:20', 'wsquirrell8@topsy.com', 'TRUE', '20 Memorial Crossing', 'San Diego', 'CA', 20924, 6198609813, 5108759610858250);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('vil070pbp', 'Quincey', 'Alphege', '12/7/2021 11:03', 'qalphege9@zdnet.com', 'FALSE', '6 Briar Crest Center', 'Fort Wayne', 'IN', 21295, 2602268447, 5108757989978220);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ave579umd', 'Patrizio', 'Congdon', '4/28/2022 15:05', 'pcongdona@myspace.com', 'TRUE', '46274 Kim Pass', 'Springfield', 'IL', 98759, 2176877015, 5048378141685570);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('mzr457vkh', 'Glen', 'Wiper', '12/6/2021 16:23', 'gwiperb@loc.gov', 'TRUE', '324 Mockingbird Road', 'Irving', 'TX', 53482, 4694339643, 5108750302631040);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('nlo756ywq', 'Corry', 'Stileman', '7/25/2021 4:05', 'cstilemanc@pagesperso-orange.fr', 'TRUE', '1964 Ruskin Drive', 'Lawrenceville', 'GA', 26236, 4043821917, 5108759044208050);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('qbq476tsa', 'Lisa', 'Reskelly', '6/9/2021 0:47', 'lreskellyd@tumblr.com', 'FALSE', '45772 Forest Dale Junction', 'Minneapolis', 'MN', 67263, 7637630928, 5108757970630230);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('eis746zwy', 'Lurleen', 'Fraczkiewicz', '5/5/2021 20:20', 'lfraczkiewicze@ucoz.com', 'FALSE', '12 Londonderry Crossing', 'New Orleans', 'LA', 64096, 5041971739, 5048370513197700);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('vgo264oys', 'Hilde', 'Salsberg', '8/19/2021 6:46', 'hsalsbergf@over-blog.com', 'FALSE', '18 Quincy Center', 'Mesa', 'AZ', 1903, 4805652526, 5048370976124140);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('xss389rqe', 'Iolande', 'Wingate', '5/25/2021 22:05', 'iwingateg@upenn.edu', 'FALSE', '838 Sommers Trail', 'Syracuse', 'NY', 32727, 3152900023, 5108751198194440);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('wbd982ssv', 'Loralee', 'Skermer', '8/6/2021 22:29', 'lskermerh@thetimes.co.uk', 'TRUE', '6659 Dahle Street', 'Corpus Christi', 'TX', 44617, 3613068745, 5048378905417890);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ynk823xpu', 'Othelia', 'Grimolbie', '6/10/2021 18:28', 'ogrimolbiei@jiathis.com', 'FALSE', '447 Burrows Alley', 'Saint Louis', 'MO', 58581, 3144118641, 5048371704395280);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ehv888ndc', 'Axel', 'Rowbrey', '1/20/2022 9:09', 'arowbreyj@lulu.com', 'FALSE', '430 Prentice Circle', 'Fairbanks', 'AK', 65975, 9076099781, 5108753452207850);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hib012lbe', 'Kirsteni', 'DeSousa', '3/19/2022 12:51', 'kdesousak@cnbc.com', 'TRUE', '5 Straubel Court', 'Kansas City', 'KS', 94860, 9135486738, 5108759942224910);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ebn858rqj', 'Lark', 'Bigland', '12/25/2021 15:17', 'lbiglandl@yellowpages.com', 'TRUE', '4838 Blackbird Crossing', 'Stamford', 'CT', 83772, 2034777755, 5108759960121550);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('znb387lfh', 'Jobi', 'Ivell', '12/2/2021 22:25', 'jivellm@ihg.com', 'TRUE', '313 Bayside Court', 'Jamaica', 'NY', 39628, 7189335283, 5108754440010600);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rrj224pur', 'Gladi', 'Gonzalvo', '8/18/2021 21:17', 'ggonzalvon@1und1.de', 'TRUE', '4 Heffernan Center', 'Sterling', 'VA', 85813, 5712469302, 5048372978945580);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dde896uem', 'Gasparo', 'Gudgin', '10/26/2021 17:58', 'ggudgino@php.net', 'FALSE', '538 Oak Court', 'Birmingham', 'AL', 7021, 2053792700, 5048377890356650);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ovb726zma', 'Libbi', 'Sharnock', '4/19/2022 7:52', 'lsharnockp@amazon.co.jp', 'FALSE', '327 Hooker Place', 'Mesquite', 'TX', 14761, 2146625282, 5048372676920940);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hyj443bxs', 'Jillayne', 'Meffen', '10/23/2021 22:22', 'jmeffenq@tamu.edu', 'FALSE', '93181 Mallard Road', 'Colorado Springs', 'CO', 9869, 7197769141, 5048375854710770);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('utz946glr', 'Wally', 'Margrem', '6/6/2021 8:41', 'wmargremr@oakley.com', 'FALSE', '4706 Sutherland Point', 'Philadelphia', 'PA', 70301, 2151802862, 5048371853982060);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('pde645jic', 'Kyrstin', 'Eggleson', '5/24/2021 1:53', 'kegglesons@acquirethisname.com', 'FALSE', '46652 Spaight Parkway', 'Erie', 'PA', 64745, 8146684337, 5048371048433460);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('pot289jwr', 'Natale', 'Seawell', '9/26/2021 4:19', 'nseawellt@house.gov', 'TRUE', '15 Glendale Way', 'Roanoke', 'VA', 45974, 5401232796, 5108757831199240);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jpa741jxb', 'Hildagard', 'Byham', '1/24/2022 9:53', 'hbyhamu@arstechnica.com', 'FALSE', '8 Spenser Plaza', 'Eugene', 'OR', 61079, 5415127148, 5048371343103160);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ufd561jth', 'Atlante', 'Treadgear', '1/29/2022 19:06', 'atreadgearv@cnbc.com', 'TRUE', '77 Bluestem Drive', 'Schenectady', 'NY', 15422, 5189646126, 5108751489016840);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ppy306qix', 'Kariotta', 'Alliston', '2/20/2022 12:56', 'kallistonw@nature.com', 'TRUE', '36190 Dawn Lane', 'Washington', 'DC', 1617, 2024617305, 5048378714111740);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rmh240prn', 'Bryn', 'Petrakov', '2/7/2022 18:41', 'bpetrakovx@blogtalkradio.com', 'FALSE', '710 Anzinger Parkway', 'Louisville', 'KY', 84239, 5028295857, 5048374468295100);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('czx819psr', 'Porter', 'Eldered', '6/24/2021 15:45', 'pelderedy@angelfire.com', 'TRUE', '19276 Brickson Park Street', 'Fort Wayne', 'IN', 72270, 2609081072, 5048371730157980);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('djg059dlb', 'Tory', 'Wipfler', '5/4/2021 9:10', 'twipflerz@nytimes.com', 'FALSE', '1 Riverside Drive', 'Fort Myers', 'FL', 19599, 2391571016, 5048379667261820);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rzx695myp', 'Aila', 'Rosendorf', '4/8/2022 8:59', 'arosendorf10@sbwire.com', 'TRUE', '137 Colorado Avenue', 'New York City', 'NY', 68402, 2127170673, 5048379641057360);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jlw243sws', 'Dillie', 'Rennels', '12/23/2021 10:36', 'drennels11@nhs.uk', 'TRUE', '012 Cardinal Trail', 'Las Cruces', 'NM', 26969, 5054572865, 5108751318950890);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('tlb779piv', 'Carolan', 'Capron', '10/9/2021 5:46', 'ccapron12@marriott.com', 'FALSE', '05 8th Park', 'Gilbert', 'AZ', 72504, 6029204626, 5108752191077520);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('zud562kqm', 'Guinna', 'Copland', '1/24/2022 13:05', 'gcopland13@sun.com', 'FALSE', '8 New Castle Road', 'Las Vegas', 'NV', 37200, 7024164966, 5108758852192030);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('kvs805zdn', 'Katherine', 'Clawson', '8/24/2021 10:39', 'kclawson14@google.com.au', 'FALSE', '9625 Loomis Way', 'Des Moines', 'IA', 72496, 5152444599, 5108753854110350);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('uvg268hwi', 'Ermina', 'Drinkeld', '6/23/2021 9:13', 'edrinkeld15@nature.com', 'TRUE', '007 Swallow Court', 'Huntington Beach', 'CA', 45026, 7601009593, 5048371848981670);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('swz950gur', 'Donnell', 'Grand', '10/18/2021 6:55', 'dgrand16@about.com', 'TRUE', '261 Scofield Court', 'Los Angeles', 'CA', 48192, 3235701250, 5108756354964140);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('zsp024eyq', 'Valle', 'Lanktree', '1/22/2022 9:51', 'vlanktree17@washington.edu', 'FALSE', '688 Transport Place', 'Toledo', 'OH', 91713, 4191412226, 5048375329215920);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('lwy406dza', 'Anthea', 'Bradie', '6/25/2021 23:20', 'abradie18@phpbb.com', 'FALSE', '1 Dwight Park', 'Washington', 'DC', 17612, 2025562290, 5108752719189260);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hdz589chh', 'Gabie', 'Karus', '9/21/2021 15:59', 'gkarus19@google.cn', 'FALSE', '60012 Iowa Avenue', 'Charlottesville', 'VA', 12262, 4341165309, 5048378362930730);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('slx608ije', 'Alexei', 'Whittlesee', '6/27/2021 10:26', 'awhittlesee1a@salon.com', 'TRUE', '6575 Coolidge Terrace', 'Washington', 'DC', 75770, 2021664269, 5048370523328310);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jan522uxl', 'Allistir', 'Chansonne', '5/8/2021 20:10', 'achansonne1b@boston.com', 'TRUE', '320 Melby Road', 'Indianapolis', 'IN', 80298, 3174624956, 5048372555779860);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dvn155yul', 'Maitilde', 'Kadar', '11/13/2021 4:41', 'mkadar1c@ezinearticles.com', 'TRUE', '29 Chinook Lane', 'Houston', 'TX', 99141, 7138709776, 5108757782265810);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rrm043pjm', 'Connie', 'Bernardos', '8/11/2021 22:45', 'cbernardos1d@barnesandnoble.com', 'TRUE', '373 Crowley Hill', 'Orlando', 'FL', 86845, 4077028435, 5108756819610070);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ahc522cfz', 'Dorette', 'Tocqueville', '7/31/2021 23:18', 'dtocqueville1e@huffingtonpost.com', 'FALSE', '0884 Heffernan Terrace', 'Cincinnati', 'OH', 23010, 5137118815, 5108752999138800);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hcp792fkc', 'Janette', 'Duval', '4/4/2022 8:10', 'jduval1f@behance.net', 'TRUE', '3176 Delaware Plaza', 'Lancaster', 'CA', 37879, 6617115802, 5048379629525460);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('lxs191ame', 'Violetta', 'Kesteven', '4/14/2022 3:45', 'vkesteven1g@posterous.com', 'FALSE', '124 Kensington Drive', 'Los Angeles', 'CA', 97686, 3238034885, 5108759086470780);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('xvn084oqt', 'Nefen', 'Quickfall', '5/21/2021 10:25', 'nquickfall1h@odnoklassniki.ru', 'FALSE', '34 Bunker Hill Drive', 'Dallas', 'TX', 63725, 2141211850, 5048378660377710);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('yxu646urg', 'Dunstan', 'Beagley', '8/2/2021 10:35', 'dbeagley1i@ycombinator.com', 'FALSE', '400 Dwight Hill', 'Orlando', 'FL', 96413, 3216076947, 5048378113637250);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('qpk859uso', 'Rodger', 'Firpo', '10/21/2021 22:11', 'rfirpo1j@utexas.edu', 'FALSE', '84 Cardinal Lane', 'Alexandria', 'VA', 41379, 5715299133, 5108754438010970);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('abu418jsr', 'Pierrette', 'Rollin', '6/30/2021 6:15', 'prollin1k@wunderground.com', 'TRUE', '6515 Muir Hill', 'San Francisco', 'CA', 54773, 4154382494, 5108753662708300);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('uxo256oxo', 'Winna', 'Stockill', '3/19/2022 16:37', 'wstockill1l@newyorker.com', 'FALSE', '412 Leroy Park', 'El Paso', 'TX', 26619, 9153157065, 5108751120033690);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('jwr314acw', 'Dru', 'Tax', '7/14/2021 22:18', 'dtax1m@moonfruit.com', 'TRUE', '54362 Morningstar Hill', 'Houston', 'TX', 57382, 7136620447, 5108753206064490);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('itc421wky', 'Karon', 'Barsham', '10/20/2021 19:07', 'kbarsham1n@ihg.com', 'FALSE', '55 Anderson Pass', 'Greensboro', 'NC', 30511, 3368010002, 5108755617656760);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('oem927cep', 'Alexina', 'Ordelt', '3/12/2022 3:05', 'aordelt1o@ted.com', 'TRUE', '928 Esch Parkway', 'Duluth', 'MN', 3510, 2186531164, 5108751035728370);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ale313vpl', 'Mahmoud', 'Greeson', '2/6/2022 12:25', 'mgreeson1p@eepurl.com', 'FALSE', '7721 International Court', 'Peoria', 'AZ', 35430, 9285050632, 5108754082537370);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('irq873fcv', 'Kahaleel', 'Desvignes', '1/28/2022 15:43', 'kdesvignes1q@state.gov', 'TRUE', '97137 Columbus Alley', 'Washington', 'DC', 58747, 2028586498, 5108752740562830);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('tcn872bha', 'Gwenneth', 'Cuel', '12/31/2021 1:10', 'gcuel1r@independent.co.uk', 'TRUE', '95 Division Street', 'Atlanta', 'GA', 73594, 4048222763, 5048374369079530);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('kkv474kam', 'Miller', 'Tremayne', '3/7/2022 19:58', 'mtremayne1s@wiley.com', 'TRUE', '21344 Beilfuss Terrace', 'San Diego', 'CA', 5070, 7602531214, 5048374193921630);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('kow452bjm', 'Roi', 'Aisbett', '10/3/2021 6:15', 'raisbett1t@sakura.ne.jp', 'TRUE', '8 Gulseth Hill', 'Albuquerque', 'NM', 58736, 5057333218, 5108752002280440);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('xrj138uqq', 'Issi', 'Martinello', '3/9/2022 11:59', 'imartinello1u@dmoz.org', 'FALSE', '71863 Gateway Junction', 'Memphis', 'TN', 95153, 9015364927, 5108758838523640);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ksb578caa', 'Jabez', 'Mills', '12/18/2021 11:38', 'jmills1v@apache.org', 'FALSE', '011 Bayside Hill', 'Colorado Springs', 'CO', 62871, 7197487676, 5108753610359570);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hma958mdb', 'Jocelyn', 'Skechley', '1/10/2022 13:18', 'jskechley1w@unicef.org', 'FALSE', '9708 Fairview Crossing', 'Albany', 'NY', 91706, 5185766546, 5108755574812610);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('gag164hvt', 'Nola', 'Kennea', '1/17/2022 18:07', 'nkennea1x@theguardian.com', 'TRUE', '33 Dottie Court', 'Orlando', 'FL', 51725, 4079996249, 5048370522970660);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('fmx584jsn', 'Mechelle', 'Outlaw', '7/28/2021 2:38', 'moutlaw1y@a8.net', 'TRUE', '98 Goodland Trail', 'Houston', 'TX', 47498, 7132682633, 5108755453109260);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('xms431hzv', 'Vivia', 'Penke', '11/10/2021 8:07', 'vpenke1z@51.la', 'TRUE', '7 South Pass', 'Fort Myers', 'FL', 82535, 2393491878, 5048371024936930);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('kei333epx', 'Angil', 'Richold', '12/4/2021 12:50', 'arichold20@shinystat.com', 'FALSE', '739 Melvin Pass', 'Longview', 'TX', 53157, 9037284131, 5048376545677490);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dem217gam', 'Debby', 'MacGarvey', '12/18/2021 10:25', 'dmacgarvey21@youtu.be', 'TRUE', '814 Hoard Street', 'Lubbock', 'TX', 62995, 8066226390, 5048376660092680);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('yox245zah', 'Petra', 'Readett', '1/9/2022 22:30', 'preadett22@etsy.com', 'TRUE', '2 Bowman Plaza', 'Brooklyn', 'NY', 90626, 9175068060, 5108755847046190);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ivi852bhi', 'Ambrosio', 'Schruyers', '10/4/2021 19:49', 'aschruyers23@addtoany.com', 'TRUE', '740 Kennedy Plaza', 'Aurora', 'IL', 88924, 6301248311, 5048370801192850);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rgr625zyw', 'Shawnee', 'Saill', '10/22/2021 7:55', 'ssaill24@wikia.com', 'FALSE', '99761 Continental Alley', 'Port Charlotte', 'FL', 92253, 9417864079, 5048372075593710);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('yxh431hbj', 'Brockie', 'Lockyear', '4/5/2022 13:32', 'blockyear25@ucoz.com', 'TRUE', '58 Southridge Crossing', 'Odessa', 'TX', 42732, 4329079612, 5048379379626410);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('yut881zse', 'Dorri', 'Pook', '1/28/2022 11:28', 'dpook26@google.com.au', 'FALSE', '65 Fisk Alley', 'Newark', 'NJ', 79315, 2015776061, 5048371780408150);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('usu180umn', 'Shay', 'Puig', '1/6/2022 16:30', 'spuig27@msu.edu', 'TRUE', '1952 Cody Center', 'Lexington', 'KY', 62654, 8597143168, 5108751596275650);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('yow163kks', 'Mozelle', 'Skittle', '9/7/2021 21:54', 'mskittle28@narod.ru', 'TRUE', '224 Prairie Rose Road', 'Charleston', 'WV', 9080, 3041893486, 5108756417028180);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('vzq580sxh', 'Mariam', 'De Lacey', '1/22/2022 7:09', 'mdelacey29@springer.com', 'FALSE', '524 Dryden Parkway', 'Alpharetta', 'GA', 78733, 6781869572, 5108753998415390);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ugc279car', 'Anne', 'Ruperto', '12/29/2021 11:50', 'aruperto2a@intel.com', 'TRUE', '42734 Chinook Court', 'Jersey City', 'NJ', 68528, 2016232628, 5108750136145580);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('svg187pkw', 'Allianora', 'Brighty', '1/9/2022 14:21', 'abrighty2b@hhs.gov', 'TRUE', '62 Veith Alley', 'Atlanta', 'GA', 69451, 7705616828, 5108755572329720);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('alg655lnu', 'Louis', 'Brazener', '6/27/2021 4:39', 'lbrazener2c@ted.com', 'FALSE', '5618 Graedel Way', 'Norwalk', 'CT', 49694, 2038066742, 5108758525560680);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('bjk803rdt', 'Shayne', 'Trott', '6/24/2021 9:12', 'strott2d@homestead.com', 'FALSE', '9 Pleasure Place', 'Huntington', 'WV', 23704, 3048978886, 5108751064056800);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('lyv059ryx', 'Mandie', 'Pellant', '2/2/2022 14:34', 'mpellant2e@bloomberg.com', 'FALSE', '4 Logan Park', 'Muskegon', 'MI', 38839, 2317976249, 5048377628304400);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('sku011asy', 'Kort', 'Manson', '1/30/2022 12:18', 'kmanson2f@sun.com', 'FALSE', '9 Hanover Street', 'Wilkes Barre', 'PA', 67584, 5706905026, 5108758796624710);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('eon043roz', 'Sigrid', 'Truckell', '1/4/2022 8:48', 'struckell2g@theglobeandmail.com', 'FALSE', '43616 Maywood Point', 'Tacoma', 'WA', 49501, 2532257306, 5048373821635050);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('clw338mxp', 'Victoria', 'Koop', '12/9/2021 15:32', 'vkoop2h@twitpic.com', 'FALSE', '97798 Coleman Park', 'Topeka', 'KS', 69657, 7855012455, 5108758966496940);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('puq913ryd', 'Orin', 'Noweak', '4/8/2022 10:16', 'onoweak2i@webeden.co.uk', 'FALSE', '99204 Schiller Avenue', 'Washington', 'DC', 46377, 2027335050, 5048372062714800);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('hsp839qvc', 'Cordie', 'Morsley', '3/21/2022 13:56', 'cmorsley2j@g.co', 'FALSE', '67784 Springview Place', 'Los Angeles', 'CA', 16316, 2131036726, 5108759211152200);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('mrf452zvm', 'Marvin', 'Crippes', '10/30/2021 7:07', 'mcrippes2k@nba.com', 'FALSE', '863 East Parkway', 'Ann Arbor', 'MI', 58686, 7349394688, 5048374845416960);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('ekd190txq', 'Drugi', 'Harner', '2/3/2022 1:48', 'dharner2l@irs.gov', 'TRUE', '1962 Butternut Way', 'Seattle', 'WA', 79320, 2067423652, 5048372338099730);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('utl405mpz', 'Krystle', 'Murrigans', '2/18/2022 4:10', 'kmurrigans2m@ox.ac.uk', 'TRUE', '93 Gulseth Way', 'Greensboro', 'NC', 36408, 3367954743, 5108751703709690);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('qsk289cow', 'Alidia', 'Marrison', '11/18/2021 5:58', 'amarrison2n@harvard.edu', 'TRUE', '25907 Mccormick Place', 'Richmond', 'VA', 99951, 8049210985, 5108753750548170);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('dgv737rsc', 'Bailie', 'Danilyak', '8/5/2021 22:11', 'bdanilyak2o@adobe.com', 'TRUE', '7 Monica Parkway', 'Chandler', 'AZ', 41682, 4805268902, 5048374498189030);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('rus314fer', 'Electra', 'Rolstone', '3/25/2022 19:05', 'erolstone2p@netvibes.com', 'FALSE', '64161 Glacier Hill Street', 'Augusta', 'GA', 7815, 7069628779, 5048375554721850);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('kqm572jkv', 'Charles', 'Busswell', '6/1/2021 11:21', 'cbusswell2q@google.fr', 'TRUE', '4 Lukken Way', 'Albuquerque', 'NM', 71071, 5056168067, 5048371486619730);
insert into Customer (CustomerID, CustomerFirstName, CustomerLastName, CustomerDOB, CustomerEmail, LoyaltyMember, StreetAddress, City, State, ZIP, Phone, CardNumber) values ('xdp198ltz', 'Torrin', 'Gabbotts', '1/31/2022 16:59', 'tgabbotts2r@thetimes.co.uk', 'TRUE', '94896 Dayton Alley', 'Mobile', 'AL', 44509, 2517614003, 5048379296298220);



insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('587mbx818khq', '526xyw409', 'srh654pme', '3/6/2022 14:02');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('943bmg504kyz', '526xyw409', 'jah835pym', '1/15/2022 14:55');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('513fec936hye', '526xyw409', 'wdv571bvr', '3/10/2022 1:48');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('665fwq440vvc', '526xyw409', 'jum208err', '1/21/2022 7:08');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('916qba228umi', '526xyw409', 'dtj944xho', '1/16/2022 4:31');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('696xny201gzx', '526xyw409', 'wmp028gtu', '1/8/2022 7:24');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('914xfj955hgg', '526xyw409', 'qmv635yom', '2/10/2022 5:34');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('631kxl338emh', '526xyw409', 'wzt761zfc', '3/11/2022 20:46');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('494nhd650ink', '526xyw409', 'dxo583exe', '2/5/2022 13:31');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('293fcc522kzr', '526xyw409', 'vil070pbp', '1/9/2022 5:37');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('253xls949eaw', '526xyw409', 'ave579umd', '3/11/2022 4:33');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('375lxn846zdc', '372cuo249', 'mzr457vkh', '3/8/2022 0:09');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('190paf202nbe', '372cuo249', 'nlo756ywq', '1/8/2022 11:30');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('196yrn623ujk', '372cuo249', 'qbq476tsa', '3/5/2022 9:58');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('171ldv215axa', '372cuo249', 'eis746zwy', '3/11/2022 19:24');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('253zrb700lwb', '372cuo249', 'vgo264oys', '1/26/2022 6:53');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('110eam447gdn', '372cuo249', 'xss389rqe', '3/24/2022 17:02');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('195xqm879hey', '372cuo249', 'wbd982ssv', '3/22/2022 8:03');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('889ehg869vjo', '372cuo249', 'ynk823xpu', '1/15/2022 2:27');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('829mow654vby', '372cuo249', 'ehv888ndc', '3/30/2022 2:55');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('099nxv672mow', '372cuo249', 'hib012lbe', '1/10/2022 23:37');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('569dyr902tgk', '880spb274', 'ebn858rqj', '3/31/2022 4:40');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('854bpy669vll', '880spb274', 'znb387lfh', '1/19/2022 13:58');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('692yrp114xzq', '880spb274', 'rrj224pur', '3/2/2022 2:03');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('991dnq868ytw', '880spb274', 'dde896uem', '1/5/2022 0:31');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('523rdf885zua', '880spb274', 'ovb726zma', '1/23/2022 22:05');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('565gjv608eej', '880spb274', 'hyj443bxs', '3/15/2022 16:10');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('500uyy554qwe', '880spb274', 'utz946glr', '1/14/2022 13:54');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('738nsx858cgi', '880spb274', 'pde645jic', '1/19/2022 5:22');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('255ycc360oui', '880spb274', 'pot289jwr', '3/29/2022 3:04');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('798dzl082omx', '880spb274', 'jpa741jxb', '2/15/2022 11:15');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('441ign445ixa', '043phl515', 'ufd561jth', '1/10/2022 11:24');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('039yxz820cik', '043phl515', 'ppy306qix', '2/24/2022 13:29');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('764pws429gdr', '043phl515', 'rmh240prn', '3/14/2022 11:41');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('437hbr735bkg', '043phl515', 'czx819psr', '2/20/2022 14:53');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('596eia342uap', '043phl515', 'djg059dlb', '2/10/2022 4:27');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('044crb184mcy', '043phl515', 'rzx695myp', '1/20/2022 2:06');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('865axx969atx', '043phl515', 'jlw243sws', '2/17/2022 21:27');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('924nrh108fws', '043phl515', 'tlb779piv', '1/7/2022 7:59');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('763ezb897pxr', '043phl515', 'zud562kqm', '1/22/2022 0:44');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('609bdr658xed', '043phl515', 'kvs805zdn', '1/28/2022 18:02');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('499hcx164vvp', '776utk132', 'uvg268hwi', '1/10/2022 0:07');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('828qzr569ovu', '776utk132', 'swz950gur', '2/9/2022 13:29');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('450nwc570vtn', '776utk132', 'zsp024eyq', '2/21/2022 18:49');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('150ovs613xpa', '776utk132', 'lwy406dza', '3/26/2022 3:26');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('745pho536irf', '776utk132', 'hdz589chh', '1/10/2022 6:06');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('699djt076bqc', '776utk132', 'slx608ije', '3/14/2022 6:25');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('623bjx581nit', '776utk132', 'jan522uxl', '1/2/2022 6:58');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('163yvo892weh', '776utk132', 'dvn155yul', '1/2/2022 22:19');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('361veq507wcr', '776utk132', 'rrm043pjm', '2/13/2022 15:25');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('413svb441xrv', '776utk132', 'ahc522cfz', '2/19/2022 15:28');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('878psg254dru', '898eyz788', 'hcp792fkc', '2/20/2022 14:06');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('408ljk722hsj', '898eyz788', 'lxs191ame', '3/11/2022 3:17');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('469sgl816wfi', '898eyz788', 'xvn084oqt', '2/5/2022 17:50');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('627jwm130grc', '898eyz788', 'yxu646urg', '3/22/2022 10:16');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('931non837ncw', '898eyz788', 'qpk859uso', '2/4/2022 8:19');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('192kos662nvx', '898eyz788', 'abu418jsr', '1/11/2022 10:05');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('534kgg034oot', '898eyz788', 'uxo256oxo', '2/21/2022 4:48');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('497umz614hph', '898eyz788', 'jwr314acw', '2/5/2022 5:17');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('929zwm602ujm', '583oai527', 'itc421wky', '2/20/2022 14:52');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('636nsz330lkp', '583oai527', 'oem927cep', '2/12/2022 3:28');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('696euz152sds', '583oai527', 'ale313vpl', '1/23/2022 14:37');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('654bez158gzw', '583oai527', 'irq873fcv', '1/20/2022 5:28');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('837sbu099yzr', '583oai527', 'tcn872bha', '3/29/2022 11:43');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('186qci767gcl', '583oai527', 'kkv474kam', '2/24/2022 4:15');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('879ree880jmq', '583oai527', 'kow452bjm', '1/16/2022 18:53');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('755ozb028qui', '583oai527', 'xrj138uqq', '2/8/2022 2:41');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('851wvz003smp', '583oai527', 'ksb578caa', '3/22/2022 11:30');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('115pfc491aqj', '583oai527', 'hma958mdb', '3/26/2022 17:50');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('974ppk031efb', '484kag030', 'gag164hvt', '1/2/2022 2:37');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('639upv959bdb', '484kag030', 'fmx584jsn', '1/30/2022 6:07');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('894mxf590hoa', '484kag030', 'xms431hzv', '1/10/2022 13:01');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('176hfv639oks', '484kag030', 'kei333epx', '2/20/2022 8:23');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('973qxo411xym', '484kag030', 'dem217gam', '3/22/2022 3:19');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('739dgq919cxu', '484kag030', 'yox245zah', '2/12/2022 4:26');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('014xru578cto', '484kag030', 'ivi852bhi', '2/5/2022 11:37');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('865syz007fio', '484kag030', 'rgr625zyw', '2/9/2022 23:21');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('442ilv997wmt', '484kag030', 'yxh431hbj', '1/3/2022 12:51');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('855spe501lfn', '484kag030', 'yut881zse', '3/15/2022 13:05');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('531njg231xwf', '800fkc604', 'usu180umn', '1/13/2022 4:31');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('251neq305xuv', '800fkc604', 'yow163kks', '3/10/2022 13:27');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('160zqd984rjq', '800fkc604', 'vzq580sxh', '2/28/2022 13:56');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('709kjq318uhq', '800fkc604', 'ugc279car', '2/27/2022 10:32');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('789bra420pjf', '800fkc604', 'svg187pkw', '1/25/2022 5:23');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('906aiw559ogv', '800fkc604', 'alg655lnu', '3/20/2022 20:12');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('104qgt686mty', '800fkc604', 'bjk803rdt', '2/12/2022 23:05');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('941wmw282hte', '800fkc604', 'lyv059ryx', '3/18/2022 13:34');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('054gpc132pgs', '800fkc604', 'sku011asy', '3/9/2022 2:21');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('290rck619zey', '800fkc604', 'eon043roz', '1/20/2022 1:11');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('950ypr455mme', '800fkc604', 'clw338mxp', '3/23/2022 15:13');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('332wfm865oqo', '558xfe437', 'puq913ryd', '2/5/2022 3:24');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('106qfc709awd', '558xfe437', 'hsp839qvc', '2/18/2022 20:46');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('219hbh474esa', '558xfe437', 'mrf452zvm', '2/25/2022 20:00');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('005pgx097oua', '558xfe437', 'ekd190txq', '3/15/2022 5:34');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('076fmq935ubv', '558xfe437', 'utl405mpz', '1/7/2022 22:29');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('750ewp144ijo', '558xfe437', 'qsk289cow', '3/28/2022 1:01');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('470wyx923nzf', '558xfe437', 'dgv737rsc', '3/11/2022 23:15');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('818dbf877coc', '558xfe437', 'rus314fer', '3/10/2022 14:34');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('135xfs778okr', '558xfe437', 'kqm572jkv', '2/3/2022 0:14');
insert into Ticket (TicketID, FlightID, CustomerID, SaleDate) values ('053ckb376ajk', '558xfe437', 'xdp198ltz', '3/24/2022 11:15');



insert into Vendor (VendorID, VendorName, AccountingCategory) values ('387ukl453', 'Exxon', 'Fuel');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('885iij235', 'Chevron', 'Fuel');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('267ala144', 'FoodCart', 'Food');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('570hvs504', 'MichelinCatering', 'Food');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('137hxp572', 'UnitedMaintenanceSolutions', 'AircraftMaintenance');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('909phf951', 'AAAMaintenance', 'AircraftMaintenance');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('643glm646', 'CloudStaffing', 'TempStaffing');
insert into Vendor (VendorID, VendorName, AccountingCategory) values ('303vlm944', 'NationalStaffingSolutions', 'TempStaffing');



insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('387ukl453', 2980.66, 'kdb616zto904');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('387ukl453', 2911.01, 'yor466udm575');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('387ukl453', 2629.83, 'lop359ibi009');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('387ukl453', 2931, 'prm632fut010');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('387ukl453', 2950.06, 'jyc112ckb687');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('885iij235', 2890.87, 'hvg093gav480');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('885iij235', 2629.33, 'biw192fxi688');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('885iij235', 2946.53, 'xlk016bvt720');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('885iij235', 2642.84, 'lzc226xvu414');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('885iij235', 2520.64, 'qtk901zpm568');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('267ala144', 1826.95, 'etv854nwt571');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('267ala144', 1677.12, 'epl725lle329');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('267ala144', 1693.48, 'igp857pdm758');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('267ala144', 1722.49, 'elm513nxt653');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('267ala144', 1966.22, 'yvl404vsi240');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('570hvs504', 1654.42, 'erw293sxc251');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('570hvs504', 1657.84, 'fny731dfv760');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('570hvs504', 1802.17, 'zvh737gts069');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('570hvs504', 1767.98, 'xgi817xlp545');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('570hvs504', 1837.47, 'mfh833umo488');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('137hxp572', 6270.85, 'kqz359sns203');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('137hxp572', 5114.39, 'rha633pvh351');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('137hxp572', 6436.32, 'mnr531xal092');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('137hxp572', 5018.01, 'xmr444zgk555');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('137hxp572', 6126.3, 'yen457xjp694');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('909phf951', 5957.89, 'que211czk077');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('909phf951', 7390.73, 'klc392nrv349');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('909phf951', 5985.26, 'ovy108tym165');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('909phf951', 5882.44, 'dhz781anl194');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('909phf951', 5430.69, 'ppv352gwq494');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('643glm646', 3193.18, 'msf696ogl748');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('643glm646', 3313.43, 'vpy497tlc702');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('643glm646', 3804.6, 'siy412web491');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('643glm646', 3840.27, 'fbf770cei306');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('643glm646', 3732.05, 'rix986evi463');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('303vlm944', 3649.01, 'tge371fum272');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('303vlm944', 3786.85, 'isa068sne476');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('303vlm944', 3523.24, 'iun766gll096');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('303vlm944', 3531.6, 'gzi919ouk393');
insert into VendorTransaction (VendorID, TransactionTotal, TransactionID) values ('303vlm944', 3376.84, 'jfb608vbh460');



insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('526xyw409', 'ATL', 'LAX', 40022, '296-RZM-380', '4/1/2022 11:18', '4/1/2022 16:18', 'kdb616zto904', 'etv854nwt571', 'kqz359sns203', 'msf696ogl748', 400);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('372cuo249', 'DFW', 'ATL', 90710, '646-JOI-789', '4/12/2022 4:10', '4/12/2022 6:10', 'yor466udm575', 'epl725lle329', 'rha633pvh351', 'vpy497tlc702', 250);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('880spb274', 'LAX', 'ORD', 48101, '645-BQU-886', '4/15/2022 7:10', '4/15/2022 11:10', 'lop359ibi009', 'igp857pdm758', 'mnr531xal092', 'siy412web491', 450);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('043phl515', 'DEN', 'LAX', 72999, '828-KCL-706', '4/17/2022 14:10', '4/17/2022 16:40', 'prm632fut010', 'elm513nxt653', 'xmr444zgk555', 'fbf770cei306', 250);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('776utk132', 'ORD', 'DEN', 30912, '320-BZA-981', '4/20/2022 18:40', '4/20/2022 21:00', 'jyc112ckb687', 'yvl404vsi240', 'yen457xjp694', 'rix986evi463', 350);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('898eyz788', 'LAX', 'ATL', 40022, '296-RZM-380', '4/22/2022 17:18', '4/22/2022 22:18', 'hvg093gav480', 'erw293sxc251', 'que211czk077', 'tge371fum272', 400);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('583oai527', 'ATL', 'DFW', 90710, '646-JOI-789', '4/25/2022 7:10', '4/25/2022 9:10', 'biw192fxi688', 'fny731dfv760', 'klc392nrv349', 'isa068sne476', 350);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('484kag030', 'ORD', 'LAX', 48101, '645-BQU-886', '4/26/2022 12:10', '4/26/2022 16:10', 'xlk016bvt720', 'zvh737gts069', 'ovy108tym165', 'iun766gll096', 350);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('800fkc604', 'LAX', 'DEN', 72999, '828-KCL-706', '4/28/2022 17:40', '4/28/2022 19:40', 'lzc226xvu414', 'xgi817xlp545', 'dhz781anl194', 'gzi919ouk393', 300);
insert into Flight (FlightID, Departure, Destination, PlaneID, PilotID, DepartureDate, ArrivalDate, FuelPaymentID, FoodPaymentID, MaintenancePaymentID, StaffingPaymentID, Price) values ('558xfe437', 'DEN', 'ORD', 30912, '320-BZA-981', '4/29/2022 22:00', '4/29/2022 0:00', 'qtk901zpm568', 'mfh833umo488', 'ppv352gwq494', 'jfb608vbh460', 350);

ALTER TABLE Pilot
ALTER COLUMN salary int;

#Query statements
'#1 - List of customers on flight xyz'

Select Ticket.CustomerID, CustomerEmail, TicketID, FlightID
From  Customer
inner join Ticket on Ticket.CustomerID = Customer.CustomerID
Where Ticket.FlightID = '526xyw409'


'#2 - List of customers with loyalty status'

Select CustomerID, CustomerFirstName,CustomerLastName, CustomerEmail, LoyaltyMember
From Customer
Where LoyaltyMember = 'FALSE'


'#3 - List of transactions greater than $5000 for vendor Chevron(i.e.'885iij235')'

Select TransactionID, VendorName, TransactionTotal
from VendorTransaction, Vendor
where Vendor.VendorID = '885iij235' and TransactionTotal>5000
order by TransactionTotal desc


'#4 - Which flights departed from LAX?'

Select Ticket.FlightID, Flight.Departure, Count(Ticket.TicketID) As noOfPassengers
From Ticket
inner join Flight on Ticket.FlightID = Flight.FlightID
where Departure = 'LAX'
Group By Ticket.FlightID, Flight.Departure


'#5 - What were the salaries of the pilots that arrived at LAX?'

Select Pilot.PilotID, Pilot.FirstName, Pilot.LastName, Destination, Pilot.Salary
From Pilot
inner join Flight on Pilot.PilotID = Flight.PilotID
where Destination = 'LAX' 
order by Pilot.Salary desc



'#6 - Which Flights departed between