-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2011 at 02:50 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dealspug`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` int(5) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(200) NOT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `website_url` varchar(200) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` VALUES(1, 'School for Self-Healing', '2218 48th Ave.', '', 'San Francisco', 'California', '94116', 'http://www.self-healing.org/', '37.7449553', '-122.5068749');
INSERT INTO `business` VALUES(2, 'Vallejo Airporter', '777 Bridgeway', '', 'Sausalito', 'California', '94965', 'http://vallejoairporter.com/', '37.856898', '-122.48045');
INSERT INTO `business` VALUES(3, 'Zingari Ristorante', '501 Post St.', '', 'San Francisco', 'California', '94102', 'http://zingari.com', '37.787825', '-122.410371');
INSERT INTO `business` VALUES(4, 'Daland Body Shop', '890 El Camino Real', '', 'South San Francisco', 'California', '94080', 'http://gr.pn/qLroRz', '37.653041', '-122.431899');
INSERT INTO `business` VALUES(5, 'Goodman Building Supply', '775 Redwood Hwy.', '', 'Mill Valley', 'California', '94941', 'http://www.goodmanbuildingsupply.net/', '37.8996233', '-122.5161313');
INSERT INTO `business` VALUES(6, 'LuminaSkin', '100 S Ellsworth Ave.', 'Suite 806', 'San Mateo', 'California', '94401', 'http://www.luminaskin.com', '37.5665982', '-122.3247244');
INSERT INTO `business` VALUES(7, 'Tamalpais CrossFit', '555 Francisco Blvd. E', 'Suite 19', 'San Rafael', 'California', '94901', 'http://www.tamcrossfit.com', '37.9657713', '-122.5151497');
INSERT INTO `business` VALUES(8, 'West Sonoma Inn & Spa', '14100 Brookside Ln.', '', 'Guerneville', 'California', '95446', 'http://www.westsonomainn.com/', '38.5031433', '-123.001457');
INSERT INTO `business` VALUES(9, 'U Threads', '5614 Bay St.', 'Suite 210', 'Emeryville', 'California', '94608', 'http://www.uthreads.com/stanford/', '37.833392', '-122.291998');
INSERT INTO `business` VALUES(10, 'U Threads', '48 Broadway Ln.', '', 'Walnut Creek', 'California', '94596', 'http://www.uthreads.com/stanford/', '37.8946156', '-122.0583725');
INSERT INTO `business` VALUES(11, 'U Threads', '855 El Camino Real', '', 'Palo Alto', 'California', '94301', 'http://www.uthreads.com/stanford/', '37.4385965', '-122.161406');
INSERT INTO `business` VALUES(12, '2GORJIS Integrated Health & Wellness ', '2065 Ygnacio Valley Rd.', '', 'Walnut Creek', 'California', '94598', 'http://www.massagesites.net/2gorj/?CFID=54792200&CFTOKEN=3d790d794e43919e-C49FB1A3-CE64-A2E0-F9D1068A1B7501D5&jsessionid=5c306ff2fa91c', '37.9207815', '-122.034218');
INSERT INTO `business` VALUES(13, 'Cosmic Dog Yoga', '1923 2nd St.', '', 'Livermore', 'California', '94550', 'http://www.cosmicdogyoga.com', '37.6798802', '-121.7717831');
INSERT INTO `business` VALUES(14, 'B.ay A.rea D.erby Girls', '550 10th St.', '', 'Oakland', 'California', '94607', 'http://www.bayareaderbygirls.com/', '37.8025348', '-122.2753728');
INSERT INTO `business` VALUES(15, 'Alameda Athletic Club', '1226 Park St.', '', 'Alameda', 'California', '94501', 'http://www.alamedaathleticclub.com', '37.7617232', '-122.2447885');
INSERT INTO `business` VALUES(16, 'Needle to the Groove Record Shop', '150 H St.', '', 'Fremont', 'California', '94536', 'http://www.needletothegrooverecords.com/', '37.5765375', '-121.979499');
INSERT INTO `business` VALUES(17, 'Needle to the Groove Record Shop', '3780 Peralta Blvd.', '', 'Fremont', 'California', '94536', 'http://www.needletothegrooverecords.com/', '37.558779', '-122.005391');
INSERT INTO `business` VALUES(18, 'Sedusa Studios', '1300 Dell Ave.', '', 'Campbell', 'California', '95008', 'http://www.sedusastudios.com/index.php', '37.267573', '-121.953153');
INSERT INTO `business` VALUES(19, 'Sedusa Studios', '1255 S Main St.', '', 'Walnut Creek ', 'California', '94596', 'http://www.sedusastudios.com/index.php', '37.8954172', '-122.0596962');
INSERT INTO `business` VALUES(20, 'Palms Place', '4381 W Flamingo Rd.', '', 'Las Vegas', 'Nevada', '89103', 'http://www.palms.com/las-vegas-palms-place/', '36.1142139', '-115.198809');
INSERT INTO `business` VALUES(21, 'Home of Chicken and Waffles', '444 Embarcadero W', '', 'Oakland', 'California', '94607', 'http://homeofchickenandwaffles.com/', '37.795339', '-122.276007');
INSERT INTO `business` VALUES(22, 'Home of Chicken and Waffles', '1635 Mt. Diablo Blvd.', '', 'Walnut Creek', 'California', '94596', 'http://homeofchickenandwaffles.com/', '37.8972692', '-122.0620107');
INSERT INTO `business` VALUES(23, 'Oil Can Henry''s', '300 7th St.', '', 'San Francisco', 'California', '94103', 'http://www.oilcanhenrys.com', '37.776286', '-122.408128');
INSERT INTO `business` VALUES(24, 'The Body Doctors', '369 Pine St.', 'Suite 103', 'San Francisco', 'California', '94104', 'http://www.sf-chiro.com/', '37.79195', '-122.402037');
INSERT INTO `business` VALUES(25, 'TechShop', '120 Independence Dr.', '', 'Menlo Park', 'California', '94025', 'http://www.techshop.ws/', '37.483185', '-122.178054');
INSERT INTO `business` VALUES(26, 'TechShop', '926 Howard St.', '', 'San Francisco', 'California', '94103', 'http://www.techshop.ws/', '37.781184', '-122.405923');
INSERT INTO `business` VALUES(27, 'TechShop', '300 S 2nd St.', '', 'San Jose', 'California', '95113', 'http://www.techshop.ws/', '37.3319632', '-121.8859552');
INSERT INTO `business` VALUES(28, 'Proof Lab', '254 Shoreline Hwy.', '', 'Mill Valley', 'California', '94941', 'http://prooflab.com/', '37.881979', '-122.524426');
INSERT INTO `business` VALUES(29, 'Corrective BodyworX', '1925 S Winchester Blvd.', 'Suite 206', 'Campbell', 'California', '95008', 'http://www.correctivebodyworx.com', '37.2889681', '-121.949873');
INSERT INTO `business` VALUES(30, 'Corrective BodyworX', '325 Sharon Park Dr.', '', 'Menlo Park', 'California', '94025', 'http://www.correctivebodyworx.com', '37.4237529', '-122.1964431');
INSERT INTO `business` VALUES(31, 'Sol Y Luna Spa', '691 Monterey Blvd.', '', 'San Francisco', 'California', '94127', 'http://www.solylunaspasf.com', '37.7313986', '-122.4507781');
INSERT INTO `business` VALUES(32, 'Sonoma Helicopter and Mazzocco Winery', '5970-6000 Flightline Dr.', '', 'Santa Rosa', 'California', '95403', 'http://www.sonomahelicopter.com', '38.5087774', '-122.8040522');
INSERT INTO `business` VALUES(33, 'Sonoma Helicopter and Mazzocco Winery', '1400 Lytton Springs Rd.', '', 'Healdsburg', 'California', '95448', 'http://www.sonomahelicopter.com', '38.655161', '-122.898301');
INSERT INTO `business` VALUES(34, 'Esea Skincare Studio', '490 Post St.', 'Suite 1042', 'San Francisco', 'California', '94102', 'http://www.esea-skincare.com/', '37.7882673', '-122.4098472');
INSERT INTO `business` VALUES(35, '20/20 Optical', '1127 4th St.', '', 'San Rafael', 'California', '94901', 'http://www.2020opticalinc.com/', '37.9731636', '-122.5289567');
INSERT INTO `business` VALUES(36, '20/20 Optical', '5800 Nave Dr.', '', 'Novato', 'California', '94949', 'http://www.2020opticalinc.com/', '38.063399', '-122.533967');
INSERT INTO `business` VALUES(37, 'Sirron Norris Studio', '1406 B Valencia St.', '', 'San Francisco', 'California', '94110', 'http://sirronnorrisstudio.com/', '37.7504132', '-122.4206383');
INSERT INTO `business` VALUES(38, 'Yoga at Change', '400 Ben Franklin Ct.', '', 'San Mateo', 'California', '94401', 'http://www.yogaatchange.com', '37.5631959', '-122.3246098');
INSERT INTO `business` VALUES(39, 'California Against Slavery', '13801 Monarch Bay Dr.', '', 'San Leandro', 'California', '94577', 'http://californiaagainstslavery.org', '37.6955777', '-122.1865238');
INSERT INTO `business` VALUES(40, 'Select Sleep Mattress', '30540 Union City Blvd.', '', 'Union City', 'California', '94587', 'http://www.selectsleepmattress.com/home.html', '37.5993311', '-122.0815021');
INSERT INTO `business` VALUES(41, 'Los Panchos Restaurant', '480 San Ramon Valley Blvd.', 'Suite H', 'Danville', 'California', '94526', 'http://lospanchosrestaurant.com/', '37.818972', '-121.995943');
INSERT INTO `business` VALUES(42, 'Awaken CafÃ©', '1429 Broadway at 15th St.', '', 'Oakland', 'California', '94612', 'http://www.awakencafe.com/', '37.8057085', '-122.2704296');
INSERT INTO `business` VALUES(43, 'Garre Winery & CafÃ©', '7986 Tesla Rd.', '', 'Livermore', 'California', '94582', 'http://www.garrewinery.com/', '37.667462', '-121.697713');
INSERT INTO `business` VALUES(44, 'The Sharing Table', 'Adeline Street & 40th Street', '', 'Emeryville', 'California', '94608', 'http://thesharingtable.funghome.com', '37.82841', '-122.2793302');
INSERT INTO `business` VALUES(45, 'Body By Laser', '2570 San Ramon Valley Blvd.', 'Suite A106', 'San Ramon', 'California', '94583', 'http://www.bodybylaser.com/', '37.770749', '-121.972822');
INSERT INTO `business` VALUES(46, 'Body By Laser', '433 Estudillo Ave.', 'Suite 208', 'San Leandro', 'California', '94577', 'http://www.bodybylaser.com/', '37.7261492', '-122.1512636');
INSERT INTO `business` VALUES(47, 'Body By Laser', '1555 Riviera Ave.', 'Suite F', 'Walnut Creek', 'California', '94596', 'http://www.bodybylaser.com/', '37.91073', '-122.066373');
INSERT INTO `business` VALUES(48, 'Stained Glass Garden', '1800 4th St.', '', 'Berkeley', 'California', '94710', 'http://www.stainedglassgarden.com/', '37.869783', '-122.301124');
INSERT INTO `business` VALUES(49, 'La Quinta Resort & Club', '49499 Eisenhower Dr.', '', 'La Quinta', 'California', '92253', 'http://www.laquintaresort.com/', '33.6885346', '-116.3102954');
INSERT INTO `business` VALUES(50, 'Sedona Rouge Hotel & Spa', '2250 W Hwy. 89A', '', 'Sedona', 'Arizona', '86336', 'http://www.sedonarouge.com', '34.864113', '-111.799197');
INSERT INTO `business` VALUES(51, 'pasta pasta', '125 E 4th St.', '', 'San Mateo', 'California', '94401', 'http://www.pastapastaco.com/', '37.5639719', '-122.3229854');
INSERT INTO `business` VALUES(52, 'Whitewater Challengers', '288 N Stagecoach Rd.', '', 'Weatherly', 'Pennsylvania', '18255', 'http://www.whitewaterchallengers.com/home_pages/whitewater-home.asp', '40.9879374', '-75.784644');
INSERT INTO `business` VALUES(53, 'Bartolinos Italian Ristorante', '34-15 Broadway', '', 'Astoria', 'New York', '11106', 'http://bartolinosastoria.com/', '40.76079', '-73.922267');
INSERT INTO `business` VALUES(54, 'Chill Berry', '414 Lenox Ave.', '', 'Harlem', 'New York', '10037', 'http://chillberryfrozenyogurt.com/', '40.8113038', '-73.9428553');
INSERT INTO `business` VALUES(55, 'Chill Berry', '950 Columbus Ave.', '', 'Manhattan', 'New York', '10025', 'http://chillberryfrozenyogurt.com/', '40.799843', '-73.9624822');
INSERT INTO `business` VALUES(56, 'Exotic Curves Pole Fitness Studio', '9008 5th Ave.', '', 'Brooklyn', 'New York', '11209', 'http://www.exoticcurvespolefitness.com/index.html', '40.619044', '-74.028656');
INSERT INTO `business` VALUES(57, 'Honey', '243 W 14th St.', '', 'Manhattan', 'New York', '10011', 'http://www.honeyny.com/', '40.739562', '-74.001313');
INSERT INTO `business` VALUES(58, 'Kasia''s European Day Spa', '202 E 83rd St.', '', 'Manhattan', 'New York', '10028', 'http://www.kasiasdayspa.com/', '40.7766456', '-73.9551399');
INSERT INTO `business` VALUES(59, 'GT Dream Cars', '230 Pension Rd.', '', 'Englishtown', 'New Jersey', '07726', 'http://gtdreamcars.com/', '40.334403', '-74.3552023');
INSERT INTO `business` VALUES(60, 'Ah! Chihuhuas', '330 E 53rd St.', '', 'Manhattan', 'New York', '10022', 'http://chihuahuasmexicannyc.com/food-delivery-TW/Ah-Chihuahuas-Mexican-Grill-New-York-City.12687.r?QueryStringValue=TKPjmkxnev7bBXFZ9T+/wQ==', '40.75604', '-73.966071');
INSERT INTO `business` VALUES(61, 'Kumo Sushi', '1406 Cortelyou Rd.', '', 'Brooklyn', 'New York', '11226', 'http://www.kumony.com/index.php', '40.6406909', '-73.964964');
INSERT INTO `business` VALUES(62, 'Shui Medspa', '132-61 41st Rd.', 'Suite 001', 'Flushing', 'New York', '11355', 'http://www.shuimedspa.com/', '40.756449', '-73.831478');
INSERT INTO `business` VALUES(63, 'Browhaus', '56 Spring St.', '', 'Manhattan', 'New York', '10012', 'http://www.browhaus.com/us/', '40.7219112', '-73.996294');
INSERT INTO `business` VALUES(64, 'Tomoko Shima Hair Salon', '235 W 14th St. ', '', 'Manhattan', 'New York', '10011', 'http://www.tomokoshima.com/', '40.7393336', '-74.0011493');
INSERT INTO `business` VALUES(65, 'Tomoko Shima Hair Salon', '171 E 92nd St.', '', 'Manhattan', 'New York', '10128', 'http://www.tomokoshima.com/', '40.7827613', '-73.951645');
INSERT INTO `business` VALUES(66, 'Luna Park at Coney Island', '1000 Surf Ave.', '', 'Brooklyn', 'New York', '11224', 'http://www.lunaparknyc.com/', '40.5754133', '-73.977866');
INSERT INTO `business` VALUES(67, 'B Spa Bar', '310 W Broadway', '', 'Manhattan', 'New York', '10013', 'http://www.bspabar.com/', '40.722039', '-74.004142');
INSERT INTO `business` VALUES(68, 'B Spa Bar', '303 Park Ave. S', '', 'Manhattan', 'New York', '10021', 'http://www.bspabar.com/', '40.7402469', '-73.9857679');
INSERT INTO `business` VALUES(69, 'Queens Family Dental', '26-02 Ditmars Blvd.', '', 'Astoria', 'New York', '11105', 'http://www.queensfamilydental.com/', '40.778231', '-73.9137022');
INSERT INTO `business` VALUES(70, 'Queens Family Dental', '40-49 167th St.', '', 'Flushing', 'New York', '11358', 'http://www.queensfamilydental.com/', '40.759823', '-73.799038');
INSERT INTO `business` VALUES(71, 'Radiance Tea House & Books', '158 W 55th St.', '', 'Manhattan', 'New York', '10019', 'http://radiancetea.com/', '40.7638123', '-73.98058');
INSERT INTO `business` VALUES(72, 'Tropicana Casino and Resort', '2831 Boardwalk', '', 'Atlantic City', 'New Jersey', '08401', 'http://www.tropicana.net/', '39.3518841', '-74.4444065');
INSERT INTO `business` VALUES(73, 'Brooklyn General Store', '128 Union St.', '', 'Brooklyn', 'New York', '11231', 'http://www.brooklyngeneral.com', '40.6841238', '-74.002324');
INSERT INTO `business` VALUES(74, 'Lockwood Restaurant at the Palmer House Hilton', '17 E Monroe St.', '', 'Chicago', 'Illinois', '60603', 'http://bit.ly/aGkutA', '41.880368', '-87.626654');
INSERT INTO `business` VALUES(75, 'Chicagoland Tire', '1214 Capitol Dr.', 'Suite 8', 'Addison', 'Illinois', '60101', 'http://chicagolandtire.com/', '41.9225166', '-88.0204796');
INSERT INTO `business` VALUES(76, 'Dental Salon', '939 W North Ave.', 'Suite 800', 'Chicago', 'Illinois', '60642', 'http://www.dentalsalon.com/', '41.9108291', '-87.6527469');
INSERT INTO `business` VALUES(77, 'Fusion Mind/Body Studio', '221 E Chicago St.', '', 'Elgin', 'Illinois', '60120', 'http://www.fusionmindbodystudio.com/', '42.036982', '-88.281514');
INSERT INTO `business` VALUES(78, 'Grand Frame', '209 S Arlington Heights Rd.', '', 'Arlington Heights', 'Illinois', '60005', 'http://www.grandframeinc.com/', '42.0791056', '-87.9804793');
INSERT INTO `business` VALUES(79, 'Kiddie Kingdom', '7411 Milwaukee Ave.', '', 'Niles', 'Illinois', '60714', 'http://kiddiekingdomfun.com/Home_Page.html', '42.0158986', '-87.8047872');
INSERT INTO `business` VALUES(80, 'Loomcraft', '645 Lakeview Pkwy.', '', 'Vernon Hills', 'Illinois', '60061', 'http://www.yelp.com/biz/loomcraft-vernon-hills', '42.237432', '-87.953021');
INSERT INTO `business` VALUES(81, 'MÃ©cÃ©nat Bistro and Gathering Place', '821 W Burlington Ave.', '', 'Western Springs', 'Illinois', '60558', 'http://www.mecenatbistro.com/', '41.808675', '-87.900932');
INSERT INTO `business` VALUES(82, 'North Shore Auto Spa', '2744 Skokie Valley Rd.', '', 'Highland Park', 'Illinois', '60035', 'http://www.northshoreautospa.com/', '42.2007009', '-87.8333089');
INSERT INTO `business` VALUES(83, 'PC''s Pancake Cafe', '1264 State St.', '', 'Lemont', 'Illinois', '60439', 'http://www.pcpancakecafe.com/', '41.6536848', '-87.9997416');
INSERT INTO `business` VALUES(84, 'Richard Stromberg''s Chicago Photography Classes on Ravenswood Avenue', '4001 N Ravenswood Ave.', '1st Floor', 'Chicago', 'Illinois', '60613', 'http://www.chicagophotoclasses.com/', '41.9544644', '-87.6737437');
INSERT INTO `business` VALUES(85, 'Safari CafÃ©', '6440 College Rd.', '', 'Lisle', 'Illinois', '60532', 'http://www.facebook.com/#!/pages/Safari-Cafe-Lisle/115738105185129', '41.767766', '-88.099239');
INSERT INTO `business` VALUES(86, 'District Bar', '170 W Ontario St.', '', 'Chicago', 'Illinois', '60654', 'http://www.district-bar.com', '41.8933431', '-87.6333781');
INSERT INTO `business` VALUES(87, 'Beverly Arts Center', '2407 W 111th St.', '', 'Chicago', 'Illinois', '60655', 'http://www.beverlyartcenter.org/', '41.6917722', '-87.6814512');
INSERT INTO `business` VALUES(88, 'Broadway Shows', '23 E Galena Blvd.', '', 'Aurora', 'Illinois', '60506', 'http://www.paramountaurora.com/ ', '41.7577098', '-88.3141683');
INSERT INTO `business` VALUES(89, 'Oxygen Laser Med Spa', '5501 W 79th St.', 'Suite 201', 'Burbank', 'Illinois', '60459', 'http://www.oxygenlaserspa.com/index.php', '41.7486102', '-87.7596491');
INSERT INTO `business` VALUES(90, 'Oxygen Laser Med Spa', '1605 S Michigan Ave.', '', 'Chicago', 'Illinois', '60616', 'http://www.oxygenlaserspa.com/index.php', '41.859853', '-87.623418');
INSERT INTO `business` VALUES(91, 'Play It Again Sports', '525 Waukegan Dr.', '', 'Northbrook', 'Illinois', '60062', 'http://www.playitagainsports.com/', '42.1452909', '-87.8279866');
INSERT INTO `business` VALUES(92, 'Play It Again Sports', '5600 W 95th St.', '', 'Oak Lawn', 'Illinois', '60453', 'http://www.playitagainsports.com/', '41.7198804', '-87.7606052');
INSERT INTO `business` VALUES(93, 'Play It Again Sports', '1127 S Roselle Rd.', '', 'Schaumburg', 'Illinois', '60193', 'http://www.playitagainsports.com/', '42.0065072', '-88.0799623');
INSERT INTO `business` VALUES(94, 'Play It Again Sports', '379 E North Ave.', '', 'Villa Park', 'Illinois', '60181', 'http://www.playitagainsports.com/', '41.9054817', '-87.9692246');
INSERT INTO `business` VALUES(95, 'Sanctuary Nail Spa', '1500 N Wells St.', 'Suite 2B', 'Chicago', 'Illinois', '60610', 'http://www.sanctuarynailspa.com/', '41.9092339', '-87.6348081');
INSERT INTO `business` VALUES(96, 'Serenity Day Spa Chicago', '3329 Vollmer Rd.', '', 'Flossmoor', 'Illinois', '60422', 'http://www.myserenitydayspa.com/', '41.528363', '-87.697624');
INSERT INTO `business` VALUES(97, 'Yvette''s Nail Spa', '28379 Davis Pkwy.', 'Suite 802A', 'Warrenville', 'Illinois', '60555', 'http://www.yvettesnails.com/', '41.8008918', '-88.1760933');
INSERT INTO `business` VALUES(98, 'Joffrey Ballet', '50 E Congress Pkwy.', '', 'Chicago', 'Illinois', '60605', 'http://www.joffrey.org/index.asp', '41.875643', '-87.6253875');
INSERT INTO `business` VALUES(99, 'Hypnosis Chicago', '233 E Erie St.', 'Suite 611', 'Chicago', 'Illinois', '60611', 'http://www.hypnosischicago.com', '41.894006', '-87.621298');
INSERT INTO `business` VALUES(100, 'Maza Restaurant', '2415 North Ashland Avenue', '', 'Chicago', 'Illinois', '60614', 'http://chicago.menupages.com/restaurants/maza/', '41.925668', '-87.667822');
INSERT INTO `business` VALUES(101, 'The Cove of Lake Geneva ', '111 Center St.', '', 'Lake Geneva', 'Wisconsin', '53147', 'http://www.cove-lake-geneva.com/', '42.5897223', '-88.4328654');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `deal_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'primary key of deals which is auto increment',
  `deal_full_title` varchar(400) NOT NULL COMMENT 'full title of the deal',
  `deal_short_title` varchar(300) DEFAULT NULL COMMENT 'short title of deal',
  `deal_url` varchar(200) NOT NULL COMMENT 'url of the deal',
  `status` int(1) NOT NULL COMMENT 'status, 0=Inactive, 1=active',
  `image` varchar(200) DEFAULT NULL COMMENT 'Image path',
  `start_date` date NOT NULL COMMENT 'Startting date of deal',
  `end_date` date NOT NULL COMMENT 'ending date of deal',
  `discount_amount` float NOT NULL COMMENT 'discount price in $ ',
  `original_price` float NOT NULL COMMENT 'original price in $',
  `discount` float NOT NULL COMMENT 'discount in %',
  `expiration_date` date DEFAULT NULL COMMENT 'expirataion date of deal',
  `details` varchar(500) DEFAULT NULL COMMENT 'details of the deal',
  `quantity_left` int(11) DEFAULT NULL COMMENT 'no of more purchase left',
  `quantity_sold` int(11) DEFAULT NULL COMMENT 'no of purchase already done',
  `division_id` int(11) NOT NULL COMMENT 'id of division',
  `source_id` int(11) NOT NULL COMMENT 'id of source',
  PRIMARY KEY (`deal_id`),
  KEY `status` (`status`,`division_id`,`source_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=769 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` VALUES(691, '$95 for a One-Month Membership and One Class at TechShop (Up to $200 Value)', 'Up to 53% Off Membership and Class at TechShop', 'http://www.groupon.com/deals/tech-shop-sf', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1504/5774/TechShop-2_grid_4.jpg', '2011-08-20', '2011-08-23', 105, 95, 53, '2012-08-24', 'Limit 1 per person, may buy 2 additional as gifts. Subject to availability. Must redeem membership in full by 8/23/12. Must be 18 or older. Must sign waiver. New members only. May redeem across visits. <a href="http://gr.pn/hqEozV">Shipping address required and will be sent to TechShop for redemption.</a>', 0, 87, 1, 1);
INSERT INTO `deals` VALUES(692, '$20 for $40 Worth of Surf and Skate Apparel, Gear, and Rentals at Proof Lab in Mill Valley', 'Half Off Surf and Skate Gear in Mill Valley', 'http://www.groupon.com/deals/proof-lab', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1505/8939/Proof-Lab_grid_4.jpg', '2011-08-20', '2011-08-23', 20, 20, 50, '2012-02-24', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. In-store only. Not valid for sale items.', 17, 233, 1, 1);
INSERT INTO `deals` VALUES(693, 'Up to 61% Off Car or Tesla Rental from Getaround. Three Options Available.', 'Up to 61% Off Car Rental from Getaround', 'http://www.groupon.com/deals/getaround', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1498/3275/Getaround_grid_4.jpg', '2011-08-19', '2011-08-22', 20, 20, 50, '2012-02-23', 'Limit 1/person, may buy 1 addl as a gift for car and 2hr rental options. Limit 1/person for 13hr rental option. Limit 1/order. Valid only for option purchased. <a href=http://www.getaround.com/fandc>24hr cancel notice or fee up to Groupon price may apply at appointment.</a> $1 credit card deposit reqd at booking. Subj to avail. New clients only. Must be 19 or older; 30 or older for Tesla options. Must have a 2yr clean driving record and valid driver''s license.', 0, 49, 1, 1);
INSERT INTO `deals` VALUES(694, 'Deep-Tissue or Combination Stone and Swedish Massage at Corrective BodyworX ', 'Up to 56% Off Massage at Corrective BodyworX', 'http://www.groupon.com/deals/corrective-bodyworx', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1490/7958/Corrective-Bodyworx_grid_4.jpg', '2011-08-19', '2011-08-22', 51, 49, 51, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Valid only for option purchased. Services are non-transferable.', 58, 192, 1, 1);
INSERT INTO `deals` VALUES(695, '$25 for $50 Worth of Bikini Sugaring Services at Sol Y Luna Spa', 'Half Off Hair Removal at Sol Y Luna Spa', 'http://www.groupon.com/deals/sol-y-luna-spa', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1484/6007/Sol-Y-Luna-Spa2_grid_4.jpg', '2011-08-19', '2011-08-22', 25, 25, 50, '2012-08-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Valid only for bikini area. Service is non-transferable.', 0, 79, 1, 1);
INSERT INTO `deals` VALUES(696, '$260 for a Wine-Country Helicopter Tour and Wine Tasting for Two from Sonoma Helicopter ($570 Value)', '54% Off Wine-Country Helicopter Tour for Two', 'http://www.groupon.com/deals/sonoma-helicopter-san-francisco-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1495/1281/Sonoma-Helicopter2_grid_4.jpg', '2011-08-19', '2011-08-22', 310, 260, 54, '2012-02-23', 'Limit 1 per person, may buy multiple as gifts. Limit 1 per visit. Must be 21 or older for wine tasting. Reservations required. Valid Fri and Sat, other days subj. to availability. Weather permitting, subject to cancellation/rescheduling. 270lb. per person weight max.', 0, 13, 1, 1);
INSERT INTO `deals` VALUES(697, 'Four, Six, or Eight Microdermabrasion or Facial 365 Treatments at Esea Skincare Studio', 'Up to 88% Off Services at Esea Skincare Studio ', 'http://www.groupon.com/deals/esea-skincare-2', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1485/5581/Esea-Skincare-02_grid_4.jpg', '2011-08-18', '2011-08-22', 501, 99, 84, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. Valid only for option purchased. Appointment required. May split Groupon between people. May redeem across visits.', 0, 152, 1, 1);
INSERT INTO `deals` VALUES(698, '$50 for $200 Toward Prescription Eyewear at 20/20 Optical ', '$50 for $200 Toward Prescription Eyewear', 'http://www.groupon.com/deals/20-20-optical', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1490/5857/2020-Optical_grid_4.jpg', '2011-08-18', '2011-08-22', 150, 50, 75, '2012-08-23', 'Limit 1 per person, may buy multiple as gifts. Limit 1 per vist. In-store only. Valid for prescription eyewear only. Not valid with insurance.', 0, 54, 1, 1);
INSERT INTO `deals` VALUES(699, 'Five Cartooning Classes for Kids or Four-Hour Workshop at Sirron Norris Studio', 'Up to 52% Off Youth Cartooning Classes', 'http://www.groupon.com/deals/sirron-norris-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1489/2094/Sirron-Norris2_grid_4.jpg', '2011-08-18', '2011-08-22', 70, 65, 52, '2012-08-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. Valid only for option purchased. Reservation required; subject to availability. Classes are non-transferable. ', 233, 17, 1, 1);
INSERT INTO `deals` VALUES(700, '$44 for One Month of Unlimited Classes at Yoga at Change in San Mateo ($175 Value)', '75% Off Classes at Yoga at Change in San Mateo', 'http://www.groupon.com/deals/yoga-at-change', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1472/5358/Yoga-at-Change_grid_4.jpg', '2011-08-18', '2011-08-22', 131, 44, 75, '2011-12-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. Must activate by 12/22/11, membership expires 1 month from activation date. Subject to availability. New clients only. Classes are non-transferable.', 279, 121, 1, 1);
INSERT INTO `deals` VALUES(701, '$15 for Registration in the Move to Stop Modern Day Slavery Walkathon from California Against Slavery (Up to $40 Value)', 'Up to 63% Off Antislavery-Walkathon Registration', 'http://www.groupon.com/deals/california-against-slavery-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1493/3795/Move-to-Stop-Modern-Day-Slavery-Walk-A-Thon_grid_4.jpg', '2011-08-18', '2011-08-22', 25, 15, 63, '2011-08-29', 'Limit 1 per person, may buy multiple as gifts. Not valid until 8/23/11. Must sign waiver. Must register online. Registration is non-transferable.', 44, 6, 1, 1);
INSERT INTO `deals` VALUES(702, '$50 for $200 Toward a Custom-Built Mattress or Mattress Set at Select Sleep Mattress in Union City', '$50 for $200 Toward Mattress in Union City ', 'http://www.groupon.com/deals/hg-select-sleep-mattress', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1466/2971/Select-Sleep-Mattress_grid_4.jpg', '2011-08-15', '2011-08-22', 150, 50, 75, '2012-08-23', 'Limit 1 per person, may buy 3 additional as gifts. Limit 1 per visit. In-store only. Not valid for sale or promotional items. Extra fee for delivery and set-up.', 0, 18, 1, 1);
INSERT INTO `deals` VALUES(703, '$10 for $20 Worth of Dining and Entertaining Items at Marigold Houseware ', '$10 for Housewares from Marigold Houseware', 'http://www.groupon.com/deals/hg-marigold-houseware-and-gifts', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1472/9691/Marigold-Houseware-_-Gifts_grid_4.jpg', '2011-08-15', '2011-08-22', 10, 10, 50, '2012-02-23', 'Limit 1 per person. Limit 1 per order. Not valid until 8/23/11. Online only. Not valid for sale items or Libbey brand merchandise. Extra fee for shipping.', 229, 21, 1, 1);
INSERT INTO `deals` VALUES(704, '$40 for an HGTV Ultimate Home Design with Landscaping & Decks 3 Software Program ($99.95 Value)', '60% Off HGTV Ultimate Home Design Software', 'http://www.groupon.com/deals/hg-nova-development', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1465/8665/www-novadevelopment-com-_HGTV_-Ancestry-com_-SimplytoImpress-com__grid_4.jpg', '2011-08-15', '2011-08-22', 60, 40, 60, '2011-12-01', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Compatible only with PCs.', 4951, 49, 1, 1);
INSERT INTO `deals` VALUES(705, '$15 for $30 Worth of Pet Food, Toys, and Accessories from PetFoodDirect.com', 'Half Off Pet Food and More from PetFoodDirect.com', 'http://www.groupon.com/deals/hg-pet-food-direct-san-francisco', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1472/5247/PetFoodDirect-com_grid_4.jpg', '2011-08-15', '2011-08-22', 15, 15, 50, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Extra fee for shipping.', 311, 623, 1, 1);
INSERT INTO `deals` VALUES(706, '$15 for $30 Worth of Vintage Home Goods from Pip & Estella Online', 'Half Off Vintage Home Goods from Pip & Estella', 'http://www.groupon.com/deals/hg-pip-estella-san-francisco', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1465/9010/Pip-_-Estella-Decor_grid_4.jpg', '2011-08-15', '2011-08-22', 15, 15, 50, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Not valid until 8/22/11. Online only. Extra fee for shipping.', 63, 37, 1, 1);
INSERT INTO `deals` VALUES(707, '$10 for $20 worth of Authentic Mexican Fare at Los Panchos Restaurant in Danville', '$10 for Mexican Fare at Los Panchos Restaurant in Danville', 'http://www.groupon.com/deals/los-panchos-restaurant', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1477/4467/Los-Panchos_grid_4.jpg', '2011-08-20', '2011-08-23', 10, 10, 50, '2012-02-24', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per table. Dine-in only. Valid only at listed location.', 0, 708, 1, 1);
INSERT INTO `deals` VALUES(708, '$10 for $20 Worth of Espresso, Coffee, and Pastries at Awaken CafÃ© in Oakland', '$10 at Awaken CafÃ© in Oakland', 'http://www.groupon.com/deals/awaken-cafe', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1494/4440/Awaken-Cafe-LLC_grid_4.jpg', '2011-08-19', '2011-08-22', 10, 10, 50, '2012-02-23', 'Limit 1 per person, may buy 1 additional as gift. Limit 1 per order. May use over multiple visits.', 0, 438, 1, 1);
INSERT INTO `deals` VALUES(709, '$15 for $30 Worth of Mediterranean CafÃ© Fare Plus Wine Tasting for Two at Garre Winery & CafÃ© in Livermore', '$15 for CafÃ© Fare & Tasting at Garre Winery & CafÃ© in Livermore', 'http://www.groupon.com/deals/garre-vineyard-and-winery', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1483/2915/Garre-Winery-_-Cafe_grid_4.jpg', '2011-08-19', '2011-08-22', 15, 15, 50, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per table. Must purchase 1 food item. Dine-in only. Not valid for special events. Not valid 9/3-9/5/11. ', 0, 560, 1, 1);
INSERT INTO `deals` VALUES(710, 'Oakland or San Francisco Chinatown Tour or Cooking Course from The Sharing Table', 'Half Off Chinatown Tour or Cooking Course', 'http://www.groupon.com/deals/the-sharing-table', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1501/6067/The-Sharing-Table2_grid_4.jpg', '2011-08-19', '2011-08-23', 49, 49, 50, '2011-09-04', 'Limit 2 per person, may buy 2 additional as gifts. Limit 1 per visit. Valid only for option purchased. Subject to weather.', 15, 0, 1, 1);
INSERT INTO `deals` VALUES(711, '$199 for Consultation and One or Three Laser Fat-Reduction Treatments at Body By Laser ($649 Value). Choose from three locations.', 'Up to 69% Off Laser Fat-Reduction Treatments', 'http://www.groupon.com/deals/body-by-laser-san-francisco', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1489/8448/Body-By-Laser_grid_4.jpg', '2011-08-18', '2011-08-22', 450, 199, 69, '2012-02-23', 'Single-treatment option: Limit 3/person, may buy multiple as gifts. 3-treatment option: Limit 1/person, may buy 1 additional as a gift. Limit 1 per visit. By appointment only. 24hr cancellation notice required or fee up to Groupon price may apply. Guardian must sign waiver for minors. May redeem across visits.\r\n', 498, 2, 1, 1);
INSERT INTO `deals` VALUES(712, 'Group Glass-Arts Class, Private Class for Up to Six, or Merchandise at Stained Glass Garden in Berkeley', 'Up to 56% Off at Stained Glass Garden in Berkeley', 'http://www.groupon.com/deals/the-stained-glass-garden', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1495/8643/Stained-Glass-Garden_grid_4.jpg', '2011-08-18', '2011-08-22', 15, 15, 50, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. Valid only for option purchased. 7-day cancellation notice required. Must be 7 or older for classes. Merchandise option valid only for in-stock items.', 0, 100, 1, 1);
INSERT INTO `deals` VALUES(713, 'One-Night Weekday or Weekend Stays for Two in a Deluxe Casita Poolside Room at La Quinta Resort & Club in California', 'Hacienda-Style Hideaway in Palm Desert, California', 'http://www.groupon.com/deals/ga-a-la-quinta', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1487/3995/La-Quinta_Primary_grid_4.jpg', '2011-08-16', '2011-08-23', 187, 99, 65, '2011-10-01', 'Limit 3 per person. Limit 3 per visit. Subject to availability. Valid only for option purchased. 72-hour cancellation notice or fee up to Groupon price may apply. Must be 21+ to check in. Must be 21+ to consume alcohol. Not valid 10/20-21, 11/24-25, 12/24-25, 12/31, or 1/15-16. Valid only for Deluxe Casita Poolside room with 1 king bed or 2 queen beds. Not valid with reward points. Credit card required at check-in', 392, 608, 1, 1);
INSERT INTO `deals` VALUES(714, 'Two- or Three-Night Stays for Two with Spa Treatments at Sedona Rouge Hotel & Spa ', 'Rejuvenating Spa Treatments at Opulent Sedona Rouge ', 'http://www.groupon.com/deals/ga-c-sedona-rouge', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1484/7736/Sedona-Rouge-Hotel-_-Spa_Primary_grid_4.jpg', '2011-08-16', '2011-08-23', 380, 249, 60, '2012-09-01', 'Limit 2 per person, may buy 2 additional as gifts. Limit 2 per visit. Subject to availability. Valid only for option purchased. Must travel by expiration date of option purchased. Not valid with reward points. Not valid on 9/5, 11/24, 12/25, 12/31-1/1/12, or 4/8/12. 13&#46;325% occupancy tax and resort fees not included. Must be 18 or older to check-in', 0, 300, 1, 1);
INSERT INTO `deals` VALUES(715, '$10 for $20 Worth of Prepare-at-Home Meals at pasta pasta in San Mateo', '$10 for Prepare-at-Home Pasta Meals in San Mateo', 'http://www.groupon.com/deals/pasta-pasta-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1503/5498/pasta-pasta3_grid_4.jpg', '2011-08-20', '2011-08-23', 10, 10, 50, '2011-11-19', 'Limit 1 per person, may not purchase any as gifts. Not valid for the purchase of alcohol. Valid only for pastas and sauces. ', 0, 500, 1, 1);
INSERT INTO `deals` VALUES(716, '$42 for Four-Hour Rafting Adventure Including All Gear and Wetsuit Rentals ($84 Value). Two- and Four-Person Options Also Available.', 'Whitewater Rafting Experience â€“Â Up to 57% Off', 'http://www.groupon.com/deals/whitewater-challengers-nyc', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1483/4632/Whitewater-Challengers-2_grid_4.jpg', '2011-08-20', '2011-08-23', 42, 42, 50, '2012-06-09', 'Valid only for option purchased. Subject to availability. <a href="http://gr.pn/lrqMWV">2-week cancellation notice required or fee up to 1/2 price of Groupon may apply</a>. Must be 10 or older. Must sign waiver. Subject to weather conditions. Not valid on Saturdays.', 0, 6, 2, 1);
INSERT INTO `deals` VALUES(717, '$15 for $30 Worth of Italian Dinner Fare Plus Two Desserts at Bartolinos Italian Ristorante ($46 Value)', '67% Off at Bartolinos Italian Ristorante', 'http://www.groupon.com/deals/bartolinos-italian-ristorante', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1493/5149/Bartolinos-Restaurant_grid_4.jpg', '2011-08-20', '2011-08-23', 31, 15, 67, '2012-02-24', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per table. Dine-in only. Not valid for Lunch or Prix Fixe menu. Not valid for alcohol.', 0, 165, 2, 1);
INSERT INTO `deals` VALUES(718, '$9 for Five Cups of Frozen Yogurt at Chill Berry ($19.60 Value)', '$9 for Five Frozen Yogurts at Chill Berry', 'http://www.groupon.com/deals/chill-berry-of-harlem', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1477/5012/Chill-Berry-of-Harlem_grid_4.jpg', '2011-08-20', '2011-08-22', 10, 9, 53, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per table. Valid only toward 8-ounce cups. Columbus Ave. location opens 9/1/11. May redeem across visits. ', 0, 349, 2, 1);
INSERT INTO `deals` VALUES(719, '$45 for Five Classes at Exotic Curves Pole Fitness Studio in Brooklyn (Up to $150 Value) ', 'Up to 70% Off Pole-Fitness Classes in Brooklyn', 'http://www.groupon.com/deals/exotic-curves-pole-fitness', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1504/0283/Exotic-Curves-Pole-Fitness-Studio2_grid_4.jpg', '2011-08-20', '2011-08-22', 105, 45, 70, '2012-02-23', 'Limit 1/person, may buy 1 addl as a gift. Limit 1/visit. Must redeem pass in full by 2/22/12. Subj to avail. Must be 18 or older for pole dancing and exotic chair classes. Must be able to engage in strenuous physical activity for an extended period of time. New clients only. Classes are non-transferable.', 0, 68, 2, 1);
INSERT INTO `deals` VALUES(720, '$25 for Any Cheese Fondue and One Chocolate Fondue at Honey for Up to Four People (Up to $64 Value)', '61% Off Fondue Experience at Honey', 'http://www.groupon.com/deals/honey', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1501/3457/Honey-2_grid_4.jpg', '2011-08-20', '2011-08-23', 39, 25, 61, '2012-02-24', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per table. Dine-in only. Not valid Thursday.', 1148, 602, 2, 1);
INSERT INTO `deals` VALUES(721, '$49 for One-Hour Aromatherapy or Deep-Tissue Massage at Kasia (Up to $110 Value). Upgraded Massage Packages Available.', 'Up To 62% Off Spa Packages at Kasia', 'http://www.groupon.com/deals/kasias-european-day-spa-2', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1493/6998/Kasias-European-Day-Spa_grid_4.jpg', '2011-08-20', '2011-08-23', 61, 49, 55, '2012-02-24', 'Limit 1 per person, may buy multiple as gifts. Valid only for service purchased. By appointment only. Subject to availability. Not valid with other offers.', 0, 154, 2, 1);
INSERT INTO `deals` VALUES(722, '$59 for Luxury Lamborghini, Bentley, or Aston Martin Professional Ride-Along Experience from GT Dream Cars in New Jersey ($177 Value). $99 for Self-Driving Experience ($237 Value).', 'Up to 67% Off Sports-Car Experience in Englishtown', 'http://www.groupon.com/deals/gt-dream-cars', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1498/0582/GT-Dream-Cars_grid_4.jpg', '2011-08-19', '2011-08-22', 118, 59, 67, '2012-08-23', 'Limit 3 per person, may buy multiple as gifts. Limit 1 per visit. Valid only for option purchased. Must be 18 or older. 6''4 height max. 325lb weight max. Must sign waiver. Must have valid driver''s license.', 0, 48, 2, 1);
INSERT INTO `deals` VALUES(723, '$23 for Two-Person, Two-Course Mexican Dinner at Ah! Chihuahuas (Up to $63.80 Value)', 'Up to 63% Mexican Dinner for Two at Ah! Chihuahuas', 'http://www.groupon.com/deals/ah-chihuahas', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1501/3802/Ah-Chihuahuas-2_grid_4.jpg', '2011-08-19', '2011-08-22', 40, 23, 63, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per table. Dine-in only.', 0, 1236, 2, 1);
INSERT INTO `deals` VALUES(724, '$20 for $40 Worth of Japanese Cuisine Plus Two Soft Drinks at Kumo Sushi in Brooklyn', '53% Off at Kumo Sushi in Brooklyn', 'http://www.groupon.com/deals/kumo-sushi', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1491/1094/Kumo-Sushi_grid_4.jpg', '2011-08-19', '2011-08-21', 23, 20, 53, '2011-12-22', 'Limit 1 per person. Limit 1 per table. Dine-in only. Not valid toward alcohol.', 0, 333, 2, 1);
INSERT INTO `deals` VALUES(725, '$49 for Choice of Facial and Skin Analysis at Shui Medspa in Flushing (Up to $175 Value)', 'Up to 72% Off Skin Analysis and Facial in Flushing', 'http://www.groupon.com/deals/shui-medspa', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1476/9592/Shui-Medspa2_grid_4.jpg', '2011-08-19', '2011-08-22', 126, 49, 72, '2012-02-23', 'Limit 1 per person, may buy 5 additional as gifts. Limit 1 per visit. Appointment required. New clients only.', 0, 135, 2, 1);
INSERT INTO `deals` VALUES(726, '$225 for Upper or Lower Eye Define at Browhaus ($450 Value). $450 for Full Lip Define or Brow Resurrection ($925 Value)', 'Up to 51% Off Browhaus Semipermanent Makeup ', 'http://www.groupon.com/deals/strip-brow-haus', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1491/9427/Brow-Haus-2_grid_4.jpg', '2011-08-19', '2011-08-23', 225, 225, 50, '2012-02-24', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. Valid only for option purchased. 24hr cancellation notice required. Must be 21 or older. Treatments are non-transferable. Tax and gratuity not included. ', 39, 11, 2, 1);
INSERT INTO `deals` VALUES(727, '$129 for a Japanese Hair-Smoothing Treatment at Tomoko Shima Hair Salon ($350 Value)', '63% Off Japanese Hair-Smoothing Treatment', 'http://www.groupon.com/deals/tomoko-shima', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1496/4112/Tomoko-Shima--2_grid_4.jpg', '2011-08-19', '2011-08-22', 221, 129, 63, '2012-02-22', 'Limit 1 per person, may buy 2 additional as gifts. Valid only for highlighted or colored hair. 24-hour cancellation notice req''d. Reservation required.', 694, 56, 2, 1);
INSERT INTO `deals` VALUES(728, '$24 for Unlimited Amusement-Park Rides at Coney Island''s Luna Park in Brooklyn, Including Scream Zone Access and One Cyclone Ride ($48 Value)', 'Half Off at Luna Park at Coney Island in Brooklyn', 'http://www.groupon.com/deals/luna-park-at-coney-island-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1496/7768/Cyclone-Coaster_grid_4.jpg', '2011-08-18', '2011-08-22', 24, 24, 50, '2012-08-23', 'Limit 1 per person, may buy 4 additional as gifts. Valid during all times the park accepts unlimited ride Luna cards. Not valid for holidays. Valid Monâ€“Thu 8/22/11â€“9/1/11, Satâ€“Sun 9/10/11â€“10/1/11, and Monâ€“Thu 5/29/12â€“8/22/12.', 0, 1546, 2, 1);
INSERT INTO `deals` VALUES(729, '$68 for 60-Minute Essential Facial and Chocolate Herbal Mask at B Spa Bar ($196 Value). $88 for Upgraded Facial Package ($294 Value)', 'Up to 70% Off Facial Packages at B Spa Bar', 'http://www.groupon.com/deals/b-spa-bar-nyc-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1485/8131/B-Spa-Bar_grid_4.jpg', '2011-08-18', '2011-08-21', 128, 68, 65, '2012-08-22', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Valid only for option purchased. <a href="http://gr.pn/o3Ys8c">48hr cancellation notice or fee up to 1/2 of Groupon price may apply</a>. Valid only at listed locations.', 0, 166, 2, 1);
INSERT INTO `deals` VALUES(730, 'Dental-Exam Package or Zoom! Teeth Whitening at Queens Family Dental', 'Up to 82% Off Dental Exam or Zoom! Whitening', 'http://www.groupon.com/deals/queens-family-dental-1-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1490/1622/Queens-Family-Dental_grid_4.jpg', '2011-08-18', '2011-08-22', 266, 59, 82, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Valid only for service purchased. Appointment required. ', 0, 115, 2, 1);
INSERT INTO `deals` VALUES(731, '$49 for Afternoon Tea for Two Including Savory Tastes at Radiance Tea House & Books ($110 Value). $95 for Four-Person Option ($220 Value). ', 'Up to 57% Off Afternoon Tea at Radiance Tea House & Books', 'http://www.groupon.com/deals/radiance-tea-house-books-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1489/5861/Radiance_Tea_House_and_Books-2_grid_4.jpg', '2011-08-18', '2011-08-21', 61, 49, 55, '2011-12-02', 'Limit 1 per person. Limit 1 per table. Valid only for option purchased. Not valid until 8/22/11. Reservation required. <a href="http://gr.pn/p0dMZV">Must cancel reservations by 11:30am day of, or $25 fee/person may apply</a>. Dine-in only.', 0, 289, 2, 1);
INSERT INTO `deals` VALUES(732, '$12 for Two Bottles of Three Olives Olive Oil from The Artisanal Kitchen ($25.98 Value)', '54% Off Two Bottles of Gourmet Olive Oil', 'http://www.groupon.com/deals/the-artisanal-kitchen', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1484/6172/Seven-Deuce-Corp_grid_4.jpg', '2011-08-18', '2011-08-21', 14, 12, 54, '2012-02-22', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. ', 0, 1349, 2, 1);
INSERT INTO `deals` VALUES(733, '$119 for a One-Night Stay for Two with Food and Drink Credit at Tropicana Casino and Resort in New Jersey ', 'Gaming and Glitz on Famed Atlantic City Boardwalk', 'http://www.groupon.com/deals/ga-g-tropicana-casino', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1494/1824/Tropicana-Casino-and-Resort_Secondary8_grid_4.jpg', '2011-08-16', '2011-08-23', 90, 119, 43, '2011-09-24', 'Limit 3 per person, may buy 2 additional as gifts. Limit 2 per visit. Reservation required. 48-hour cancellation notice required or fee up to Groupon price may apply. Subject to availability. Valid only from 9/1/11-10/31/11, Sun-Thurs. Not valid on 9/4, 10/9, or 10/24. $10 resort fee & 14% tax per night not included, due upon check-in. Must book between 8/23-9/23 for travel between 9/1-10/31. Credit card required at check-in for security deposit. Must be 21 or older', 358, 1142, 2, 1);
INSERT INTO `deals` VALUES(734, '$10 for $20 Worth of Yarn, Fabric, and Fine Craft Supplies at Brooklyn General Store', '$10 for Fine Yarn, Fabric, and Craft Supplies', 'http://www.groupon.com/deals/brooklyn-general-store', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1473/1271/Brooklyn-General-Store_grid_4.jpg', '2011-08-15', '2011-08-22', 10, 10, 50, '2012-08-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. In-store only.', 0, 537, 2, 1);
INSERT INTO `deals` VALUES(735, '$15 for $30 Worth of Digital Photograph Collages from ScrapWalls ', 'Half Off Custom Collages from ScrapWalls', 'http://www.groupon.com/deals/hg-scrap-walls-nyc', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1471/7448/ScrapWalls-com_grid_4.jpg', '2011-08-15', '2011-08-22', 15, 15, 50, '2011-11-23', 'Limit 1 per order. Online only. Extra fee for shipping.', 24513, 476, 2, 1);
INSERT INTO `deals` VALUES(736, '$40 for an HGTV Ultimate Home Design with Landscaping & Decks 3 Software Program ($99.95 Value)', '60% Off HGTV Ultimate Home Design Software', 'http://www.groupon.com/deals/nova-development-nyc', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1475/6503/www-novadevelopment-com-_HGTV_-Ancestry-com_-SimplytoImpress-com__grid_6_grid_4.jpg', '2011-08-15', '2011-08-22', 60, 40, 60, '2011-11-30', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Compatible only with PCs.', 4897, 102, 2, 1);
INSERT INTO `deals` VALUES(737, '$75 for $150 Worth of Hand-Painted Art Reproductions from Ownapainting.com', 'Hand-Painted Art Reproductions', 'http://www.groupon.com/deals/ownapainting-com', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1476/7176/ownapainting-com_grid_4.jpg', '2011-08-15', '2011-08-22', 75, 75, 50, '2012-08-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Online only.', 971, 29, 2, 1);
INSERT INTO `deals` VALUES(738, '$35 for Afternoon Tea Experience for Two at Lockwood Restaurant at Palmer House Hilton ($70 Value)', 'Half Off Tea for Two at Lockwood Restaurant', 'http://www.groupon.com/deals/lockwood-at-palmer-house-hilton', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1476/8932/Lockwood-at-Palmer-House-Hilton_grid_4.jpg', '2011-08-20', '2011-08-21', 35, 35, 50, '2012-02-22', 'Limit 3 per person. Limit 1 per visit. Reservation required. Dine-in only.', 319, 1681, 3, 1);
INSERT INTO `deals` VALUES(739, 'One- or Three-Visit Car-Maintenance Package at Chicagoland Tire in Addison', 'Up to 76% Off Oil Changes in Addison', 'http://www.groupon.com/deals/chicagoland-tire', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1500/8236/Chicagoland-tire_grid_4.jpg', '2011-08-20', '2011-08-22', 38, 12, 76, '2012-08-22', 'Limit 1 per person, may buy 1 additional as a gift for 1Car-Maintenance Package. Limit 1 per visit. New clients only. Valid only for option purchased. Must activate 3-Visit option and use all visits by 8/22/12. Must register online in advance for appointment. Extra fee for synthetic oil. Valid for up to 5-quarts with standard oil filter.', 0, 79, 3, 1);
INSERT INTO `deals` VALUES(740, '$149 for Teeth Whitening at Dental Salon (Up to $499 Value)', 'Up to 70% Off Teeth Whitening', 'http://www.groupon.com/deals/dental-salon-chicago-6', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1492/0127/Dental-Salon6_grid_4.jpg', '2011-08-20', '2011-08-23', 350, 149, 70, '2012-08-24', 'Limit 1 per person, may buy 3 additional as gifts. Limit 1 per visit. Service is non-transferable.', 0, 107, 3, 1);
INSERT INTO `deals` VALUES(741, '5 or 10 Yoga Classes at Fusion Mind/Body Studio in Elgin', 'Up to 65% Off Yoga Classes in Elgin', 'http://www.groupon.com/deals/fusiion-mind-body-studio', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1493/2763/Fusion-Mind-Body-Studio_grid_4.jpg', '2011-08-20', '2011-08-23', 41, 29, 59, '2012-02-24', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Must redeem in full by 2/23/12. Valid only for option purchased. Must be 15 or older or be accompanied by guardian. Must sign waiver.', 0, 32, 3, 1);
INSERT INTO `deals` VALUES(742, '$45 for $125 Worth of Custom Framing at Grand Frame in Arlington Heights', '64% Off Custom Framing in Arlington Heights', 'http://www.groupon.com/deals/grand-frame-gallery', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1491/0148/Grand-Frame-_-Gallery_grid_4.jpg', '2011-08-20', '2011-08-23', 80, 45, 64, '2012-02-24', 'Limit 2 per person, may buy 3 additional as gifts. Valid only for custom framing.', 1946, 54, 3, 1);
INSERT INTO `deals` VALUES(743, 'Pizza and Arcade Games or Party Package at Kiddie Kingdom in Niles', 'Up to 60% Off Pizza and Arcade Package in Niles', 'http://www.groupon.com/deals/kiddie-kingdom', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1505/2617/Kiddie-Kingdom-2_grid_4.jpg', '2011-08-20', '2011-08-23', 9, 9, 50, '2012-02-23', 'Limit 3/person for 30 token and 12" pizza option. Limit 2/person for 100 token and 16" pizza option. Limit 1/person for party option. Limit 1 per visit. Valid only for option purchased.', 0, 25, 3, 1);
INSERT INTO `deals` VALUES(744, '$25 for $55 Worth of Home DÃ©cor Fabric at Loomcraft in Vernon Hills', '55% Off Home DÃ©cor Fabric in Vernon Hills', 'http://www.groupon.com/deals/loomcraft', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1499/0911/Loomcraft_grid_4.jpg', '2011-08-20', '2011-08-23', 30, 25, 55, '2011-12-24', 'Limit 2 per person. Limit 1 per visit. In-store only. Not valid for sale items. Valid only for in-stock fabric.', 2392, 108, 3, 1);
INSERT INTO `deals` VALUES(745, '$15 for $30 Worth of Traditional American Fare at MÃ©cÃ©nat Bistro and Gathering Place in Western Springs', 'Half Off American Fare at MÃ©cÃ©nat Bistro and Gathering Place in Western Springs', 'http://www.groupon.com/deals/mecenat-bistro', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1489/8726/Mecenat-Bistro2_grid_4.jpg', '2011-08-20', '2011-08-23', 15, 15, 50, '2012-02-24', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per table. Reservation required. Not valid on New Year''s Eve.', 1010, 490, 3, 1);
INSERT INTO `deals` VALUES(746, '$26 for Three Platinum Car Washes at North Shore Auto Spa in Highland Park (Up to $63 Value) ', 'Up to 59% Off Three Car Washes in Highland Park ', 'http://www.groupon.com/deals/north-shore-auto-spa', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1485/6661/North-Shore-Auto-Spa-HP_grid_4.jpg', '2011-08-20', '2011-08-22', 37, 26, 59, '2012-01-01', 'Limit 1 per person. Limit 1 per visit. May redeem across visits.', 2729, 271, 3, 1);
INSERT INTO `deals` VALUES(747, '$15 for Breakfast for Two at PC''s Pancake Cafe in Lemont (Up to $30.60 Value)', '51% Off at PC''s Pancake Cafe in Lemont', 'http://www.groupon.com/deals/pcs-pancake-cafe', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1502/7980/PCs-Pancake-Cafe-3_grid_4.jpg', '2011-08-20', '2011-08-21', 15, 15, 50, '2012-02-22', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per table. Valid only for option purchased. Dine-in only. Not valid on holidays.', 0, 249, 3, 1);
INSERT INTO `deals` VALUES(748, '$45 for a Three-Hour Photo Class for Two at Richard Stromberg''s Chicago Photography Classes ($90 Value) ', 'Half Off Three-Hour Photo Class for Two', 'http://www.groupon.com/deals/richard-stromberg-photography', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1500/7861/Richard-Stromberg2_grid_4.jpg', '2011-08-20', '2011-08-23', 45, 45, 50, '2012-05-19', 'Limit 1 per person. Reservation required. Class date subject to change. Not valid 12/10/11-1/7/12.', 688, 62, 3, 1);
INSERT INTO `deals` VALUES(749, 'Punch Card for 10 Large Drinks or $7 for $15 Worth of CafÃ© Fare and Coffee at Safari CafÃ© in Lisle', 'Up to 53% Off CafÃ© Fare & Coffee at Safari CafÃ© in Lisle', 'http://www.groupon.com/deals/safari-cafe', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1485/5296/Safari-Cafe_grid_4.jpg', '2011-08-20', '2011-08-22', 8, 7, 53, '2012-02-23', 'Limit 1 per person. Limit 1 per table. Valid only for option purchased.', 0, 41, 3, 1);
INSERT INTO `deals` VALUES(750, '$25 for $75 Worth of Wine from Wine Insiders', '67% Off from Wine Insiders', 'http://www.groupon.com/deals/wineinside-chicago-ill', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1489/9116/WineInsiders-4_grid_4.jpg', '2011-08-20', '2011-08-22', 50, 25, 67, '2012-02-23', 'Limit 1 per household, may buy 2 addl as gifts. Not valid until 8/23/11. Must be 21+. New clients only. Online only. Not valid for memberships. <b>Ships only to <a href="http://gr.pn/aUnwtr">select states.</a></b> Must use in 1 order. Valid for tax and shipping.', 0, 542, 3, 1);
INSERT INTO `deals` VALUES(751, 'Gourmet Pub Meal for Two or Four at District Bar', 'District Bar â€“ Up to 68% Off Gourmet Pub Fare', 'http://www.groupon.com/deals/district-bar', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1485/6631/District-Bar_grid_4.jpg', '2011-08-19', '2011-08-22', 50, 24, 68, '2012-12-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per table. Valid only for option purchased. Dine-in only. Not valid toward daily specials. ', 0, 1912, 3, 1);
INSERT INTO `deals` VALUES(752, '$79 for Camera-to-Frame Package from 44 Wide ($280 Value)', '72% Off Camera-to-Frame Package from 44 Wide', 'http://www.groupon.com/deals/44-wide-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1500/8971/44-Wide-11_Photo_to_Frame_grid_4.jpg', '2011-08-19', '2011-08-22', 201, 79, 72, '2012-02-23', 'Limit 2 per person, may buy multiple as gifts. Not valid until 8/25/11. Online only. Shipping not valid to Alaska or Hawaii.', 0, 32, 3, 1);
INSERT INTO `deals` VALUES(753, '$10 for Two Admissions to Sip of Summer Beer-and-Wine Tasting ($20 Value) at the Beverly Arts Center', '$10 for Two Tickets to Beer-and-Wine Tasting', 'http://www.groupon.com/deals/beverly-arts-center-chicago-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1490/5276/Beverly-Arts-Center-Sip-of-Summer-2_grid_4.jpg', '2011-08-19', '2011-08-21', 10, 10, 50, '2011-08-27', 'Limit 5 per person, may buy 5 additional as gifts. Limit 1 per visit. Valid only for event on 8/26/11. Must be 21 or older. ', 0, 176, 3, 1);
INSERT INTO `deals` VALUES(754, 'Admission to "My Fair Lady"or "Joseph and the Amazing Technicolor Dreamcoat" and Complimentary Cocktail at Paramount Theatre in Aurora ', '59% Off Theatre Package in Aurora', 'http://www.groupon.com/deals/gl-paramount-theatre-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1493/9968/Paramount-Theatre_My_Fair_Lady_grid_4.jpg', '2011-08-19', '2011-08-22', 32, 23, 58, '2011-10-03', 'Limit 10 per person. Valid only for option purchased. Redeem on day of event. <b>Must show valid ID matching name on Groupon at Paramount Theatre box office.</b> <a href="http://www.groupon.com/privacy">Must provide first and last name at checkout.</a> Refundable only on day of purchase. Must purchase together to sit together. Not valid for Wednesday matinees.', 14414, 586, 3, 1);
INSERT INTO `deals` VALUES(755, '$99 for Six Laser Hair Removal Treatments at Oxygen Laser Med Spa (Up to $240 Value)', 'Up to 59% Off at Oxygen Laser Med Spa', 'http://www.groupon.com/deals/oxygen-laser-med-spa', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1494/4155/Oxygen-Med-Spa2_grid_4.jpg', '2011-08-19', '2011-08-22', 141, 99, 59, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Appointment only. Subject to availability. Valid only for upper lip, chin, sideburns, hands, and toes. ', 0, 85, 3, 1);
INSERT INTO `deals` VALUES(756, '$15 for $30 Worth of New and Gently Used Sporting Goods at Play It Again Sports. Four Locations Available. ', 'Half Off Sporting Goods at Play It Again Sports', 'http://www.groupon.com/deals/play-it-again-sports-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1475/5428/Play_It_Again_Sports-National__1__grid_4.jpg', '2011-08-19', '2011-08-22', 15, 15, 50, '2012-02-23', 'Limit 3 per person. Limit 1 per visit. In-store only.', 0, 2157, 3, 1);
INSERT INTO `deals` VALUES(757, '$35 for No-Chip Manicure and Basic Pedicure at Sanctuary Nail Spa ($75 Value)', '53% Off Mani-Pedi at Sanctuary Nail Spa', 'http://www.groupon.com/deals/sanctuary-nail-spa-1', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1475/4796/sanctuary-nail-spa-2_grid_4.jpg', '2011-08-19', '2011-08-22', 40, 35, 53, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. By appointment only. Subject to availability.', 1817, 1183, 3, 1);
INSERT INTO `deals` VALUES(758, '$39 for Custom Power-Hour Facial with Aromatherapy at Serenity Day Spa in Flossmoor ($85 Value)', '54% Off Facial at Serenity Day Spa in Flossmoor', 'http://www.groupon.com/deals/serenity-day-spa-chicago-2', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1478/2833/Serenity-Day-Spa-Chicago2_grid_4.jpg', '2011-08-19', '2011-08-22', 46, 39, 54, '2012-05-23', 'Limit 2 per person, may buy 1 additional as a gift. 24hr cancellation notice required.', 319, 181, 3, 1);
INSERT INTO `deals` VALUES(759, '$25 for Mani-Pedi at Yvette''s Nail Spa in Warrenville ($50 Value)', 'Half Off Mani-Pedi in Warrenville', 'http://www.groupon.com/deals/yvettes-nail-spa', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1475/3101/Yvettes-Nail-Spa_grid_4.jpg', '2011-08-19', '2011-08-22', 25, 25, 50, '2012-08-22', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. By appointment only. 24hr cancellation notice required.', 1627, 873, 3, 1);
INSERT INTO `deals` VALUES(760, 'Three-Show Subscription from the Joffrey Ballet. Ten Options Available.', 'Joffrey Ballet â€“ Up to 68% Off Subscription', 'http://www.groupon.com/deals/gl-joffrey-ballet', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1472/7921/Joffrey-Ballet3_grid_4.jpg', '2011-08-18', '2011-08-22', 180, 84, 68, '2012-04-26', 'Limit 10 per person. Valid only for option purchased. <a href="http://gr.pn/hqEozV">Shipping address required.</a>. Refundable only on day of purchase. Must purchase together to sit together.', 243, 157, 3, 1);
INSERT INTO `deals` VALUES(761, '$225 for Three Weight-Loss Hypnosis Sessions at Hypnosis Chicago ($475 Value)', '53% Off Three Weight-Loss Hypnosis Sessions', 'http://www.groupon.com/deals/hypnosis-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1483/7399/Hypnosis-Chicago_-Ltd_grid_4.jpg', '2011-08-18', '2011-08-22', 250, 225, 53, '2012-08-20', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Online appointment required. 24hr cancellation notice or fee up to Groupon price may apply. New clients only. Services are non-transferable. May redeem across visits. ', 204, 96, 3, 1);
INSERT INTO `deals` VALUES(762, '$20 for $40 Worth of Lebanese Cuisine at Maza ', 'Half Off Lebanese Cuisine at Maza ', 'http://www.groupon.com/deals/maza-restaurant-2', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1486/1973/Maza-Restaurant_grid_4.jpg', '2011-08-18', '2011-08-21', 20, 20, 50, '2012-02-22', 'Limit 3 per person, may buy 2 additional as gifts. Limit 1 per table. Dine-in only. Must purchase 1 food item. Reservations recommended.', 0, 919, 3, 1);
INSERT INTO `deals` VALUES(763, 'One-Night Stay for Up to Four in an Anchor Suite at The Cove of Lake Geneva in Wisconsin. Three Options Available.', 'Family-Friendly Condos on Wisconsin''s Bustling Lake Geneva', 'http://www.groupon.com/deals/ga-h-cove-lake-geneva', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1486/2453/The-Cove-of-Lake-Geneva_Primary_grid_4.jpg', '2011-08-16', '2011-08-23', 124, 115, 52, '2011-09-02', 'May buy multiple as gifts. Limit 1 per visit. Limit 1 per week. Valid only for option purchased. Must book by expiration date of option purchased. Not valid 8/19-8/21/11, 8/26-8/28/11, 9/2-9/5/11, 10/8-10/10/11, or 12/30/11-1/1/12. Not valid on weekends 5/26/12-9/3/12. Valid only toward Anchor Suite. Subject to availability', 9966, 34, 3, 1);
INSERT INTO `deals` VALUES(764, '$55 for Two-Room Carpet Cleaning from White Glove Cleaning and Restoration in Norridge ($160 Value)', '66% Off Carpet Cleaning in Norridge', 'http://www.groupon.com/deals/hg-white-glove-cleaning', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1471/2137/White-Gloves-Cleaning-Service_grid_4.jpg', '2011-08-15', '2011-08-22', 105, 55, 66, '2012-08-23', 'Limit 1 per person, may buy multiple as gifts. Limit 1 per visit. New clients only. Valid only up to 200 sq. ft. per room. Stairs not included. $25 fee outside 20 mi of 60706. $10 access fee for above 2nd floor units. $10-$15 environmental waste fee. ', 0, 60, 3, 1);
INSERT INTO `deals` VALUES(765, '$189 for an 18â€x24â€ Canvas Print of Your DNA from DNA Imprints (Up to $436 Value)', 'Up to 57% Off Canvas Print of Your DNA', 'http://www.groupon.com/deals/hg-dna-imprints', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1465/4193/DNA-Imprints2_grid_4.jpg', '2011-08-15', '2011-08-22', 247, 189, 57, '2012-02-23', 'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per order. Not valid until 08/24/11. Not valid for sale items. Online only. Tax included. Extra fee for shipping.', 0, 32, 3, 1);
INSERT INTO `deals` VALUES(766, '$15 for $30 Worth of Home and Designer Fabrics from Mood Designer Fabrics', 'Half Off from Mood Designer Fabrics', 'http://www.groupon.com/deals/hg-mood-fabrics-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1447/0770/Mood-Fabrics_grid_4.jpg', '2011-08-15', '2011-08-22', 15, 15, 50, '2012-08-23', 'Limit 1 per person. Limit 1 per order. Online only. Not valid until 8/23/11.', 0, 371, 3, 1);
INSERT INTO `deals` VALUES(767, '$99 for $300 Toward Tree Services from Mr. Mulch', '$99 for $300 Toward Tree Services', 'http://www.groupon.com/deals/hg-mr-mulch', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1465/9848/Mr-Mulch_grid_4.jpg', '2011-08-15', '2011-08-25', 201, 99, 67, '2012-02-23', 'Limit 1 per person. Valid only in the state of IL, east of I-39, and north of I-80. Not valid in the Chicago Loop. May not combine Groupons.', 292, 108, 3, 1);
INSERT INTO `deals` VALUES(768, '$20 for an Initial Yard Cleaning and One Follow-Up Cleaning from Poop 911 (Up to $185.90 Value)', 'Up to 89% Off Yard Cleaning from Poop 911', 'http://www.groupon.com/deals/poop-911-chicago', 1, 'https://secure-assets.grouponcdn.com/images/site_images/1478/2580/POOP-911-2_grid_4.jpg', '2011-08-15', '2011-08-22', 165, 20, 89, '2012-02-23', 'Limit 1 per person, may buy 2 additional as gifts. Limit 1 per visit. New clients only. Valid only in Cook, Dupage, Kane, Lake, and Will counties.', 0, 69, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deals_insert_info`
--

CREATE TABLE `deals_insert_info` (
  `deal_id` int(10) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals_insert_info`
--

INSERT INTO `deals_insert_info` VALUES(691, '2011-08-20 13:59:16', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(692, '2011-08-20 13:59:17', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(693, '2011-08-20 13:59:17', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(694, '2011-08-20 13:59:17', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(695, '2011-08-20 13:59:17', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(696, '2011-08-20 13:59:17', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(697, '2011-08-20 13:59:18', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(698, '2011-08-20 13:59:18', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(699, '2011-08-20 13:59:18', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(700, '2011-08-20 13:59:18', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(701, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(702, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(703, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(704, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(705, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(706, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(707, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(708, '2011-08-20 13:59:19', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(709, '2011-08-20 13:59:20', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(710, '2011-08-20 13:59:20', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(711, '2011-08-20 13:59:20', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(712, '2011-08-20 13:59:21', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(713, '2011-08-20 13:59:21', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(714, '2011-08-20 13:59:21', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(715, '2011-08-20 13:59:22', '2011-08-20 14:48:58');
INSERT INTO `deals_insert_info` VALUES(716, '2011-08-20 13:59:51', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(717, '2011-08-20 13:59:51', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(718, '2011-08-20 13:59:51', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(719, '2011-08-20 13:59:52', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(720, '2011-08-20 13:59:52', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(721, '2011-08-20 13:59:52', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(722, '2011-08-20 13:59:52', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(723, '2011-08-20 13:59:53', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(724, '2011-08-20 13:59:53', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(725, '2011-08-20 13:59:53', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(726, '2011-08-20 13:59:53', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(727, '2011-08-20 13:59:53', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(728, '2011-08-20 13:59:54', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(729, '2011-08-20 13:59:54', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(730, '2011-08-20 13:59:54', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(731, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(732, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(733, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(734, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(735, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(736, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(737, '2011-08-20 13:59:55', '2011-08-20 14:49:19');
INSERT INTO `deals_insert_info` VALUES(738, '2011-08-20 14:00:12', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(739, '2011-08-20 14:00:12', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(740, '2011-08-20 14:00:12', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(741, '2011-08-20 14:00:13', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(742, '2011-08-20 14:00:13', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(743, '2011-08-20 14:00:13', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(744, '2011-08-20 14:00:13', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(745, '2011-08-20 14:00:14', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(746, '2011-08-20 14:00:14', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(747, '2011-08-20 14:00:14', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(748, '2011-08-20 14:00:14', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(749, '2011-08-20 14:00:14', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(750, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(751, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(752, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(753, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(754, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(755, '2011-08-20 14:00:15', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(756, '2011-08-20 14:00:16', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(757, '2011-08-20 14:00:16', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(758, '2011-08-20 14:00:17', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(759, '2011-08-20 14:00:17', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(760, '2011-08-20 14:00:17', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(761, '2011-08-20 14:00:17', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(762, '2011-08-20 14:00:17', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(763, '2011-08-20 14:00:18', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(764, '2011-08-20 14:00:18', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(765, '2011-08-20 14:00:18', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(766, '2011-08-20 14:00:18', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(767, '2011-08-20 14:00:18', '2011-08-20 14:49:06');
INSERT INTO `deals_insert_info` VALUES(768, '2011-08-20 14:00:18', '2011-08-20 14:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `deal_business`
--

CREATE TABLE `deal_business` (
  `deal_id` int(10) NOT NULL,
  `business_id` varchar(5) NOT NULL,
  KEY `deal_id` (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_business`
--

INSERT INTO `deal_business` VALUES(691, '25');
INSERT INTO `deal_business` VALUES(691, '26');
INSERT INTO `deal_business` VALUES(691, '27');
INSERT INTO `deal_business` VALUES(692, '28');
INSERT INTO `deal_business` VALUES(694, '29');
INSERT INTO `deal_business` VALUES(694, '30');
INSERT INTO `deal_business` VALUES(695, '31');
INSERT INTO `deal_business` VALUES(696, '32');
INSERT INTO `deal_business` VALUES(696, '33');
INSERT INTO `deal_business` VALUES(697, '34');
INSERT INTO `deal_business` VALUES(698, '35');
INSERT INTO `deal_business` VALUES(698, '36');
INSERT INTO `deal_business` VALUES(699, '37');
INSERT INTO `deal_business` VALUES(700, '38');
INSERT INTO `deal_business` VALUES(701, '39');
INSERT INTO `deal_business` VALUES(702, '40');
INSERT INTO `deal_business` VALUES(707, '41');
INSERT INTO `deal_business` VALUES(708, '42');
INSERT INTO `deal_business` VALUES(709, '43');
INSERT INTO `deal_business` VALUES(710, '44');
INSERT INTO `deal_business` VALUES(711, '45');
INSERT INTO `deal_business` VALUES(711, '46');
INSERT INTO `deal_business` VALUES(711, '47');
INSERT INTO `deal_business` VALUES(712, '48');
INSERT INTO `deal_business` VALUES(713, '49');
INSERT INTO `deal_business` VALUES(714, '50');
INSERT INTO `deal_business` VALUES(715, '51');
INSERT INTO `deal_business` VALUES(716, '52');
INSERT INTO `deal_business` VALUES(717, '53');
INSERT INTO `deal_business` VALUES(718, '54');
INSERT INTO `deal_business` VALUES(718, '55');
INSERT INTO `deal_business` VALUES(719, '56');
INSERT INTO `deal_business` VALUES(720, '57');
INSERT INTO `deal_business` VALUES(721, '58');
INSERT INTO `deal_business` VALUES(722, '59');
INSERT INTO `deal_business` VALUES(723, '60');
INSERT INTO `deal_business` VALUES(724, '61');
INSERT INTO `deal_business` VALUES(725, '62');
INSERT INTO `deal_business` VALUES(726, '63');
INSERT INTO `deal_business` VALUES(727, '64');
INSERT INTO `deal_business` VALUES(727, '65');
INSERT INTO `deal_business` VALUES(728, '66');
INSERT INTO `deal_business` VALUES(729, '67');
INSERT INTO `deal_business` VALUES(729, '68');
INSERT INTO `deal_business` VALUES(730, '69');
INSERT INTO `deal_business` VALUES(730, '70');
INSERT INTO `deal_business` VALUES(731, '71');
INSERT INTO `deal_business` VALUES(733, '72');
INSERT INTO `deal_business` VALUES(734, '73');
INSERT INTO `deal_business` VALUES(738, '74');
INSERT INTO `deal_business` VALUES(739, '75');
INSERT INTO `deal_business` VALUES(740, '76');
INSERT INTO `deal_business` VALUES(741, '77');
INSERT INTO `deal_business` VALUES(742, '78');
INSERT INTO `deal_business` VALUES(743, '79');
INSERT INTO `deal_business` VALUES(744, '80');
INSERT INTO `deal_business` VALUES(745, '81');
INSERT INTO `deal_business` VALUES(746, '82');
INSERT INTO `deal_business` VALUES(747, '83');
INSERT INTO `deal_business` VALUES(748, '84');
INSERT INTO `deal_business` VALUES(749, '85');
INSERT INTO `deal_business` VALUES(751, '86');
INSERT INTO `deal_business` VALUES(753, '87');
INSERT INTO `deal_business` VALUES(754, '88');
INSERT INTO `deal_business` VALUES(755, '89');
INSERT INTO `deal_business` VALUES(755, '90');
INSERT INTO `deal_business` VALUES(756, '91');
INSERT INTO `deal_business` VALUES(756, '92');
INSERT INTO `deal_business` VALUES(756, '93');
INSERT INTO `deal_business` VALUES(756, '94');
INSERT INTO `deal_business` VALUES(757, '95');
INSERT INTO `deal_business` VALUES(758, '96');
INSERT INTO `deal_business` VALUES(759, '97');
INSERT INTO `deal_business` VALUES(760, '98');
INSERT INTO `deal_business` VALUES(761, '99');
INSERT INTO `deal_business` VALUES(762, '100');
INSERT INTO `deal_business` VALUES(763, '101');

-- --------------------------------------------------------

--
-- Table structure for table `deal_tag`
--

CREATE TABLE `deal_tag` (
  `deal_id` int(10) NOT NULL,
  `tag_id` int(5) NOT NULL,
  KEY `deal_id` (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_tag`
--

INSERT INTO `deal_tag` VALUES(691, 21);
INSERT INTO `deal_tag` VALUES(691, 36);
INSERT INTO `deal_tag` VALUES(692, 11);
INSERT INTO `deal_tag` VALUES(692, 37);
INSERT INTO `deal_tag` VALUES(693, 16);
INSERT INTO `deal_tag` VALUES(693, 38);
INSERT INTO `deal_tag` VALUES(694, 1);
INSERT INTO `deal_tag` VALUES(694, 2);
INSERT INTO `deal_tag` VALUES(695, 1);
INSERT INTO `deal_tag` VALUES(695, 35);
INSERT INTO `deal_tag` VALUES(696, 5);
INSERT INTO `deal_tag` VALUES(696, 39);
INSERT INTO `deal_tag` VALUES(697, 1);
INSERT INTO `deal_tag` VALUES(697, 2);
INSERT INTO `deal_tag` VALUES(698, 11);
INSERT INTO `deal_tag` VALUES(698, 40);
INSERT INTO `deal_tag` VALUES(699, 5);
INSERT INTO `deal_tag` VALUES(699, 41);
INSERT INTO `deal_tag` VALUES(699, 21);
INSERT INTO `deal_tag` VALUES(699, 42);
INSERT INTO `deal_tag` VALUES(700, 14);
INSERT INTO `deal_tag` VALUES(700, 27);
INSERT INTO `deal_tag` VALUES(701, 5);
INSERT INTO `deal_tag` VALUES(701, 43);
INSERT INTO `deal_tag` VALUES(702, 11);
INSERT INTO `deal_tag` VALUES(702, 44);
INSERT INTO `deal_tag` VALUES(703, 11);
INSERT INTO `deal_tag` VALUES(703, 45);
INSERT INTO `deal_tag` VALUES(704, 19);
INSERT INTO `deal_tag` VALUES(704, 46);
INSERT INTO `deal_tag` VALUES(704, 19);
INSERT INTO `deal_tag` VALUES(704, 47);
INSERT INTO `deal_tag` VALUES(705, 23);
INSERT INTO `deal_tag` VALUES(705, 48);
INSERT INTO `deal_tag` VALUES(706, 11);
INSERT INTO `deal_tag` VALUES(706, 45);
INSERT INTO `deal_tag` VALUES(707, 7);
INSERT INTO `deal_tag` VALUES(707, 49);
INSERT INTO `deal_tag` VALUES(708, 7);
INSERT INTO `deal_tag` VALUES(708, 50);
INSERT INTO `deal_tag` VALUES(708, 33);
INSERT INTO `deal_tag` VALUES(708, 51);
INSERT INTO `deal_tag` VALUES(709, 33);
INSERT INTO `deal_tag` VALUES(709, 52);
INSERT INTO `deal_tag` VALUES(710, 5);
INSERT INTO `deal_tag` VALUES(710, 53);
INSERT INTO `deal_tag` VALUES(711, 1);
INSERT INTO `deal_tag` VALUES(711, 13);
INSERT INTO `deal_tag` VALUES(712, 5);
INSERT INTO `deal_tag` VALUES(712, 54);
INSERT INTO `deal_tag` VALUES(713, 16);
INSERT INTO `deal_tag` VALUES(713, 17);
INSERT INTO `deal_tag` VALUES(714, 16);
INSERT INTO `deal_tag` VALUES(714, 17);
INSERT INTO `deal_tag` VALUES(715, 7);
INSERT INTO `deal_tag` VALUES(715, 55);
INSERT INTO `deal_tag` VALUES(716, 5);
INSERT INTO `deal_tag` VALUES(716, 56);
INSERT INTO `deal_tag` VALUES(717, 7);
INSERT INTO `deal_tag` VALUES(718, 33);
INSERT INTO `deal_tag` VALUES(718, 57);
INSERT INTO `deal_tag` VALUES(719, 14);
INSERT INTO `deal_tag` VALUES(719, 58);
INSERT INTO `deal_tag` VALUES(720, 7);
INSERT INTO `deal_tag` VALUES(720, 59);
INSERT INTO `deal_tag` VALUES(721, 1);
INSERT INTO `deal_tag` VALUES(721, 35);
INSERT INTO `deal_tag` VALUES(722, 16);
INSERT INTO `deal_tag` VALUES(722, 38);
INSERT INTO `deal_tag` VALUES(723, 7);
INSERT INTO `deal_tag` VALUES(723, 49);
INSERT INTO `deal_tag` VALUES(724, 7);
INSERT INTO `deal_tag` VALUES(724, 60);
INSERT INTO `deal_tag` VALUES(725, 1);
INSERT INTO `deal_tag` VALUES(725, 35);
INSERT INTO `deal_tag` VALUES(726, 1);
INSERT INTO `deal_tag` VALUES(726, 61);
INSERT INTO `deal_tag` VALUES(727, 1);
INSERT INTO `deal_tag` VALUES(727, 62);
INSERT INTO `deal_tag` VALUES(728, 5);
INSERT INTO `deal_tag` VALUES(728, 63);
INSERT INTO `deal_tag` VALUES(729, 1);
INSERT INTO `deal_tag` VALUES(729, 35);
INSERT INTO `deal_tag` VALUES(730, 14);
INSERT INTO `deal_tag` VALUES(730, 64);
INSERT INTO `deal_tag` VALUES(731, 7);
INSERT INTO `deal_tag` VALUES(731, 50);
INSERT INTO `deal_tag` VALUES(732, 33);
INSERT INTO `deal_tag` VALUES(732, 65);
INSERT INTO `deal_tag` VALUES(733, 16);
INSERT INTO `deal_tag` VALUES(733, 66);
INSERT INTO `deal_tag` VALUES(734, 11);
INSERT INTO `deal_tag` VALUES(734, 67);
INSERT INTO `deal_tag` VALUES(734, 11);
INSERT INTO `deal_tag` VALUES(734, 68);
INSERT INTO `deal_tag` VALUES(735, 11);
INSERT INTO `deal_tag` VALUES(735, 69);
INSERT INTO `deal_tag` VALUES(735, 11);
INSERT INTO `deal_tag` VALUES(735, 70);
INSERT INTO `deal_tag` VALUES(736, 19);
INSERT INTO `deal_tag` VALUES(736, 46);
INSERT INTO `deal_tag` VALUES(736, 19);
INSERT INTO `deal_tag` VALUES(736, 47);
INSERT INTO `deal_tag` VALUES(737, 19);
INSERT INTO `deal_tag` VALUES(737, 47);
INSERT INTO `deal_tag` VALUES(738, 7);
INSERT INTO `deal_tag` VALUES(738, 71);
INSERT INTO `deal_tag` VALUES(739, 9);
INSERT INTO `deal_tag` VALUES(739, 72);
INSERT INTO `deal_tag` VALUES(740, 14);
INSERT INTO `deal_tag` VALUES(740, 64);
INSERT INTO `deal_tag` VALUES(741, 14);
INSERT INTO `deal_tag` VALUES(741, 27);
INSERT INTO `deal_tag` VALUES(742, 11);
INSERT INTO `deal_tag` VALUES(742, 73);
INSERT INTO `deal_tag` VALUES(743, 5);
INSERT INTO `deal_tag` VALUES(743, 74);
INSERT INTO `deal_tag` VALUES(744, 11);
INSERT INTO `deal_tag` VALUES(744, 67);
INSERT INTO `deal_tag` VALUES(745, 7);
INSERT INTO `deal_tag` VALUES(745, 71);
INSERT INTO `deal_tag` VALUES(746, 9);
INSERT INTO `deal_tag` VALUES(746, 10);
INSERT INTO `deal_tag` VALUES(747, 7);
INSERT INTO `deal_tag` VALUES(747, 71);
INSERT INTO `deal_tag` VALUES(748, 21);
INSERT INTO `deal_tag` VALUES(748, 42);
INSERT INTO `deal_tag` VALUES(749, 7);
INSERT INTO `deal_tag` VALUES(749, 75);
INSERT INTO `deal_tag` VALUES(750, 33);
INSERT INTO `deal_tag` VALUES(750, 76);
INSERT INTO `deal_tag` VALUES(751, 77);
INSERT INTO `deal_tag` VALUES(751, 78);
INSERT INTO `deal_tag` VALUES(752, 11);
INSERT INTO `deal_tag` VALUES(752, 69);
INSERT INTO `deal_tag` VALUES(753, 5);
INSERT INTO `deal_tag` VALUES(753, 79);
INSERT INTO `deal_tag` VALUES(754, 5);
INSERT INTO `deal_tag` VALUES(754, 79);
INSERT INTO `deal_tag` VALUES(756, 11);
INSERT INTO `deal_tag` VALUES(756, 37);
INSERT INTO `deal_tag` VALUES(757, 1);
INSERT INTO `deal_tag` VALUES(757, 80);
INSERT INTO `deal_tag` VALUES(758, 1);
INSERT INTO `deal_tag` VALUES(758, 2);
INSERT INTO `deal_tag` VALUES(759, 1);
INSERT INTO `deal_tag` VALUES(759, 80);
INSERT INTO `deal_tag` VALUES(760, 21);
INSERT INTO `deal_tag` VALUES(760, 81);
INSERT INTO `deal_tag` VALUES(761, 14);
INSERT INTO `deal_tag` VALUES(761, 82);
INSERT INTO `deal_tag` VALUES(761, 1);
INSERT INTO `deal_tag` VALUES(761, 83);
INSERT INTO `deal_tag` VALUES(762, 7);
INSERT INTO `deal_tag` VALUES(762, 84);
INSERT INTO `deal_tag` VALUES(763, 16);
INSERT INTO `deal_tag` VALUES(763, 66);
INSERT INTO `deal_tag` VALUES(764, 19);
INSERT INTO `deal_tag` VALUES(764, 85);
INSERT INTO `deal_tag` VALUES(765, 11);
INSERT INTO `deal_tag` VALUES(765, 70);
INSERT INTO `deal_tag` VALUES(766, 11);
INSERT INTO `deal_tag` VALUES(766, 67);
INSERT INTO `deal_tag` VALUES(767, 19);
INSERT INTO `deal_tag` VALUES(767, 86);
INSERT INTO `deal_tag` VALUES(768, 23);
INSERT INTO `deal_tag` VALUES(768, 87);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `division_id` int(5) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(50) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` VALUES(1, 'san-francisco', 37.7749, -122.419);
INSERT INTO `division` VALUES(2, 'new-york', 40.7144, -74.006);
INSERT INTO `division` VALUES(3, 'chicago', 41.8781, -87.6298);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `source_id` int(3) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(50) NOT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `source`
--

INSERT INTO `source` VALUES(1, 'Group On');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(5) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` VALUES(1, 'Beauty & Spas');
INSERT INTO `tags` VALUES(2, 'Massage');
INSERT INTO `tags` VALUES(3, 'Professional Services');
INSERT INTO `tags` VALUES(4, 'Photography');
INSERT INTO `tags` VALUES(5, 'Arts and Entertainment');
INSERT INTO `tags` VALUES(6, 'Bus Tours');
INSERT INTO `tags` VALUES(7, 'Restaurants');
INSERT INTO `tags` VALUES(8, 'Italian Restaurant');
INSERT INTO `tags` VALUES(9, 'Automotive');
INSERT INTO `tags` VALUES(10, 'Car Wash & Detailing');
INSERT INTO `tags` VALUES(11, 'Shopping');
INSERT INTO `tags` VALUES(12, 'Hardware Stores');
INSERT INTO `tags` VALUES(13, 'Laser Hair Removal');
INSERT INTO `tags` VALUES(14, 'Health & Fitness');
INSERT INTO `tags` VALUES(15, 'Fitness Classes');
INSERT INTO `tags` VALUES(16, 'Travel');
INSERT INTO `tags` VALUES(17, 'Hotel');
INSERT INTO `tags` VALUES(18, 'Kitchen & Bath');
INSERT INTO `tags` VALUES(19, 'Home Services');
INSERT INTO `tags` VALUES(20, 'Home');
INSERT INTO `tags` VALUES(21, 'Education');
INSERT INTO `tags` VALUES(22, 'Elementary Schools');
INSERT INTO `tags` VALUES(23, 'Pets');
INSERT INTO `tags` VALUES(24, 'Breeders');
INSERT INTO `tags` VALUES(25, 'Clothing Sales');
INSERT INTO `tags` VALUES(26, 'Day Spas');
INSERT INTO `tags` VALUES(27, 'Yoga');
INSERT INTO `tags` VALUES(28, 'Sporting Events');
INSERT INTO `tags` VALUES(29, 'Music & DVDs');
INSERT INTO `tags` VALUES(30, 'Dance');
INSERT INTO `tags` VALUES(31, 'Dry Cleaning & Laundry');
INSERT INTO `tags` VALUES(32, 'Keys & Locksmiths');
INSERT INTO `tags` VALUES(33, 'Food & Drink');
INSERT INTO `tags` VALUES(34, 'Oil Change');
INSERT INTO `tags` VALUES(35, 'Spa Package');
INSERT INTO `tags` VALUES(36, 'Specialty Schools');
INSERT INTO `tags` VALUES(37, 'Sporting Goods Store');
INSERT INTO `tags` VALUES(38, 'Car Rental');
INSERT INTO `tags` VALUES(39, 'Plane & Helicopter Tours');
INSERT INTO `tags` VALUES(40, 'Eyewear');
INSERT INTO `tags` VALUES(41, 'Arts/Crafts/Hobbies');
INSERT INTO `tags` VALUES(42, 'Art Classes');
INSERT INTO `tags` VALUES(43, 'Outdoor Pursuits');
INSERT INTO `tags` VALUES(44, 'Mattresses');
INSERT INTO `tags` VALUES(45, 'Home Decor');
INSERT INTO `tags` VALUES(46, 'Gardeners');
INSERT INTO `tags` VALUES(47, 'Interior Designers & Decorators');
INSERT INTO `tags` VALUES(48, 'Pet Store');
INSERT INTO `tags` VALUES(49, 'Mexican/Latin Restaurant');
INSERT INTO `tags` VALUES(50, 'Coffee & Tea');
INSERT INTO `tags` VALUES(51, 'Espresso Bars');
INSERT INTO `tags` VALUES(52, 'Wineries');
INSERT INTO `tags` VALUES(53, 'Walking Tours');
INSERT INTO `tags` VALUES(54, 'Art Galleries');
INSERT INTO `tags` VALUES(55, 'Fast Food');
INSERT INTO `tags` VALUES(56, 'Boating');
INSERT INTO `tags` VALUES(57, 'Dessert/Bakery');
INSERT INTO `tags` VALUES(58, 'Sexy Fitness');
INSERT INTO `tags` VALUES(59, 'Fondue');
INSERT INTO `tags` VALUES(60, 'Asian/Sushi');
INSERT INTO `tags` VALUES(61, 'Waxing');
INSERT INTO `tags` VALUES(62, 'Hair Salon');
INSERT INTO `tags` VALUES(63, 'Amusement Parks');
INSERT INTO `tags` VALUES(64, 'Dentists');
INSERT INTO `tags` VALUES(65, 'Specialty Food');
INSERT INTO `tags` VALUES(66, 'Resorts');
INSERT INTO `tags` VALUES(67, 'Fabric Stores');
INSERT INTO `tags` VALUES(68, 'Arts & Crafts Supplies');
INSERT INTO `tags` VALUES(69, 'Photography Stores & Services');
INSERT INTO `tags` VALUES(70, 'Art');
INSERT INTO `tags` VALUES(71, 'American/Traditional');
INSERT INTO `tags` VALUES(72, 'Tires & Wheels');
INSERT INTO `tags` VALUES(73, 'Framing');
INSERT INTO `tags` VALUES(74, 'Fun Center');
INSERT INTO `tags` VALUES(75, 'Cafe');
INSERT INTO `tags` VALUES(76, 'Alcohol Store');
INSERT INTO `tags` VALUES(77, 'Nightlife');
INSERT INTO `tags` VALUES(78, 'Pubs/Sports Bars');
INSERT INTO `tags` VALUES(79, 'Theater & Plays');
INSERT INTO `tags` VALUES(80, 'Nail Salon');
INSERT INTO `tags` VALUES(81, 'Dance Lessons');
INSERT INTO `tags` VALUES(82, 'Weight Loss Centers');
INSERT INTO `tags` VALUES(83, 'Medical Spas');
INSERT INTO `tags` VALUES(84, 'Lebanese');
INSERT INTO `tags` VALUES(85, 'Carpet Cleaning');
INSERT INTO `tags` VALUES(86, 'Lawn Care Services');
INSERT INTO `tags` VALUES(87, 'Pet Services');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deals_insert_info`
--
ALTER TABLE `deals_insert_info`
  ADD CONSTRAINT `deals_insert_info_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`deal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deal_business`
--
ALTER TABLE `deal_business`
  ADD CONSTRAINT `deal_business_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`deal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deal_tag`
--
ALTER TABLE `deal_tag`
  ADD CONSTRAINT `deal_tag_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`deal_id`) ON DELETE CASCADE ON UPDATE CASCADE;
