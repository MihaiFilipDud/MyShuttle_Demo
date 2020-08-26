
--
DROP TABLE IF EXISTS fares ;
DROP TABLE IF EXISTS employees ;


CREATE TABLE employees (
  [id] int NOT NULL IDENTITY,
  [username] varchar(20) DEFAULT NULL,
  [password] varchar(20) DEFAULT NULL,
  PRIMARY KEY ([id])
)  ;
CREATE TABLE fares (
  [id] int NOT NULL IDENTITY,
  [emp_id] int DEFAULT NULL,
  [pickup] varchar(50) DEFAULT NULL ,
  [dropoff] varchar(50) DEFAULT NULL ,
  [start] datetime2(0) DEFAULT NULL,
  [end] datetime2(0) DEFAULT NULL,
  [fare_charge] int DEFAULT NULL ,
  [driver_fee] int DEFAULT NULL ,
  [passenger_rating] smallint check ([passenger_rating] > 0) DEFAULT NULL ,
  [driver_rating] smallint check ([driver_rating] > 0) DEFAULT NULL ,
  PRIMARY KEY ([id])
 ,
  CONSTRAINT [fares_ibfk_1] FOREIGN KEY ([emp_id]) REFERENCES employees ([id])
)  ;



--
-- Eliminarea datelor din tabel "employees"
--

SET IDENTITY_INSERT "employees" ON ;
INSERT INTO "employees" ("id", "username", "password") VALUES
(5, 'fred', 'fredpassword'),
(6, 'barney', 'barneypassword'),
(7, 'wilma', 'wilmapassword'),
(8, 'betty', 'bettypassword');

SET IDENTITY_INSERT "employees" OFF;

-- --------------------------------------------------------

--
-- Structur? tabel pentru tabel "fares"
--




--
-- Eliminarea datelor din tabel "fares"
--

SET IDENTITY_INSERT "fares" ON ;
INSERT INTO "fares" ("id", "emp_id", "pickup", "dropoff", "start", "end", "fare_charge", "driver_fee", "passenger_rating", "driver_rating") VALUES
(11, 8, '87 Wooly Way, Topsoil, WA', '55 Mammoth Way, Bedrock, WA', '2014-06-19 16:13:00', '2014-06-19 16:34:00', 1527, 1145, 3, 4),
(12, 8, '18 Wooly Way, Bedrock, WA', '73 Mammoth Way, Limestone, WA', '2015-01-20 17:00:00', '2015-01-20 17:02:00', 743, 557, 2, 3),
(13, 8, '42 Mammoth Way, Rock Gardens, WA', '71 Hunting Lane, Bedrock, WA', '2015-04-28 00:20:00', '2015-04-28 00:40:00', 1682, 1261, 5, 2),
(14, 7, '25 Hunting Lane, Topsoil, WA', '4 Mammoth Way, Limestone, WA', '2014-08-26 04:32:00', '2014-08-26 04:38:00', 900, 675, 1, 2),
(15, 7, '1 Wooly Way, Rock Gardens, WA', '19 Wooly Way, Rock Gardens, WA', '2014-11-05 22:58:00', '2014-11-05 23:02:00', 718, 538, 2, 1),
(16, 7, '36 Hard Rock Pl, Rock Gardens, WA', '38 Shale St, Limestone, WA', '2014-05-20 07:04:00', '2014-05-20 07:26:00', 567, 425, 4, 2),
(17, 5, '37 Hunting Lane, Rock Gardens, WA', '83 Brontosaurus Blvd, Topsoil, WA', '2014-04-08 16:00:00', '2014-04-08 16:24:00', 2878, 2158, 1, 5),
(18, 5, '84 Mammoth Way, Bedrock, WA', '40 Stegasaurus St, Limestone, WA', '2014-05-06 01:18:00', '2014-05-06 01:29:00', 1910, 1432, 5, 1),
(19, 6, '97 Stegasaurus St, Bedrock, WA', '93 Shale St, Bedrock, WA', '2014-12-13 10:43:00', '2014-12-13 11:20:00', 1869, 1401, 3, 2),
(20, 6, '43 Brontosaurus Blvd, Bedrock, WA', '51 Stegasaurus St, Rock Gardens, WA', '2014-05-17 10:41:00', '2014-05-17 10:53:00', 1460, 1095, 3, 2);

SET IDENTITY_INSERT "fares" OFF;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;