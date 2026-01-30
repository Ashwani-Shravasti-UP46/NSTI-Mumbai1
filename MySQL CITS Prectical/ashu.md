```sql
CREATE TABLE ASHU (
    AD_NO INT AUTO_INCREMENT PRIMARY KEY,
    SNAME VARCHAR(30) NOT NULL,
    SEX CHAR(1) NOT NULL,
    ADDRESS VARCHAR(100),
    MO_NO VARCHAR(15),
    EMAIL_ID VARCHAR(100),
    GP_NAME VARCHAR(50) NOT NULL,
    QUAL_PERCEN INT NOT NULL
);
INSERT INTO ASHU
(SNAME, SEX, ADDRESS, MO_NO, EMAIL_ID, GP_NAME, QUAL_PERCEN)
VALUES
('PARAG', 'M', 'Nagpur, Maharashtra', '9387533494', 'parag@gmail.com', 'CSA', 87),
('Ashwani Bouddh', 'M', 'Moradabad, Uttar Pradesh', '9172117550', 'ashwani.bouddh@yahoo.com', 'CSA', 95),
('Bablesh Kumar', 'M', 'Agra, Uttar Pradesh', '9774428714', 'bablesh.kumar@yahoo.com', 'ECE', 66),
('Gulshan Bouddh', 'M', 'Kanpur, Uttar Pradesh', '9333204190', 'gulshan.bouddh38@hotmail.com', 'Civil', 64),
('Sandeep Pal', 'M', 'Lucknow, Uttar Pradesh', '9679883481', 'sandeep.pal@hotmail.com', 'IT', 70),
('Anil Kumar', 'M', 'Bareilly, Uttar Pradesh', '9713965687', 'anil.kumar@hotmail.com', 'BCA', 77),
('Ravi Karan', 'M', 'Kanpur, Uttar Pradesh', '9298363942', 'ravi.karan32@hotmail.com', 'BCA', 85),
('Nitin Thakur', 'M', 'Meerut, Uttar Pradesh', '9295001674', 'nitin.thakur.official@outlook.com', 'BBA', 93),
('Sadananad Sharma', 'M', 'Prayagraj, Uttar Pradesh', '9980765261', 'sadananad.sharma@outlook.com', 'CSA', 76),
('Sanjeev Maurya', 'M', 'Bareilly, Uttar Pradesh', '9751685131', 'sanjeev.maurya@hotmail.com', 'BBA', 61),
('Vashudev Kumar', 'M', 'Kanpur, Uttar Pradesh', '9988308904', 'vashudev.kumar9@yahoo.com', 'Mechanical', 90),
('Chetan', 'M', 'Bareilly, Uttar Pradesh', '9156997673', 'chetan86@hotmail.com', 'BBA', 93),
('Arpit Kumar', 'M', 'Noida, Uttar Pradesh', '9123522062', 'arpit.kumar.official@gmail.com', 'Civil', 77),
('Pavan Gupta', 'M', 'Moradabad, Uttar Pradesh', '9457852440', 'pavan.gupta.official@hotmail.com', 'BCA', 86),
('Parveen Kumar', 'M', 'Noida, Uttar Pradesh', '9806607811', 'parveen.kumar.official@yahoo.com', 'BCA', 71),
('Vishal', 'M', 'Prayagraj, Uttar Pradesh', '9480880650', 'vishal@yahoo.com', 'BCA', 91),
('Anshu Singh', 'M', 'Noida, Uttar Pradesh', '9240392744', 'anshu.singh94@outlook.com', 'Mechanical', 72),
('Shivam Singh', 'M', 'Prayagraj, Uttar Pradesh', '9207030495', 'shivam.singh8@gmail.com', 'Mechanical', 64),
('Khushi Mishra', 'F', 'Aligarh, Uttar Pradesh', '9084955006', 'khushi.mishra73@hotmail.com', 'Electrical', 73),
('Chandani', 'F', 'Moradabad, Uttar Pradesh', '9723623704', 'chandani@gmail.com', 'Civil', 92),
('Preeti Pal', 'F', 'Prayagraj, Uttar Pradesh', '9130224539', 'preeti.pal84@gmail.com', 'Electrical', 66),
('Sanno Pal', 'F', 'Mathura, Uttar Pradesh', '9111526726', 'sanno.pal34@outlook.com', 'Electrical', 63),
('Damararam', 'M', 'Jodhpur, Rajasthan', '9412345678', 'damararam.jodhpur@gmail.com', 'CSA', 82),
('Divya Bohara', 'F', 'Jaipur, Rajasthan', '9823456789', 'divya.bohara92@yahoo.com', 'IT', 88),
('Ravina Bohara', 'F', 'Udaipur, Rajasthan', '9645678901', 'ravina.bohara@hotmail.com', 'BCA', 75),
('Diksha', 'F', 'Ajmer, Rajasthan', '9789012345', 'diksha.ajmer@outlook.com', 'Electrical', 91),
('Ram', 'M', 'Bikaner, Rajasthan', '8567890123', 'ram.bikaner45@gmail.com', 'Mechanical', 68),
('Rahul Katara', 'M', 'Kota, Rajasthan', '9678901234', 'rahul.katara.kota@yahoo.com', 'Civil', 79),
('Parem Sunil', 'M', 'Pune, Maharashtra', '9876543210', 'parem.sunil.pune@gmail.com', 'IT', 84),
('Kushor Kumar', 'M', 'Mumbai, Maharashtra', '8765432109', 'kushor.kumar.mum@yahoo.com', 'CSA', 78),
('Krishna Maruti', 'M', 'Nagpur, Maharashtra', '7654321098', 'krishna.maruti.ngp@hotmail.com', 'Mechanical', 81),
('Dipali', 'F', 'Nashik, Maharashtra', '6543210987', 'dipali.nashik@outlook.com', 'BCA', 89),
('Arti', 'F', 'Aurangabad, Maharashtra', '5432109876', 'arti.aurangabad@gmail.com', 'Electrical', 74),
('Priyanshi', 'F', 'Thane, Maharashtra', '4321098765', 'priyanshi.thane@yahoo.com', 'IT', 92),
('Mahadev', 'M', 'Kolhapur, Maharashtra', '3210987654', 'mahadev.kolhapur@hotmail.com', 'Civil', 67),
('Manjeet Kumar', 'M', 'Gurugram, Haryana', '9812345670', 'manjeet.kumar.ggn@gmail.com', 'BBA', 79),
('Ankit', 'M', 'Faridabad, Haryana', '8912345670', 'ankit.fbd@yahoo.com', 'CSA', 85);


-- ********************************************************************************************************************************
-- ********************************************************************************************************************************
mysql> select * from ashu;
+-------+------------------+-----+--------------------------+------------+-----------------------------------+------------+-------------+
| AD_NO | SNAME            | SEX | ADDRESS                  | MO_NO      | EMAIL_ID                          | GP_NAME    | QUAL_PERCEN |
+-------+------------------+-----+--------------------------+------------+-----------------------------------+------------+-------------+
|     1 | PARAG            | M   | Nagpur, Maharashtra      | 9387533494 | parag@gmail.com                   | CSA        |          87 |
|     2 | Ashwani Bouddh   | M   | Moradabad, Uttar Pradesh | 9172117550 | ashwani.bouddh@yahoo.com          | CSA        |          95 |
|     3 | Bablesh Kumar    | M   | Agra, Uttar Pradesh      | 9774428714 | bablesh.kumar@yahoo.com           | ECE        |          66 |
|     4 | Gulshan Bouddh   | M   | Kanpur, Uttar Pradesh    | 9333204190 | gulshan.bouddh38@hotmail.com      | Civil      |          64 |
|     5 | Sandeep Pal      | M   | Lucknow, Uttar Pradesh   | 9679883481 | sandeep.pal@hotmail.com           | IT         |          70 |
|     6 | Anil Kumar       | M   | Bareilly, Uttar Pradesh  | 9713965687 | anil.kumar@hotmail.com            | BCA        |          77 |
|     7 | Ravi Karan       | M   | Kanpur, Uttar Pradesh    | 9298363942 | ravi.karan32@hotmail.com          | BCA        |          85 |
|     8 | Nitin Thakur     | M   | Meerut, Uttar Pradesh    | 9295001674 | nitin.thakur.official@outlook.com | BBA        |          93 |
|     9 | Sadananad Sharma | M   | Prayagraj, Uttar Pradesh | 9980765261 | sadananad.sharma@outlook.com      | CSA        |          76 |
|    10 | Sanjeev Maurya   | M   | Bareilly, Uttar Pradesh  | 9751685131 | sanjeev.maurya@hotmail.com        | BBA        |          61 |
|    11 | Vashudev Kumar   | M   | Kanpur, Uttar Pradesh    | 9988308904 | vashudev.kumar9@yahoo.com         | Mechanical |          90 |
|    12 | Chetan           | M   | Bareilly, Uttar Pradesh  | 9156997673 | chetan86@hotmail.com              | BBA        |          93 |
|    13 | Arpit Kumar      | M   | Noida, Uttar Pradesh     | 9123522062 | arpit.kumar.official@gmail.com    | Civil      |          77 |
|    14 | Pavan Gupta      | M   | Moradabad, Uttar Pradesh | 9457852440 | pavan.gupta.official@hotmail.com  | BCA        |          86 |
|    15 | Parveen Kumar    | M   | Noida, Uttar Pradesh     | 9806607811 | parveen.kumar.official@yahoo.com  | BCA        |          71 |
|    16 | Vishal           | M   | Prayagraj, Uttar Pradesh | 9480880650 | vishal@yahoo.com                  | BCA        |          91 |
|    17 | Anshu Singh      | M   | Noida, Uttar Pradesh     | 9240392744 | anshu.singh94@outlook.com         | Mechanical |          72 |
|    18 | Shivam Singh     | M   | Prayagraj, Uttar Pradesh | 9207030495 | shivam.singh8@gmail.com           | Mechanical |          64 |
|    19 | Khushi Mishra    | F   | Aligarh, Uttar Pradesh   | 9084955006 | khushi.mishra73@hotmail.com       | Electrical |          73 |
|    20 | Chandani         | F   | Moradabad, Uttar Pradesh | 9723623704 | chandani@gmail.com                | Civil      |          92 |
|    21 | Preeti Pal       | F   | Prayagraj, Uttar Pradesh | 9130224539 | preeti.pal84@gmail.com            | Electrical |          66 |
|    22 | Sanno Pal        | F   | Mathura, Uttar Pradesh   | 9111526726 | sanno.pal34@outlook.com           | Electrical |          63 |
|    23 | Damararam        | M   | Jodhpur, Rajasthan       | 9412345678 | damararam.jodhpur@gmail.com       | CSA        |          82 |
|    24 | Divya Bohara     | F   | Jaipur, Rajasthan        | 9823456789 | divya.bohara92@yahoo.com          | IT         |          88 |
|    25 | Ravina Bohara    | F   | Udaipur, Rajasthan       | 9645678901 | ravina.bohara@hotmail.com         | BCA        |          75 |
|    26 | Diksha           | F   | Ajmer, Rajasthan         | 9789012345 | diksha.ajmer@outlook.com          | Electrical |          91 |
|    27 | Ram              | M   | Bikaner, Rajasthan       | 8567890123 | ram.bikaner45@gmail.com           | Mechanical |          68 |
|    28 | Rahul Katara     | M   | Kota, Rajasthan          | 9678901234 | rahul.katara.kota@yahoo.com       | Civil      |          79 |
|    29 | Parem Sunil      | M   | Pune, Maharashtra        | 9876543210 | parem.sunil.pune@gmail.com        | IT         |          84 |
|    30 | Kushor Kumar     | M   | Mumbai, Maharashtra      | 8765432109 | kushor.kumar.mum@yahoo.com        | CSA        |          78 |
|    31 | Krishna Maruti   | M   | Nagpur, Maharashtra      | 7654321098 | krishna.maruti.ngp@hotmail.com    | Mechanical |          81 |
|    32 | Dipali           | F   | Nashik, Maharashtra      | 6543210987 | dipali.nashik@outlook.com         | BCA        |          89 |
|    33 | Arti             | F   | Aurangabad, Maharashtra  | 5432109876 | arti.aurangabad@gmail.com         | Electrical |          74 |
|    34 | Priyanshi        | F   | Thane, Maharashtra       | 4321098765 | priyanshi.thane@yahoo.com         | IT         |          92 |
|    35 | Mahadev          | M   | Kolhapur, Maharashtra    | 3210987654 | mahadev.kolhapur@hotmail.com      | Civil      |          67 |
|    36 | Manjeet Kumar    | M   | Gurugram, Haryana        | 9812345670 | manjeet.kumar.ggn@gmail.com       | BBA        |          79 |
|    37 | Ankit            | M   | Faridabad, Haryana       | 8912345670 | ankit.fbd@yahoo.com               | CSA        |          85 |
+-------+------------------+-----+--------------------------+------------+-----------------------------------+------------+-------------+
37 rows in set (0.00 sec)

mysql>





