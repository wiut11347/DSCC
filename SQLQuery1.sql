-- Create the BikeCategory table
CREATE TABLE BikeCategory
(
    ID INT PRIMARY KEY,
    Name NVARCHAR(255),
    Electric BIT
);

-- Create the Bike table with a foreign key relationship to BikeCategory
CREATE TABLE Bike
(
    ID INT PRIMARY KEY,
    Name NVARCHAR(255),
    Description NVARCHAR(MAX),
    ImagePath NVARCHAR(MAX),
    Price DECIMAL(10, 2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES BikeCategory(ID)
);

-- Insert sample data into the BikeCategory table
INSERT INTO BikeCategory (ID, Name, Electric)
VALUES
    (1, 'Mountain Bikes', 0),
    (2, 'Road Bikes', 0),
    (3, 'Electric Bikes', 1);

-- Insert sample data into the Bike table
INSERT INTO Bike (ID, Name, Description, ImagePath, Price, CategoryID)
VALUES
    (1, 'Giant Fathom 29 2', 'Giant Fathom 29; Kona Kahuna; Scott Aspect. Specialized Epic Hardtail. Geometry. Blister Brand Guide: 2021 Specialized Mountain Bike Lineup.', 'https://p.vitalmtb.com/photos/products/31551/photos/66871/s1600_photo_253200.jpg?VersionId=TwskaKf.QDBcPFSq.rCP56Y3D_xv4_5m', 599.99, 1),
    (2, 'Cannondale', 'Cannondale offers a range of mountain bikes, from hardtails to full suspension rigs, all designed to offer a comfortable and efficient ride', 'https://images.immediate.co.uk/production/volatile/sites/21/2022/08/Cannondale-Synapse-Carbon-4-01-8bbb350.jpg?quality=90&resize=620,413', 699.99, 1),
    (3, 'Domane', 'Domane is an “all-road” endurance bike that's ready to roll on anything from smooth pavement to rough country roads and light gravel', 'https://images.immediate.co.uk/production/volatile/sites/21/2022/09/Trek-Domane-SLR-7-06-8990f30.jpeg?quality=90&resize=620,413', 799.99, 2),
    (4, 'Emonda', 'Émonda is stiff, responsive, and shockingly lightweight, with an explosive ride quality that favors riders who like snappy handling and classic road bike', 'https://media.trekbikes.com/image/upload/f_auto,fl_progressive:semi,q_auto,w_800,h_600,c_pad/EmondaSL7_22_35046_A_Portrait', 899.99, 2),
    (5, 'Aventon Level.2', 'Level.2 comes equipped with preinstalled fenders and a rear rack, making it versatile for work or play. A torque sensor provides a natural riding experience, letting you choose between electric assistance or pedal power', 'https://electrek.co/wp-content/uploads/sites/3/2022/09/aventon-level-2-review-2.jpg?quality=82&strip=all', 1299.99, 3);