INSERT INTO `MEMBER` 
VALUES 
('test@2024', 'password123', 'test@gmail.com', 1, 123, 'Texas Road', 'Tyler', 'TX', 'United States', 75703, 30 , 41, 'Preferred'),
('test@2023', 'password456', 'test123@gmail.com', 2, 456, 'Dallas Avenue', 'Houston', 'TX', 'United States', 77449, 80, 23, 'Preferred'),
('test@2022', 'password789', 'test456@gmail.com', 3, 789, 'Space Boulevard', 'Austin', 'TX', 'United States', 73301, 45, 17, 'Regular'),
('test@2021', 'password001', 'test789@gmail.com', 4, 999, 'Jackson Street', 'Galveston', 'TX', 'United States', 77550, 62, 32, 'Regular'),
('test@2020', 'password002', 'test001@gmail.com', 5, 564, 'Mouse Way', 'Los Angeles', 'CA', 'United States', 90001, 54, 70, 'Regular');

INSERT INTO GEOGRAPHICAL_LOCATION 
VALUES
('Dallas', 'TX', 'United States', 75001),
('Houston', 'TX', 'United States', 77449),
('Los Angeles', 'CA', 'United States', 90001),
('Denver', 'CO', 'United States', 80014),
('Miami', 'FL', 'United States', 33101),
('Orlando', 'FL', 'United States', 32789),
('San Diego', 'CA', 'United States', 91942),
('Chicago', 'IL', 'United States', 60007),
('New York City', 'NY', 'United States', 10001),
('New York City', 'NY', 'United States', 10451),
('New York City', 'NY', 'United States', 11201),
('New York City', 'NY', 'United States', 10301),
('Paris', 'Île-de-France', 'France', 75001),
('Caen', 'Normandie', 'France', 14000),
('Rennes', 'Bretagne', 'France', 35000),
('Lille', 'Hauts-de-France', 'France', 59160),
('Marseille', 'Provence-Alpes-Côte d`Azur', 'France', 13001);

INSERT INTO TRAVEL_ATTRACTION 
VALUES
('Walt Disney World', '(+1) 865-858-9416', '05:00', '23:00', 'Car', 'Walt Disney World Resort is a world-renowned entertainment complex located near Orlando, FL, United States.', 10.0, 5856, 'Walt Disney Road', 'Orlando', 'FL', 'United States', 32789),
('San Diego Zoo', '(+1) 526-112-7423', '06:00', '14:00', 'Car', 'The San Diego Zoo is the largest zoo on the United States west coast!', 9.0, 6548, 'Tiger Lane', 'San Diego', 'CA', 'United States', 91942),
('Miami Beach', '(+1) 666-215-7456', '09:00', '21:00', 'Car', 'The hottest beach in Florida!', 6.5, 1111, 'Burger Boulevard', 'Miami', 'FL', 'United States', 33101),
('French Architectural Museum', '(+33) 210-355-9112', '06:00', '20:00', 'Car', 'The best French architectural museum!', 8.2, 1945, 'Napoleon Square', 'Rennes', 'Bretagne', 'France', 35000),
('Rose Nature Park', '(+33) 650-700-4113', '12:00', '22:00', 'Car', 'The premier nature park where one can see thousands of different roses!', 9.0, 175, 'Rhine Square', 'Marseille', 'Provence-Alpes-Côte d`Azur', 'France', 13001),
('Eiffel Tower', '(+33) 101-752-4102', '9:00', '18:00', 'Car', 'The famous Eiffel Tower!', 9.9, 1545, 'Eiffel Road', 'Paris', 'Île-de-France', 'France', 75001),
('British Channel Beach', '(+33) 702-333-7733', '12:00', '17:00', 'Car', 'Beach leading into the British Channel. Known for hosting swimming events across the channel!', 7.3, 713, 'Dune Square', 'Caen', 'Normandie', 'France', 14000),
('Cheesecake Factory', '(+1) 325-999-8800', '08:00', '18:00', 'Car', 'The best place in town for cheesecake!', 7.8, 7111, 'Cheese Castle Street', 'New York City', 'NY', 'United States', 10001),
('Golden Coral', '(+1) 321-236-5562', '10:00', '22:00', 'Car', 'All you can eat Chinese cuisine!', 5.0, 3333, 'Food Way', 'New York City', 'NY', 'United States', 10451),
('FD Grill', '(+1) 777-333-0012', '05:00', '17:00', 'Car', 'Best grills in town!', 7.4, 2888, 'Steak Street', 'New York City', 'NY', 'United States', 11201),
('Pattys Pizza', '(+1) 412-111-4400', '11:00', '22:00', 'Car', 'PIZZA, PIZZA, AND MORE PIZZA!', 8.8, 911, 'Tyler Drive', 'New York City', 'NY', 'United States', 10301),
('Bread Palace', '(+33) 971-444-6686', '12:00', '16:00', 'Car', 'The best coissants in France!', 9.7, 7070, 'Main Square', 'Lille', 'Hauts-de-France', 'France', 59160),
('NYC Outlet Mall', '(+1) 178-987-0897', '09:00', '18:00', 'Car', 'Best mall for high end fashion!', 4.5, 2456, 'Gucci Way', 'New York City', 'NY', 'United States', 10301),
('Houston Outlet Mall', '(+1) 832-438-8745', '10:00', '24:00', 'Car', 'Largest mall in Houston, TX!', 3.8, 4565, 'Sam Houston Court', 'Houston', 'TX', 'United States', 77449),
('Dallas Outlet Mall', '(+1) 903-703-0506', '02:00', '24:00', 'Car', 'The place to be in Dallas, TX!', 10.0, 2010, 'Cowboy Lane', 'Dallas', 'TX', 'United States', 75001);

INSERT INTO TRIP_PLAN
VALUES
('dNZRdi', 'Disney World Trip', 'Have as much as fun as possible!', '2020-04-08 15:00', '2020-04-16 15:00', 'test@2024', 5000.00),
('DyCYYo', 'San Diego Zoo Trip', 'See some tigers!', '2022-12-07 06:00', '2022-12-07 22:00', 'test@2023', 150.00),
('FuqEy0', 'Miami Beach', 'Lie on the beach and tan!', '2023-05-01 08:00', '2023-05-01 23:00', 'test@2022', 100.00),
('a75RbH', 'Trip to NYC Outlet Mall', 'Spend tons of money at the mall!', '2024-02-01 07:00', '2024-02-01 23:00', 'test@2021', 10000.00),
('MpSlCq', 'Trip to Dallas Outlet Mall', 'Buy a luxury couch!', '2024-03-14 10:00', '2024-03-14 22:00', 'test@2020', 8000.00),
('eosp7f', 'Eiffel Tower Trip', 'I want to see the Eiffel Tower up close!', '2018-12-02 10:00', '2018-12-12 22:00', 'test@2020', 20000.00),
('5TRO8O', 'Trip to Normandy, France', 'Would love to go for a dip in the British Channel!', '2019-01-02 05:00', '2019-01-10 17:00', 'test@2021', 6000.00),
('MgEzcq', 'Trip to Bretagne, France', 'Desire to see classical French architecture.', '2019-01-15 06:00', '2019-01-30 20:00', 'test@2022', 2000.00),
('COAlD3', 'Trip to Hauts-de-France, France', 'Really want to try French cuisine.', '2019-01-01 10:00', '2019-01-30 20:00', 'test@2024', 14000.00),
('5ryjxY', 'Trip to Marseille, France', 'Looking forward to taking pictures of all the scenary.', '2018-12-07 03:00', '2018-12-25 17:00', 'test@2023', 9000.00),
('KL65ds', 'Smith Family Vacation', 'Making great family memories!', '2020-12-07 04:00', '2020-12-22 16:00', 'test@2023', 25000.00),
('dS2008', 'Jackson Couple Honeymoon', 'Making newlywed memories!', '2009-02-14 10:00', '2009-02-28 22:00', 'test@2023', 12000.00);

INSERT INTO TRIP_PLAN_ATTRACTIONS
VALUES
('DFnxQCl', 'dNZRdi', 'Walt Disney World'),
('nSZEzD5', 'DyCYYo', 'San Diego Zoo'),
('LelFsPW', 'FuqEy0', 'Miami Beach'),
('u1AY2JA', 'a75RbH', 'NYC Outlet Mall'),
('0rNlFlJ', 'MpSlCq', 'Dallas Outlet Mall'),
('zXYU3oc', 'eosp7f', 'Eiffel Tower'),
('ti551h6', '5TRO8O', 'British Channel Beach'),
('jRLCQsa', 'MgEzcq', 'French Architectural Museum'),
('8IamHqs', 'COAlD3', 'Bread Palace'),
('wb541ox', '5ryjxY', 'Rose Nature Park'),
('BN7A2YQ', 'KL65ds', 'Rose Nature Park'),
('XgTlt1x', 'KL65ds', 'Walt Disney World'),
('4uhK3vB', 'KL65ds', 'Miami Beach'),
('UWYwftf', 'dS2008', 'Eiffel Tower'),
('mRIu0KK', 'dS2008', 'Rose Nature Park'),
('2P45CT4', 'dS2008', 'San Diego Zoo');

INSERT INTO ARRIVAL_DATE_TIMES 
VALUES
('KBjtRu0', 'dNZRdi', '2020-04-09', '13:00', 'Walt Disney World'),
('d2VqqGB', 'DyCYYo', '2022-12-07', '08:00', 'San Diego Zoo'),
('ZUwkm2s', 'FuqEy0', '2023-05-01', '10:00', 'Miami Beach'),
('wOKW5EB', 'a75RbH', '2024-02-01', '09:00', 'NYC Outlet Mall'),
('mxiprmJ', 'MpSlCq', '2024-03-14', '11:00', 'Dallas Outlet Mall'),
('BawLf5A', 'eosp7f', '2018-12-02', '12:00', 'Eiffel Tower'),
('qi0cnza', '5TRO8O', '2019-01-02', '07:00', 'British Channel Beach'),
('LpUYqy9', 'MgEzcq', '2019-01-15', '10:00', 'French Architectural Museum'),
('gFQ1p8Z', 'COAlD3', '2019-01-01', '12:00', 'Bread Palace'),
('Uo8uXjO', '5ryjxY', '2018-12-07', '05:00', 'Rose Nature Park'),
('QQIeup7', 'KL65ds', '2020-12-07', '08:00', 'Rose Nature Park'),
('YFA5yyh', 'KL65ds', '2020-12-17', '22:00', 'Walt Disney World'),
('NwaPgAA', 'KL65ds', '2020-12-20', '14:00', 'Miami Beach'),
('3sc3E3i', 'dS2008', '2009-02-14', '16:00', 'Eiffel Tower'),
('YY5MmAo', 'dS2008', '2009-02-20', '20:00', 'Rose Nature Park'),
('vtebPIB', 'dS2008', '2009-02-22', '08:00', 'San Diego Zoo');

INSERT INTO DEPARTURE_DATE_TIMES 
VALUES
('qWcjf0R', 'dNZRdi', '2020-04-15', '8:00', 'Walt Disney World'),
('oLkk6Lf', 'DyCYYo', '2022-12-07', '13:00', 'San Diego Zoo'),
('ftYMIx6', 'FuqEy0', '2023-05-01', '16:00', 'Miami Beach'),
('IRG7Lol', 'a75RbH', '2024-02-01', '21:00', 'NYC Outlet Mall'),
('GSTbGP3', 'MpSlCq', '2024-03-14', '21:00', 'Dallas Outlet Mall'),
('fjMPpfg', 'eosp7f', '2018-12-12', '21:00', 'Eiffel Tower'),
('a8C26qi', '5TRO8O', '2019-01-10', '15:00', 'British Channel Beach'),
('iGtJfKs', 'MgEzcq', '2019-01-30', '19:00', 'French Architectural Museum'),
('BtH6oBs', 'COAlD3', '2019-01-30', '19:00', 'Bread Palace'),
('h7rAFvL', '5ryjxY', '2018-12-25', '16:00', 'Rose Nature Park'),
('bEppXsU', 'KL65ds', '2020-12-09', '13:00', 'Rose Nature Park'),
('kITU8Hf', 'KL65ds', '2020-12-19', '12:00', 'Walt Disney World'),
('S5uZsr8', 'KL65ds', '2020-12-21', '14:00', 'Miami Beach'),
('AYYxAgu', 'dS2008', '2009-02-20', '14:00', 'Eiffel Tower'),
('5cUCLQz', 'dS2008', '2009-02-21', '20:00', 'Rose Nature Park'),
('ZDm8L5L', 'dS2008', '2009-02-28', '20:00', 'San Diego Zoo');

INSERT INTO `COMMENT` 
VALUES
('wbv1eA', '2020-04-10', 'This place was so much fun!', '13:30', 6.0, 'test@2024', 'Dallas Outlet Mall', '(+1) 903-703-0506'),
('cbzQqL', '2023-09-04', 'Best experience I have ever had!', '14:45', 8.0, 'test@2023', 'San Diego Zoo', '(+1) 526-112-7423'),
('bTIvrG', '2024-01-01', 'One can never get enough cheescake!', '17:00', 7.0, 'test@2022', 'Cheesecake Factory', '(+1) 325-999-8800'),
('HEejil', '2021-12-06', 'I love eating here whenever I can!', '15:00', 8.5, 'test@2021', 'FD Grill', '(+1) 777-333-0012'),
('fYN77J', '2022-02-01', 'I could live here forever!', '18:00', 6.9, 'test@2020', 'Golden Coral', '(+1) 321-236-5562'),
('KghU78', '2018-12-12', 'The Eiffel Tower was magnificent!', '15:00', 5.3, 'test@2020', 'Eiffel Tower', '(+33) 101-752-4102'),
('ZzV546', '2019-01-05', 'Normandy, France is such a cool place!', '12:00', 8.4, 'test@2021', 'British Channel Beach', '(+33) 702-333-7733'),
('78hfJU', '2019-01-20', 'I had the best time at the museum!', '22:00', 4.4, 'test@2022', 'French Architectural Museum', '(+33) 210-355-9112'),
('6Fgh47', '2019-01-01', 'Nothing beats the coissants here!', '17:00', 6.9, 'test@2024', 'Bread Palace', '(+33) 971-444-6686'),
('g8R6Y1', '2018-12-19', 'I have never seen so many roses all in one place!', '19:00', 9.8, 'test@2023', 'Rose Nature Park', '(+33) 650-700-4113');

INSERT INTO BUSINESS_OWNER 
VALUES
('Buzz Lightyear Inc.', '(+1) 755-105-5411', 'Susan Cooper', 'Real Estate'),
('Money Corp.', '(+1) 911-112-4444', 'Andy Anderson', 'Stock Brokerage'),
('Pitbull LLC', '(+1) 111-107-8877', 'Jason Bourne', 'Investment Banking'),
('Tactical LLC', '(+1) 333-222-7777', 'Sandy Cheeks', 'Contruction'),
('Delta Inc.', '(+1) 666-555-1324', 'Tony Stark', 'Luxury Furniture');

INSERT INTO IMAGE 
VALUES
('FIUB1242', 'www.sjhf13902-03.com', 'test@2024'),
('idfbo-42%', 'www.JX17q1k9lV.com', 'test@2023'),
('Jf2nn0IGua', 'www.OYMNItJtfJ.com', 'test@2022'),
('Ve06dGazFM', 'www.RWsUP8NrrN.com', 'test@2021'),
('y3Qj0CHp6L', 'www.6yNy4xMtBR.com', 'test@2020');

INSERT INTO TRAVELS_TO
VALUES 
-- (USERNAME, `NAME`, PHONE_NUMBER)
('test@2020', 'FD Grill', '(+1) 777-333-0012'),
('test@2020', 'Cheesecake Factory', '(+1) 325-999-8800'),
('test@2020', 'San Diego Zoo', '(+1) 526-112-7423'),
('test@2021', 'Dallas Outlet Mall', '(+1) 903-703-0506'),
('test@2021', 'Golden Coral', '(+1) 321-236-5562'),
('test@2021', 'Walt Disney World', '(+1) 865-858-9416'),
('test@2022', 'Houston Outlet Mall', '(+1) 832-438-8745'),
('test@2022', 'Miami Beach', '(+1) 666-215-7456'),
('test@2022', 'NYC Outlet Mall', '(+1) 178-987-0897'),
('test@2023', 'San Diego Zoo', '(+1) 526-112-7423'),
('test@2023', 'Cheesecake Factory', '(+1) 325-999-8800'),
('test@2023', 'FD Grill', '(+1) 777-333-0012'),
('test@2024', 'Dallas Outlet Mall', '(+1) 903-703-0506'),
('test@2024', 'Houston Outlet Mall', '(+1) 832-438-8745'),
('test@2024', 'NYC Outlet Mall', '(+1) 178-987-0897');

INSERT INTO RATES_ATTRACTION_MEMBER
VALUES
-- (USERNAME, `NAME`, PHONE_NUMBER)
('test@2020', 'FD Grill', '(+1) 777-333-0012'),
('test@2020', 'Cheesecake Factory', '(+1) 325-999-8800'),
('test@2020', 'San Diego Zoo', '(+1) 526-112-7423'),
('test@2021', 'Dallas Outlet Mall', '(+1) 903-703-0506'),
('test@2021', 'Golden Coral', '(+1) 321-236-5562'),
('test@2021', 'Walt Disney World', '(+1) 865-858-9416'),
('test@2022', 'Houston Outlet Mall', '(+1) 832-438-8745'),
('test@2022', 'Miami Beach', '(+1) 666-215-7456'),
('test@2022', 'NYC Outlet Mall', '(+1) 178-987-0897'),
('test@2023', 'San Diego Zoo', '(+1) 526-112-7423'),
('test@2023', 'Cheesecake Factory', '(+1) 325-999-8800'),
('test@2023', 'FD Grill', '(+1) 777-333-0012'),
('test@2024', 'Dallas Outlet Mall', '(+1) 903-703-0506'),
('test@2024', 'Houston Outlet Mall', '(+1) 832-438-8745'),
('test@2024', 'NYC Outlet Mall', '(+1) 178-987-0897');

INSERT INTO DISLIKES
VALUES
-- (USERNAME, COMMENTID)
('test@2020', 'bTIvrG'),
('test@2020','fYN77J'),
('test@2020','HEejil'),
('test@2021','cbzQqL'),
('test@2021','fYN77J'),
('test@2021','HEejil'),
('test@2022','bTIvrG'),
('test@2022','fYN77J'),
('test@2022','HEejil'),
('test@2023','cbzQqL'),
('test@2023','fYN77J'),
('test@2023','wbv1eA'),
('test@2024','bTIvrG'),
('test@2024','fYN77J'),
('test@2024', 'wbv1eA');

INSERT INTO LIKES
VALUES 
-- (USERNAME, COMMENTID)
('test@2020', 'wbv1eA'),
('test@2020','cbzQqL'),
('test@2021','wbv1eA'),
('test@2021','bTIvrG'),
('test@2022','cbzQqL'),
('test@2022','wbv1eA'),
('test@2023','bTIvrG'),
('test@2023','HEejil'),
('test@2024','cbzQqL'),
('test@2024','HEejil');

INSERT INTO REPLIES
VALUES
-- (USERNAME, COMMENTID, CONTENT)
('test@2020', 'wbv1eA', 'I always spend way more than I need to here.'),
('test@2020','cbzQqL', 'My kid loves the snakes!'),
('test@2021','wbv1eA', 'It is always so clean despite so many consumers.'),
('test@2021','bTIvrG', 'I was just there last night!'),
('test@2022','cbzQqL', 'The lions are so cool.'),
('test@2022','wbv1eA', 'The food court has good options too.'),
('test@2023','bTIvrG', 'The plain cheesecake is delicious. What did you have?'),
('test@2023','HEejil', 'I always have great service there.'),
('test@2024','cbzQqL', 'I heard they are adding more reptiles.'),
('test@2024','HEejil', 'Their food is top notch!');

INSERT INTO ASSOCIATED_MEMBERS
VALUES
('ldNFLSW', 'dNZRdi', 'Matt'),
('dDgNRKU', 'DyCYYo', 'DJ'),
('S9x40jq', 'DyCYYo', 'Kayden'),
('tIl8oLI', 'DyCYYo', 'Andrew'),
('ltAvZuz', 'DyCYYo', 'Jose'),
('OzIyXt9', 'FuqEy0', 'Antonio'),
('A8pG04H', 'FuqEy0', 'Stacey'),
('EQn597L', 'a75RbH', 'Clayton'),
('2utk4Rp', 'a75RbH', 'Blake'),
('fi0V7Jl', 'a75RbH', 'Casey'),
('QjEJ69o', 'MpSlCq', 'Easton'),
('8jKh0kf', 'a75RbH', 'Ava');

INSERT INTO SIGHT
VALUES
('Walt Disney World', '(+1) 865-858-9416', 300.00, 'www.disneyworldlegit.com'),
('San Diego Zoo', '(+1) 526-112-7423', 75.00, 'www.sandiegozoo.com'),
('Miami Beach', '(+1) 666-215-7456', 15.00, 'www.miamibeach.com'),
('French Architectural Museum', '(+33) 210-355-9112', 25.00, 'www.frenchmuseum.fr'),
('Rose Nature Park', '(+33) 650-700-4113', 0.00, 'www.rosepark.fr'),
('British Channel Beach', '(+33) 702-333-7733', 0.00, 'www.bcb.fr'),
('Eiffel Tower', '(+33) 101-752-4102', 15.00, 'www.eiffel.fr');

INSERT INTO RESTAURANT
VALUES
('Cheesecake Factory', '(+1) 325-999-8800', 'Dine-In', 'www.cheesecake.com', 5.00, 100.00, 'Buzz Lightyear Inc.'),
('Golden Coral', '(+1) 321-236-5562', 'Chinese Buffet', 'www.goldencoral.com', 10.00, 25.00, 'Money Corp.'),
('FD Grill', '(+1) 777-333-0012', 'Grillhouse', 'www.fdgrill.com', 15.00, 120.00, 'Money Corp.'),
('Pattys Pizza', '(+1) 412-111-4400', 'Pizza House', 'www.deliciouspizza.com', 10.00, 65.00, 'Money Corp.'),
('Bread Palace', '(+33) 971-444-6686', 'Bread Cafe', 'www.breadpalace.fr', 5.00, 40.00, 'Money Corp.');

INSERT INTO SHOPPING_MALL
VALUES
('NYC Outlet Mall', '(+1) 178-987-0897', 'Pitbull LLC'),
('Houston Outlet Mall', '(+1) 832-438-8745', 'Tactical LLC'),
('Dallas Outlet Mall', '(+1) 903-703-0506', 'Delta Inc.');

INSERT INTO EDITS
VALUES
('test@2024', 'Cheesecake Factory', '(+1) 325-999-8800', 'hH9LvVG25X', '2022-05-23'),
('test@2024', 'Golden Coral', '(+1) 321-236-5562', 'E18Ava60aM', '2022-05-25'),
('test@2023', 'Golden Coral', '(+1) 321-236-5562', 'VoNTvAmykh', '2024-01-14'),
('test@2023', 'FD Grill', '(+1) 777-333-0012', '8gpO5JxcRo', '2023-02-01'),
('test@2023', 'Dallas Outlet Mall', '(+1) 903-703-0506', 'FgoXAs47k4', '2020-09-04'),
('test@2022', 'Dallas Outlet Mall', '(+1) 903-703-0506', '95aWDfZatS', '2021-12-25'),
('test@2022', 'Houston Outlet Mall', '(+1) 832-438-8745', 'wehZoUU2xV', '2021-12-25'),
('test@2021', 'Miami Beach', '(+1) 666-215-7456', 'Bpif7cDWg4', '2020-11-17');

INSERT INTO ASSOCIATED_STORES
VALUES
('Buzz Lightyear Inc.', 'Ming Cafe'),
('Money Corp.', 'In-N-Out, Burger King'),
('Pitbull LLC', 'Wendys, Taco Bell'),
('Tactical LLC', 'Food Court'),
('Delta Inc.', 'Shake Shack');

INSERT INTO `CONTAINS`
VALUES
('dNZRdi', 'Walt Disney World', '(+1) 865-858-9416'),
('DyCYYo', 'San Diego Zoo', '(+1) 526-112-7423'),
('FuqEy0', 'Miami Beach', '(+1) 666-215-7456'),
('a75RbH', 'Cheesecake Factory', '(+1) 325-999-8800'),
('MpSlCq', 'FD Grill', '(+1) 777-333-0012'),
('eosp7f', 'Eiffel Tower', '(+33) 101-752-4102'),
('5TRO8O', 'British Channel Beach', '(+33) 702-333-7733'),
('MgEzcq', 'French Architectural Museum', '(+33) 210-355-9112'),
('COAlD3', 'Bread Palace', '(+33) 971-444-6686'),
('5ryjxY', 'Rose Nature Park', '(+33) 650-700-4113');

INSERT INTO RATES_PLAN_MEMBER
VALUES
('dNZRdi', 'test@2024', 4.5),
('DyCYYo', 'test@2024', 3.4),
('FuqEy0', 'test@2024', 8.5),
('FuqEy0', 'test@2023', 6.7),
('a75RbH', 'test@2023', 9.9),
('MpSlCq', 'test@2023', 10.0),
('MpSlCq', 'test@2022', 8.8),
('dNZRdi', 'test@2022', 7.9),
('DyCYYo', 'test@2022', 8.3),
('DyCYYo', 'test@2021', 1.0),
('FuqEy0', 'test@2021', 0.5),
('a75RbH', 'test@2021', 5.5),
('a75RbH', 'test@2020', 4.2),
('MpSlCq', 'test@2020', 2.9),
('DyCYYo', 'test@2020', 9.5);