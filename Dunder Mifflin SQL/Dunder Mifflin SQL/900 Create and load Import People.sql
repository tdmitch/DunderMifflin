USE DunderMifflin
GO

/*
	Script name: Create and load Import People
	Author: Tim Mitchell (tmitchell@tyleris.com)
	Date: 2/3/2021

	Purpose: This script loads the [import].[People] table, which is some
			interesting (at least to me!) data about characters from
			The Office. This data was originally scraped from IMDB with 
			*some* cleanup herein.

			This data is not part of the larger DunderMifflin structure,
			and is included just as a geeky reference for true fans of
			The Office.

	Change log:
		-- 
*/

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'import')
	EXEC sp_executesql N'CREATE SCHEMA [import]'

GO


IF (OBJECT_ID('import.People') IS NOT NULL)
	DROP TABLE import.People

CREATE TABLE import.People
(
	ActorName VARCHAR(200)
	, ActorName2 VARCHAR(200)
	, CharacterName VARCHAR(200)
	, CompanyName VARCHAR(200)
	, Title VARCHAR(200)
	, NumberOfEpisodes SMALLINT
	, YearsActive VARCHAR(20)
	, Export BIT DEFAULT 1
)


-- Data from IMDB as of 12/23/2019
INSERT import.People
(
	ActorName
	, ActorName2
	, CharacterName
	, NumberOfEpisodes
	, YearsActive
)
VALUES ('Rainn Wilson', 'Rainn Wilson', 'Dwight Schrute', '188', '2005-2013')
	, ('John Krasinski', 'John Krasinski', 'Jim Halpert', '188', '2005-2013')
	, ('Jenna Fischer', 'Jenna Fischer', 'Pam Beesly', '188', '2005-2013')
	, ('Leslie David Baker', 'Leslie David Baker', 'Stanley Hudson', '188', '2005-2013')
	, ('Brian Baumgartner', 'Brian Baumgartner', 'Kevin Malone', '188', '2005-2013')
	, ('Angela Kinsey', 'Angela Kinsey', 'Angela Martin', '188', '2005-2013')
	, ('Phyllis Smith', 'Phyllis Smith', 'Phyllis Vance', '188', '2005-2013')
	, ('Kate Flannery', 'Kate Flannery', 'Meredith Palmer', '187', '2005-2013')
	, ('Creed Bratton', 'Creed Bratton', 'Creed Bratton', '180', '2005-2013')
	, ('Oscar Nuñez', 'Oscar Nuñez', 'Oscar Martinez', '177', '2005-2013')
	, ('B.J. Novak', 'B.J. Novak', 'Ryan Howard', '168', '2005-2013')
	, ('Mindy Kaling', 'Mindy Kaling', 'Kelly Kapoor', '161', '2005-2013')
	, ('Ed Helms', 'Ed Helms', 'Andy Bernard', '152', '2006-2013')
	, ('Paul Lieberstein', 'Paul Lieberstein', 'Toby Flenderson', '141', '2005-2013')
	, ('Steve Carell', 'Steve Carell', 'Michael Scott', '140', '2005-2013')
	, ('Craig Robinson', 'Craig Robinson', 'Darryl Philbin', '120', '2005-2013')
	, ('Ellie Kemper', 'Ellie Kemper', 'Erin Hannon', '102', '2009-2013')
	, ('Zach Woods', 'Zach Woods', 'Gabe Lewis', '51', '2010-2013')
	, ('Melora Hardin', 'Melora Hardin', 'Jan Levinson', '43', '2005-2013')
	, ('Andy Buckley', 'Andy Buckley', 'David Wallace', '37', '2006-2013')
	, ('Catherine Tate', 'Catherine Tate', 'Nellie Bertram', '34', '2011-2013')
	, ('David Denman', 'David Denman', 'Roy Anderson', '32', '2005-2012')
	, ('Rashida Jones', 'Rashida Jones', 'Karen Filippelli', '27', '2006-2011')
	, ('James Spader', 'James Spader', 'Robert California', '25', '2011-2012')
	, ('Robert R. Shafer', 'Robert R. Shafer', 'Bob Vance', '25', '2005-2013')
	, ('Hugh Dane', 'Hugh Dane', 'Hank', '22', '2005-2013')
	, ('Jake Lacy', 'Jake Lacy', 'Pete Miller', '21', '2012-2013')
	, ('Clark Duke', 'Clark Duke', 'Clark', '19', '2012-2013')
	, ('Mark Proksch', 'Mark Proksch', 'Nate', '19', '2010-2013')
	, ('Amy Ryan', 'Amy Ryan', 'Holly Flax', '17', '2008-2011')
	, ('David Koechner', 'David Koechner', 'Todd Packer', '16', '2005-2013')
	, ('Calvin Tenner', 'Calvin Tenner', 'Calvin', '15', '2008-2013')
	, ('Ameenah Kaplan', 'Ameenah Kaplan', 'Val', '14', '2011-2013')
	, ('Jack Coleman', 'Jack Coleman', 'State Senator Rob Lipton', '14', '2010-2013')
	, ('Michael Schur', 'Michael Schur', 'Mose', '13', '2006-2013')
	, ('Lindsey Broad', 'Lindsey Broad', 'Cathy Simms', '12', '2011-2012')
	, ('Linda Purl', 'Linda Purl', 'Helene Beesly', '9', '2009-2013')
	, ('Kathy Bates', 'Kathy Bates', 'Jo Bennett', '8', '2010-2011')
	, ('Hidetoshi Imura', 'Hidetoshi Imura', 'Hidetoshi Hasagawa', '8', '2009-2013')
	, ('Charles Esten', 'Charles Esten', 'Josh Porter', '8', '2006')
	, ('Idris Elba', 'Idris Elba', 'Charles Miner', '7', '2009')
	, ('Nancy Carell', 'Nancy Carell', 'Carol Stills', '8', '2005-2013')
	, ('Karly Rothenberg', 'Karly Rothenberg', 'Madge', '7', '2005-2011')
	, ('Ursula Burton', 'Ursula Burton', 'Hannah Smotridge-Barr', '6', '2006')
	, ('Sam Richardson', 'Sam Richardson', 'Colin, Athlead Employee', '6', '2012-2013')
	, ('Stephen Saux', 'Stephen Saux', 'Justin Spitzer', '6', '2006-2013')
	, ('Chris Diamantopoulos', 'Chris Diamantopoulos', 'Brian', '5', '2013')
	, ('Amy Pietz', 'Amy Pietz', 'Donna', '5', '2010')
	, ('Nelson Franklin', 'Nelson Franklin', 'Nick', '5', '2008-2010')
	, ('Lee Eisenberg', 'Lee Eisenberg', 'Gino', '5', '2006-2011')
	, ('Nora Kirkpatrick', 'Nora Kirkpatrick', 'Esther', '5', '2013')
	, ('Joanne Carlsen', 'Joanne Carlsen', 'Teri Hudson', '5', '2005-2012')
	, ('Sienna Paige Strull', 'Sienna Paige Strull', 'Cecelia Halpert', '5', '2012-2013')
	, ('Marcus A. York', 'Marcus A. York', 'Billy Merchant', '4', '2006-2009')
	, ('Will Ferrell', 'Will Ferrell', 'Deangelo Vickers', '4', '2011')
	, ('Tom Chick', 'Tom Chick', 'Gil', '4', '2006-2007')
	, ('Suzanne Watson', 'Suzanne Watson', 'Stephanie', '4', '2009')
	, ('Rick Overton', 'Rick Overton', 'Mr. Beesly', '4', '2009-2010')
	, ('Eleanor Seigler', 'Eleanor Seigler', 'Jessica', '4', '2011-2012')
	, ('Gene Stupnitsky', 'Gene Stupnitsky', 'Leo', '4', '2006-2009')
	, ('Adam Lustick', 'Adam Lustick', 'Athlead Employee', '4', '2012-2013')
	, ('James Urbaniak', 'James Urbaniak', 'Rolf', '4', '2009-2013')
	, ('Ben Silverman', 'Ben Silverman', 'Isaac', '4', '2012-2013')
	, ('Bailey Kate Strull', 'Bailey Kate Strull', 'Cecelia Halpert', '4', '2012-2013')
	, ('Michael Tuba Heatherton', 'Michael Tuba Heatherton', 'The Minister', '4', '2010-2013')
	, ('Lisa K. Wyatt', 'Lisa K. Wyatt', 'Lynn', '4', '2009')
	, ('Kelen Coleman', 'Kelen Coleman', 'Isabel Poreba', '5', '2009-2013')
	, ('Noel Petok', 'Noel Petok', 'Troy Undercook', '4', '2007-2013')
	, ('Algerita Wynn', 'Algerita Wynn', 'Cynthia', '4', '2009-2011')
	, ('Trish Gates', 'Trish Gates', 'Stacy', '4', '2005-2007')
	, ('Devon Abner', 'Devon Abner', 'Devon White', '4', '2005-2013')
	, ('Amy Adams', 'Amy Adams', 'Katy', '3', '2005-2006')
	, ('Patrice O''Neal', 'Patrice O''Neal', 'Lonny', '3', '2005-2007')
	, ('Rob Huebel', 'Rob Huebel', 'A. J.', '3', '2009-2010')
	, ('Sam Daly', 'Sam Daly', 'Matt', '3', '2009-2010')
	, ('Dan Cole', 'Dan Cole', 'Dan Gore', '3', '2006-2007')
	, ('Nicholas D''Agosto', 'Nicholas D''Agosto', 'Hunter', '3', '2007')
	, ('Michael Patrick McGill', 'Michael Patrick McGill', 'Kenny Anderson', '3', '2007-2012')
	, ('Cody Horn', 'Cody Horn', 'Jordan Garfield', '3', '2011')
	, ('Mike Bruner', 'Mike Bruner', 'Tony Gardner', '3', '2006-2011')
	, ('Georgia Engel', 'Georgia Engel', 'Irene', '3', '2012')
	, ('Spencer Daniels', 'Spencer Daniels', 'Jake Palmer', '3', '2006-2013')
	, ('Delaney Ruth Farrell', 'Delaney Ruth Farrell', 'Sasha Flenderson', '3', '2006-2012')
	, ('Jackie Debatin', 'Jackie Debatin', 'Elizabeth the Stripper', '3', '2007-2013')
	, ('Robert Pine', 'Robert Pine', 'Gerald Halpert', '3', '2009-2010')
	, ('Taylar Hollomon', 'Taylar Hollomon', 'Jada', '3', '2010-2012')
	, ('Sendhil Ramamurthy', 'Sendhil Ramamurthy', 'Ravi', '3', '2012-2013')
	, ('John Hartmann', 'John Hartmann', 'Kendall', '3', '2008-2009')
	, ('Matt Jones', 'Matt Jones', 'Zeke', '3', '2013')
	, ('Perry Smith', 'Perry Smith', 'Betsy Halpert', '4', '2007-2013')
	, ('Lance Krall', 'Lance Krall', 'Sensei Ira', '2', '2005-2013')
	, ('Larry Wilmore', 'Larry Wilmore', 'Mr. Brown', '2', '2005-2006')
	, ('Emily Evan Rae', 'Emily Evan Rae', 'Rebecca Prince', '2', '2009')
	, ('Vivianne Collins', 'Vivianne Collins', 'Headquarter Receptionist', '2', '2006-2007')
	, ('Adam Jamal Craig', 'Adam Jamal Craig', 'Rolando', '2', '2007-2009')
	, ('Wayne Wilderson', 'Wayne Wilderson', 'Martin', '2', '2006')
	, ('Beth Grant', 'Beth Grant', 'Dwight''s Babysitter', '2', '2008-2013')
	, ('Chris Gethard', 'Chris Gethard', 'Trevor', '2', '2012-2013')
	, ('Ranjit Chowdhry', 'Ranjit Chowdhry', 'Vikram', '2', '2007-2009')
	, ('Rich Sommer', 'Rich Sommer', 'Alex', '2', '2008')
	, ('Roseanne Barr', 'Roseanne Barr', 'Carla Fern', '2', '2013')
	, ('Tug Coker', 'Tug Coker', 'Pete Halpert', '2', '2008-2009')
	, ('Timothy Olyphant', 'Timothy Olyphant', 'Danny Cordray', '2', '2010')
	, ('Josh Groban', 'Josh Groban', 'Walter Bernard, Jr.', '2', '2011-2012')
	, ('Jennifer Ann Burton', 'Jennifer Ann Burton', 'NY Corporate Employee', '2', '2008')
	, ('Jahmilla Jackson', 'Jahmilla Jackson', 'Darryl''s Sister', '2', '2009-2011')
	, ('Michael Daniel Cassady', 'Michael Daniel Cassady', 'Gideon', '2', '2011')
	, ('Dale Raoul', 'Dale Raoul', 'Ronni', '2', '2008-2009')
	, ('Phil Abrams', 'Phil Abrams', 'Shelby Thomas Weems', '2', '2010')
	, ('Keeshan Giles', 'Keeshan Giles', 'Hospital Employee', '2', '2010')
	, ('Blake Robbins', 'Blake Robbins', 'Tom Halpert', '4', '2008-2013')
	, ('Allan Havey', 'Allan Havey', 'Mr. Bruegger', '3', '2013')
	, ('Jake Kalender', 'Jake Kalender', 'Young Michael Scott', '2', '2006-2007')
	, ('Alec Gray', 'Alec Gray', 'Blonde Kid', '2', '2005-2006')
	, ('Owen Daniels', 'Owen Daniels', 'Eight-Year-Old Kid', '2', '2007-2010')
	, ('Mary Gillis', 'Mary Gillis', 'Aunt Shirley', '2', '2013')
	, ('Tina Huang', 'Tina Huang', 'On-Air Reporter', '2', '2010')
	, ('Fred Cross', 'Fred Cross', 'Wesley Silver', '2', '2013')
	, ('Jean Villepique', 'Jean Villepique', 'Rachel Wallace', '2', '2007-2010')
	, ('Omi Vaidya', 'Omi Vaidya', 'Sadiq', '2', '2005-2007')
	, ('Peggy Stewart', 'Peggy Stewart', 'Sylvia', '2', '2009-2010')
	, ('Jerry Minor', 'Jerry Minor', 'Brandon', '2', '2012')
	, ('Eric Wareheim', 'Eric Wareheim', 'Gabor', '2', '2013')
	, ('Jazz Raycole', 'Jazz Raycole', 'Melissa Hudson', '2', '2006-2007')
	, ('Katherine Flynn', 'Katherine Flynn', 'Receptionist', '2', '2009')
	, ('Elvy Yost', 'Elvy Yost', 'Megan', '2', '2008-2009')
	, ('Anna Camp', 'Anna Camp', 'Penny Beesly', '2', '2009')
	, ('Daniel Amerman', 'Daniel Amerman', 'Russell', '2', '2012-2013')
	, ('Lori Murphy Saux', 'Lori Murphy Saux', 'Announcer', '2', '2008-2012')
	, ('Kelly Daly', 'Kelly Daly', 'Bertha', '3', '2013')
	, ('Kamala Jones', 'Kamala Jones', 'Edna', '3', '2013')
	, ('Jon Morgan Woodward', 'Jon Morgan Woodward', 'Albany Employee', '2', '2009')
	, ('Blake Garrett Rosenthal', 'Blake Garrett Rosenthal', 'Cameron', '2', '2010-2013')
	, ('Sean L. Malin', 'Sean L. Malin', 'Andy''s Competition', '2', '2013')
	, ('Tim Meadows', 'Tim Meadows', 'Christian', '1', '2005')
	, ('Ken Howard', 'Ken Howard', 'Ed Truck', '1', '2006')
	, ('Charlie Hartsock', 'Charlie Hartsock', 'Travel Agent', '1', '2005')
	, ('Matt DeCaro', 'Matt DeCaro', 'Jerry', '1', '2005')
	, ('Henriette Mantel', 'Henriette Mantel', 'Office Worker', '1', '2005')
	, ('Mike McCaul', 'Mike McCaul', 'Office Worker', '1', '2005')
	, ('Scott Adsit', 'Scott Adsit', 'The Photographer', '1', '2006')
	, ('Marilyn Brett', 'Marilyn Brett', 'Linda', '1', '2006')
	, ('Ben Carroll', 'Ben Carroll', 'Master of Ceremonies', '1', '2006')
	, ('Michael Naughton', 'Michael Naughton', 'Chris', '1', '2005')
	, ('Jerome Bettis', 'Jerome Bettis', 'Jerome Bettis', '1', '2006')
	, ('David Doty', 'David Doty', 'The Doctor', '1', '2006')
	, ('Rob Riggle', 'Rob Riggle', 'Captain Jack', '1', '2006')
	, ('Katie Aselton', 'Katie Aselton', 'Glove Girl', '1', '2009')
	, ('John Harrington Bland', 'John Harrington Bland', 'Bill', '1', '2005')
	, ('Jonathan Browning', 'Jonathan Browning', 'Steve', '1', '2005')
	, ('Lauren Rissman', 'Lauren Rissman', 'Exiting Co-Worker', '1', '2005')
	, ('Craig Anton', 'Craig Anton', 'Craig', '1', '2006')
	, ('Susan Foley', 'Susan Foley', 'Delivery Woman', '1', '2006')
	, ('Rob Brownstein', 'Rob Brownstein', 'Salesman', '1', '2009')
	, ('Greg Daniels', 'Greg Daniels', 'Michael''s neighbor', '1', '2005')
	, ('Lindsey Stoddart', 'Lindsey Stoddart', 'Dana', '1', '2006')
	, ('Brenda Withers', 'Brenda Withers', 'Brenda', '1', '2006')
	, ('Brooke Dillman', 'Brooke Dillman', 'Margaret', '1', '2008')
	, ('Bob Gebert', 'Bob Gebert', 'Mr. Schofield', '1', '2009')
	, ('Mike Starr', 'Mike Starr', 'Grotti', '1', '2009')
	, ('Julius Erving', 'Julius Erving', 'Julius Erving', '1', '2013')
	, ('Shannon Cochran', 'Shannon Cochran', 'Pam''s Mom', '1', '2005')
	, ('Allyson Everitt', 'Allyson Everitt', 'Chili''s Hostess', '1', '2005')
	, ('George Gaus', 'George Gaus', 'Lion Trick-or-Treater', '1', '2005')
	, ('Ken Jeong', 'Ken Jeong', 'Bill', '1', '2005')
	, ('Matt McKane', 'Matt McKane', 'Frat Guy', '1', '2005')
	, ('Robert Bagnell', 'Robert Bagnell', 'Alan', '1', '2006')
	, ('Kevin Carlson', 'Kevin Carlson', 'Edward R. Meow', '1', '2006')
	, ('Julia Prud''homme', 'Julia Prud''homme', 'The Technician', '1', '2006')
	, ('Kyle Bornheimer', 'Kyle Bornheimer', 'Adman', '1', '2007')
	, ('Yvette Nicole Brown', 'Yvette Nicole Brown', 'Paris', '1', '2007')
	, ('Lisa Darr', 'Lisa Darr', 'Barbara Allen', '1', '2007')
	, ('Gil Glasgow', 'Gil Glasgow', 'Dwight and Jim''s Customer', '1', '2007')
	, ('Potsch Boyd', 'Potsch Boyd', 'Mennonite Priest', '1', '2008')
	, ('Kelsea Button', 'Kelsea Button', 'Young Club girl', '1', '2008')
	, ('Kelly Cantley-Kashima', 'Kelly Cantley-Kashima', 'Admitting Nurse', '1', '2008')
	, ('Wendi McLendon-Covey', 'Wendi McLendon-Covey', 'Concierge Marie', '1', '2008')
	, ('Phil Reeves', 'Phil Reeves', 'Phil Maguire', '1', '2008')
	, ('Tucker Albrizzi', 'Tucker Albrizzi', 'Son', '1', '2009')
	, ('Dan Bakkedahl', 'Dan Bakkedahl', 'Roger Prince, Jr.', '1', '2009')
	, ('Kwame Boateng', 'Kwame Boateng', 'Derrick', '1', '2009')
	, ('Chris Ellis', 'Chris Ellis', 'Chris O''Keefe', '1', '2009')
	, ('Michael McCartney', 'Michael McCartney', 'Nashua Guy', '1', '2009')
	, ('Sarah Baker', 'Sarah Baker', 'Josie', '1', '2010')
	, ('Ed Lauter', 'Ed Lauter', 'Sam Stone, Sr.', '1', '2013')
	, ('Annabelle Kopack', 'Annabelle Kopack', 'Fairy Princess Trick-or-Treater', '1', '2005')
	, ('Nikki McCauley', 'Nikki McCauley', 'Mark''s Girlfriend', '1', '2005')
	, ('Beau Wirick', 'Beau Wirick', 'Frat Guy', '1', '2005')
	, ('Haley Daniels', 'Haley Daniels', 'Abby', '1', '2006')
	, ('Thomas F. Evans', 'Thomas F. Evans', 'Pretzel Vendor', '1', '2006')
	, ('Justin Meloni', 'Justin Meloni', 'Delivery Boy', '1', '2006')
	, ('Matt Price', 'Matt Price', 'Evan', '1', '2006')
	, ('Nick Armstrong', 'Nick Armstrong', 'Technician', '1', '2007')
	, ('Nathan Blank', 'Nathan Blank', 'Frisbee Student', '1', '2007')
	, ('Andrew Daly', 'Andrew Daly', 'Ben Franklin', '1', '2007')
	, ('John Ingle', 'John Ingle', 'Robert Dunder', '1', '2007')
	, ('Jim Jansen', 'Jim Jansen', 'High School Principal', '1', '2007')
	, ('Charlotte Stewart', 'Charlotte Stewart', 'Woman', '1', '2007')
	, ('Terrence Beasor', 'Terrence Beasor', 'Bill Kress', '1', '2008')
	, ('Emerson Brooks', 'Emerson Brooks', 'Air Force Recruiter', '1', '2008')
	, ('Taji Coleman', 'Taji Coleman', 'Tall Girl #', '21', '2008')
	, ('Matthew Craig', 'Matthew Craig', 'Dad', '1', '2008')
	, ('Patrick Faucette', 'Patrick Faucette', 'Policeman #', '11', '2008')
	, ('Tony Pasqualini', 'Tony Pasqualini', 'Potential Canadian Client', '1', '2008')
	, ('Vanessa Ragland', 'Vanessa Ragland', 'Linda', '1', '2008')
	, ('Angela Campolla-Sanders', 'Angela Campolla-Sanders', 'Receptionist', '1', '2009')
	, ('Dan Desmond', 'Dan Desmond', 'Roger Prince, Sr.', '1', '2009')
	, ('Ransford Doherty', 'Ransford Doherty', 'Event Security', '1', '2009')
	, ('Cindy Drummond', 'Cindy Drummond', 'Ryan''s Mom', '1', '2009')
	, ('Jennifer Hasty', 'Jennifer Hasty', 'Receptionist', '1', '2009')
	, ('Rae Latt', 'Rae Latt', 'Mother', '1', '2009')
	, ('Robin Lynch', 'Robin Lynch', 'Rose', '1', '2009')
	, ('Monnae Michaell', 'Monnae Michaell', 'The Principle', '1', '2009')
	, ('Kelii Miyata', 'Kelii Miyata', 'Mori', '1', '2009')
	, ('Connie Sawyer', 'Connie Sawyer', 'Nana', '1', '2009')
	, ('Kurt Scholler', 'Kurt Scholler', 'Ty Platt', '1', '2009')
	, ('Erica Tazel', 'Erica Tazel', 'Julia', '1', '2009')
	, ('David Grant Wright', 'David Grant Wright', 'Mr. Sylvie', '1', '2009')
	, ('David Costabile', 'David Costabile', 'Eric Ward', '1', '2010')
	, ('Maxwell Glick', 'Maxwell Glick', 'Tobias', '1', '2010')
	, ('Erica Vittina Phillips', 'Erica Vittina Phillips', 'Justine', '1', '2011')
	, ('Noah Blake', 'Noah Blake', 'Waiter', '1', '2012')
	, ('Stephen Colbert', 'Stephen Colbert', 'Broccoli Rob', '1', '2012')
	, ('Randall Park', 'Randall Park', 'Asian Jim Halpert', '1', '2012')
	, ('Clay Aiken', 'Clay Aiken', 'Clay Aiken', '2', '2013')
	, ('Will Greenberg', 'Will Greenberg', 'Sam Stone, Jr.', '1', '2013')
	, ('Jeff Hatch', 'Jeff Hatch', 'Limo Driver', '1', '2013')
	, ('Melinda Chilton', 'Melinda Chilton', 'Natural Redhead', '1', '2005')
	, ('Ryan Martin', 'Ryan Martin', 'Clerk', '1', '2005')
	, ('Jeffrey Muller', 'Jeffrey Muller', 'Mark', '1', '2005')
	, ('Ava Nisbet', 'Ava Nisbet', 'Sherry Trick-or-Treater', '1', '2005')
	, ('Christopher T. Wood', 'Christopher T. Wood', 'Chilli''s Manager', '1', '2005')
	, ('Tanveer K. Atwal', 'Tanveer K. Atwal', 'Rupa', '1', '2006')
	, ('Eliza Coleman', 'Eliza Coleman', 'Helmsman', '1', '2006')
	, ('Brittany Ishibashi', 'Brittany Ishibashi', 'Cindy', '1', '2006')
	, ('Steve Little', 'Steve Little', 'Conventioneer', '1', '2006')
	, ('Sara Van Horn', 'Sara Van Horn', 'Store Manager', '1', '2006')
	, ('Matthew Brent', 'Matthew Brent', 'Business School Student', '1', '2007')
	, ('Eric Christie', 'Eric Christie', 'Al', '1', '2007')
	, ('Kevin Dorff', 'Kevin Dorff', 'Aaron Grandy', '1', '2007')
	, ('Maile Flanagan', 'Maile Flanagan', 'Phyllis'' Sister', '1', '2007')
	, ('Tim Kang', 'Tim Kang', 'Koh', '1', '2007')
	, ('Holly Maples', 'Holly Maples', 'Diane Kelly', '1', '2007')
	, ('Anthony Russell', 'Anthony Russell', 'Chad Lite', '1', '2007')
	, ('Leon Simmons', 'Leon Simmons', 'Julius', '1', '2007')
	, ('Sean Bury', 'Sean Bury', 'Barista', '1', '2008')
	, ('Danilo Di Julio', 'Danilo Di Julio', 'Economy Passenger Phil Shea', '1', '2008')
	, ('Trevor Einhorn', 'Trevor Einhorn', 'Justin Polznik', '1', '2008')
	, ('Cassie Fliegel', 'Cassie Fliegel', 'Tall Girl #', '11', '2008')
	, ('Michael ''Mick'' Harrity', 'Michael ''Mick'' Harrity', 'Policeman #', '21', '2008')
	, ('Frederik Pohl IV', 'Frederik Pohl IV', 'Neighbor', '1', '2008')
	, ('Fredrick Burns', 'Fredrick Burns', 'Student', '1', '2009')
	, ('Max Carver', 'Max Carver', 'Eric', '1', '2009')
	, ('Dorian Frankel', 'Dorian Frankel', 'Woman', '1', '2009')
	, ('Alan Fudge', 'Alan Fudge', 'Alan Brand', '1', '2009')
	, ('Patrick LoSasso', 'Patrick LoSasso', 'Russell', '1', '2009')
	, ('Brian Patrick Mulligan', 'Brian Patrick Mulligan', 'Mark', '1', '2009')
	, ('Alyssa Preston', 'Alyssa Preston', 'Jessica', '1', '2009')
	, ('Deborah Puette', 'Deborah Puette', 'Alice', '1', '2009')
	, ('Larkin Campbell', 'Larkin Campbell', 'Shane', '1', '2010')
	, ('Evan Gaustad', 'Evan Gaustad', 'Dale', '1', '2010')
	, ('Robert Mammana', 'Robert Mammana', 'Sweeney Todd', '1', '2010')
	, ('Laurie Okin', 'Laurie Okin', 'Julie', '1', '2010')
	, ('Pete Pastore', 'Pete Pastore', 'Chief Buyer Steve Nash', '1', '2010')
	, ('Christopher Raczynski', 'Christopher Raczynski', 'Police Officer', '1', '2010')
	, ('Aaron Shure', 'Aaron Shure', 'Waiter', '1', '2010')
	, ('Eric Zuckerman', 'Eric Zuckerman', 'Store Salesman', '1', '2010')
	, ('Will Arnett', 'Will Arnett', 'Fred Henry', '1', '2011')
	, ('Sarah Bastian', 'Sarah Bastian', 'Bookstore Customer', '1', '2011')
	, ('Stephen Collins', 'Stephen Collins', 'Walter Bernard, Sr.', '1', '2011')
	, ('Robin Daléa', 'Robin Daléa', 'Chelsea''s Mother', '1', '2011')
	, ('Jaime Jorn', 'Jaime Jorn', 'Tattoo Artist', '1', '2011')
	, ('David Mazouz', 'David Mazouz', 'Bert California', '1', '2011')
	, ('Maura Tierney', 'Maura Tierney', 'Mrs. California', '1', '2011')
	, ('Wally Amos', 'Wally Amos', 'Wally Amos', '1', '2012')
	, ('Chris Bauer', 'Chris Bauer', 'Harry Jannerone', '1', '2012')
	, ('Sara Chase', 'Sara Chase', 'Laura', '1', '2012')
	, ('Laurel Coppock', 'Laurel Coppock', 'Stephanie', '1', '2012')
	, ('Michael Lanahan', 'Michael Lanahan', 'Mike', '1', '2012')
	, ('Brad Morris', 'Brad Morris', 'Glenn', '1', '2012')
	, ('Rene Gube', 'Rene Gube', 'Athlead Male Receptionist', '1', '2013')
	, ('Ryan Howard', 'Ryan Howard', 'Himself', '1', '2013')
	, ('Michael Imperioli', 'Michael Imperioli', 'Sensei Billy', '1', '2013')
	, ('Bob Odenkirk', 'Bob Odenkirk', 'Mark', '1', '2013')
	, ('R.F. Daley', 'R.F. Daley', 'O''Malley', '1', '2005')
	, ('Reid Gormly', 'Reid Gormly', 'Dave', '1', '2005')
	, ('Rodger Arlen', 'Rodger Arlen', 'Tequila Man', '1', '2006')
	, ('Gagandeep Bedi', 'Gagandeep Bedi', 'Ravi', '1', '2006')
	, ('Skyler Caleb', 'Skyler Caleb', 'CPU Guy', '1', '2006')
	, ('Josh Hodell', 'Josh Hodell', 'Josh Hodell', '1', '2006')
	, ('Roscoe Myrick', 'Roscoe Myrick', 'Waiter', '1', '2006')
	, ('Hannah Baker', 'Hannah Baker', 'Underage Girl', '1', '2007')
	, ('Scott Damian', 'Scott Damian', 'Caterer', '1', '2007')
	, ('Edward James Gage', 'Edward James Gage', 'Larry Meyers', '1', '2007')
	, ('Virginia Newcomb', 'Virginia Newcomb', 'Assistant', '1', '2007')
	, ('Patrick O''Connor', 'Patrick O''Connor', 'Lester Snyder', '1', '2007')
	, ('Shira Scott Astrof', 'Shira Scott Astrof', 'Jamie', '1', '2007')
	, ('Warren Sweeney', 'Warren Sweeney', 'Richard Corey', '1', '2007')
	, ('Allan Wasserman', 'Allan Wasserman', 'Nick Figaro', '1', '2007')
	, ('Paul Faust', 'Paul Faust', 'Paul Faust', '1', '2008')
	, ('Deb Hiett', 'Deb Hiett', 'Stewardess Beth', '1', '2008')
	, ('Jennifer Peo', 'Jennifer Peo', 'Cocktail Waitress', '1', '2008')
	, ('Steve Seagren', 'Steve Seagren', 'Cop #', '21', '2008')
	, ('Sharon Blackwood', 'Sharon Blackwood', 'Linda Prince', '1', '2009')
	, ('Tate Hanyok', 'Tate Hanyok', 'Rhee', '1', '2009')
	, ('Isheba Renee', 'Isheba Renee', 'Mikela Lasker', '1', '2009')
	, ('Amy Weaver', 'Amy Weaver', 'Keena Gifford', '1', '2009')
	, ('Vincent Angelo', 'Vincent Angelo', 'Vendor', '1', '2010')
	, ('Fay DeWitt', 'Fay DeWitt', 'Lady at the Gym', '1', '2010')
	, ('Heather Marie Marsden', 'Heather Marie Marsden', 'Kevin''s Sister', '1', '2010')
	, ('Melissa Rauch', 'Melissa Rauch', 'Cathy', '1', '2010')
	, ('Joey Slotnick', 'Joey Slotnick', 'Jerry', '1', '2010')
	, ('Kaily Smith Westbrook', 'Kaily Smith Westbrook', 'Kim', '1', '2010')
	, ('Sarah Zimmerman', 'Sarah Zimmerman', 'Other Pam', '1', '2010')
	, ('Dave Anthony', 'Dave Anthony', 'The Client', '1', '2011')
	, ('Barbara Allyne Bennet', 'Barbara Allyne Bennet', 'Old Lady', '1', '2011')
	, ('Warren Buffett', 'Warren Buffett', 'Interviewee', '1', '2011')
	, ('Phil Hawn', 'Phil Hawn', 'Park Ranger', '1', '2011')
	, ('Peter Gannon', 'Peter Gannon', 'Stu', '1', '2012')
	, ('Brett Gelman', 'Brett Gelman', 'The Magician', '1', '2012')
	, ('Andrew Santino', 'Andrew Santino', 'Buyer of Andy''s boat', '1', '2012')
	, ('Ed Begley Jr.', 'Ed Begley Jr.', 'Erin''s Biological Father', '1', '2013')
	, ('Brad William Henke', 'Brad William Henke', 'Frank', '1', '2013')
	, ('Analeis Lorig', 'Analeis Lorig', 'Athlead Employee', '1', '2013')
	, ('Andrew Donnelly', 'Andrew Donnelly', 'Mike', '1', '2005')
	, ('Dee Ryan', 'Dee Ryan', 'Marybeth', '1', '2005')
	, ('Kat Ahn', 'Kat Ahn', 'Amy', '1', '2006')
	, ('Jason Kessler', 'Jason Kessler', 'Flower Delivery Man #', '11', '2006')
	, ('Mary Kathleen Gordon', 'Mary Kathleen Gordon', 'Telemarketer wearing green sweater', '1', '2007')
	, ('Brad Graiff', 'Brad Graiff', 'Young Guy', '1', '2007')
	, ('Brian Hatton', 'Brian Hatton', 'Randy', '1', '2007')
	, ('Charles Hirsch', 'Charles Hirsch', 'Busines School Student', '1', '2007')
	, ('Janine Poreba', 'Janine Poreba', 'Amy', '1', '2007')
	, ('Michael Potter', 'Michael Potter', 'The Mediator', '1', '2007')
	, ('Drew Powell', 'Drew Powell', 'The Bartender', '1', '2007')
	, ('Liz Ross', 'Liz Ross', 'Woman in Suit', '1', '2007')
	, ('Mark Tomesek', 'Mark Tomesek', 'Kenny', '1', '2007')
	, ('Frank Maharajh', 'Frank Maharajh', 'Dandy Dale', '1', '2008')
	, ('Charlie McDermott', 'Charlie McDermott', 'Student', '1', '2008')
	, ('Barry Sigismondi', 'Barry Sigismondi', 'WB Jones', '1', '2008')
	, ('Gary Weeks', 'Gary Weeks', 'Cop #', '11', '2008')
	, ('Michelle Gunn', 'Michelle Gunn', 'Hotel Receptionist', '1', '2009')
	, ('Julie Remala', 'Julie Remala', 'Nurse', '1', '2009')
	, ('Charlie Sanders', 'Charlie Sanders', 'Cake Delivery Man', '1', '2009')
	, ('Eve Sigall', 'Eve Sigall', 'Senior Home Resident', '1', '2009')
	, ('Tom Yi', 'Tom Yi', 'Tim Dockery', '1', '2009')
	, ('Sean Davis', 'Sean Davis', 'Reed', '1', '2010')
	, ('David Mate', 'David Mate', 'Flex', '1', '2010')
	, ('Evan Peters', 'Evan Peters', 'Luke Cooper', '1', '2010')
	, ('Frank Birney', 'Frank Birney', 'Old Man', '1', '2011')
	, ('Jim Carrey', 'Jim Carrey', 'The Fingerlakes Guy', '1', '2011')
	, ('Bill Coelius', 'Bill Coelius', 'Restaurant Manager', '1', '2011')
	, ('Eugene Cordero', 'Eugene Cordero', 'Gas Station Attendant', '1', '2011')
	, ('Janet Hoskins', 'Janet Hoskins', 'Seminar Attendee', '1', '2011')
	, ('Nancy Lantis', 'Nancy Lantis', 'Amanda Fields-Shad', '1', '2011')
	, ('Seamus McCarthy', 'Seamus McCarthy', 'Leader', '1', '2011')
	, ('Dee Wallace', 'Dee Wallace', 'Ellen Bernard', '1', '2011')
	, ('Jeff Bee', 'Jeff Bee', 'Rafe', '1', '2012')
	, ('Melissa Bickerton', 'Melissa Bickerton', 'Stacy', '1', '2012')
	, ('Brandon Borror-Chappell', 'Brandon Borror-Chappell', 'Treble', '1', '2012')
	, ('Dan Castellaneta', 'Dan Castellaneta', 'Mr. Ramish', '1', '2012')
	, ('Brian Gattas', 'Brian Gattas', 'Xander', '1', '2012')
	, ('Carrie Kemper', 'Carrie Kemper', 'Molly', '1', '2012')
	, ('Tig Notaro', 'Tig Notaro', 'Single Mom', '1', '2012')
	, ('Alexander Sibaja', 'Alexander Sibaja', 'Neighbour', '1', '2012')
	, ('Paul Feig', 'Paul Feig', 'The Animal Trainer', '1', '2013')
	, ('Amy Hill', 'Amy Hill', 'Nail Salon Manager', '1', '2013')
	, ('Will McCormack', 'Will McCormack', 'Wolf', '1', '2013')
	, ('Mark McGrath', 'Mark McGrath', 'Mark McGrath', '1', '2013')
	, ('Dennis Garber', 'Dennis Garber', 'James P. Albini', '1', '2005')
	, ('Colleen Smith', 'Colleen Smith', 'Stephanie', '1', '2005')
	, ('Vali Chandrasekaran', 'Vali Chandrasekaran', 'Wali', '1', '2006')
	, ('Takayo Fischer', 'Takayo Fischer', 'Meredith''s Hospital Roommate', '1', '2007')
	, ('George Ives', 'George Ives', 'Uncle Al', '1', '2007')
	, ('Nick Lashaway', 'Nick Lashaway', 'Telemarketer', '1', '2007')
	, ('Kevin McHale', 'Kevin McHale', 'Delivery Kid', '1', '2007')
	, ('Valeri Ross', 'Valeri Ross', 'Stenographer', '1', '2007')
	, ('Jeff Witzke', 'Jeff Witzke', 'Commercial Actor', '1', '2007')
	, ('Jim Petersmith', 'Jim Petersmith', 'Professor', '1', '2008')
	, ('Paul Sass', 'Paul Sass', 'Foppy McGee', '1', '2008')
	, ('Lamont Ferrell', 'Lamont Ferrell', 'Michael', '1', '2009')
	, ('Jason Rogel', 'Jason Rogel', 'Erik', '1', '2009')
	, ('Jim Woods', 'Jim Woods', 'Bowling Alley Manager', '1', '2009')
	, ('Americus Abesamis', 'Americus Abesamis', 'Bouncer', '1', '2010')
	, ('Nicholas Daly Clark', 'Nicholas Daly Clark', 'Orderly #', '21', '2010')
	, ('Kelly Ebsary', 'Kelly Ebsary', 'Torrie Sullivan', '1', '2010')
	, ('Boris Kievsky', 'Boris Kievsky', 'Cleaner', '1', '2010')
	, ('Bruno Oliver', 'Bruno Oliver', 'Mr. Barr', '1', '2010')
	, ('Cris D''Annunzio', 'Cris D''Annunzio', 'Joe The Hot Dog Vendor', '1', '2011')
	, ('Rodney J. Hobbs', 'Rodney J. Hobbs', 'Pharmacist', '1', '2011')
	, ('Kim Kim', 'Kim Kim', 'Korean Woman #', '21', '2011')
	, ('Warren Lieberstein', 'Warren Lieberstein', 'Rory Flenderson', '1', '2011')
	, ('Martha Middleton', 'Martha Middleton', 'Bookstore Clerk', '1', '2011')
	, ('Nicholas Rutherford', 'Nicholas Rutherford', 'The Waiter', '1', '2011')
	, ('David Britz', 'David Britz', 'Caterer', '1', '2012')
	, ('Nick Cafero', 'Nick Cafero', 'Treble', '1', '2012')
	, ('Myles Cranford', 'Myles Cranford', 'Horse Man', '1', '2012')
	, ('Ithamar Enriquez', 'Ithamar Enriquez', 'Paramedic', '1', '2012')
	, ('Dan Gill', 'Dan Gill', 'Philadelphia''s Trivia Host', '1', '2012')
	, ('Dana Powell', 'Dana Powell', 'Megan', '1', '2012')
	, ('Andrew Secunda', 'Andrew Secunda', 'Volunteer for Dogs'' Care', '1', '2012')
	, ('Aimee Shyn', 'Aimee Shyn', 'Receptionist', '1', '2012')
	, ('Oliver Vaquer', 'Oliver Vaquer', 'Doctor', '1', '2012')
	, ('Richard Augustine', 'Richard Augustine', 'Tractor Salesman', '1', '2013')
	, ('Julia Cho', 'Julia Cho', 'Asian Woman #', '11', '2013')
	, ('Joan Cusack', 'Joan Cusack', 'Erin''s Biological Mother', '1', '2013')
	, ('Ross Mackenzie', 'Ross Mackenzie', 'Dennis', '1', '2013')
	, ('Michael Weston', 'Michael Weston', 'Roger', '1', '2013')
	, ('Avu Chokalingam', 'Avu Chokalingam', 'Kelly''s Dad', '1', '2006')
	, ('Sue Nelson', 'Sue Nelson', 'Ms. Trudy', '1', '2006')
	, ('R.C. Ormond', 'R.C. Ormond', 'Panicked Man', '1', '2006')
	, ('Britain Spellings', 'Britain Spellings', 'Craps Dealer', '1', '2006')
	, ('Michael Kaiser', 'Michael Kaiser', 'Underage Kid #', '11', '2007')
	, ('Silvia McClure', 'Silvia McClure', 'Nurse', '1', '2007')
	, ('Sandra Tsing Loh', 'Sandra Tsing Loh', 'Professor', '1', '2008')
	, ('Ashley Walsh', 'Ashley Walsh', 'Dog Groomer Woman', '1', '2008')
	, ('Porter Kelly', 'Porter Kelly', 'Lady Needing Bathroom', '1', '2009')
	, ('James O. Kerry', 'James O. Kerry', 'Delivery Man', '1', '2009')
	, ('Brian Stack', 'Brian Stack', 'Buffalo branch employee', '1', '2009')
	, ('Micah Williams', 'Micah Williams', 'Lefervre', '1', '2009')
	, ('Sarah Baldwin', 'Sarah Baldwin', 'Lady at Bar', '1', '2010')
	, ('Oscar Blanco', 'Oscar Blanco', 'Hispanic Boy', '1', '2010')
	, ('Barbara A. Fisher', 'Barbara A. Fisher', 'Usher', '1', '2010')
	, ('Griffin Gluck', 'Griffin Gluck', 'Half Bred', '1', '2010')
	, ('Jonathan Pintoff', 'Jonathan Pintoff', 'Bassist', '1', '2010')
	, ('Amy Heidt', 'Amy Heidt', 'Cellphone''s POS Attendant', '1', '2011')
	, ('Jonathan Nail', 'Jonathan Nail', 'Tourist', '1', '2011')
	, ('Donna Bryce', 'Donna Bryce', 'Mrs. Anderson', '1', '2012')
	, ('Carrie Clifford', 'Carrie Clifford', 'Nurse Ruth', '1', '2012')
	, ('Kami Koren', 'Kami Koren', 'Mary the Cocktail Waitress', '1', '2012')
	, ('Jenny Leonhardt', 'Jenny Leonhardt', 'Yoga Student', '1', '2012')
	, ('Dan Levy', 'Dan Levy', 'Stonewall Alliance''s Trivia Host', '1', '2012')
	, ('Sue Redman', 'Sue Redman', 'Lauren', '1', '2012')
	, ('Trish Suhr', 'Trish Suhr', 'Herself', '1', '2012')
	, ('Joel-Ryan Armamento', 'Joel-Ryan Armamento', 'The Prop Man', '1', '2013')
	, ('Bob Glouberman', 'Bob Glouberman', 'Mr. Romanko', '1', '2013')
	, ('Ben Harris', 'Ben Harris', 'Todd', '1', '2013')
	, ('Rachael Harris', 'Rachael Harris', 'Rachael', '1', '2013')
	, ('Aaron Rodgers', 'Aaron Rodgers', 'Aaron Rodgers', '2', '2013')
	, ('Angela Shin', 'Angela Shin', 'Asian Lady', '1', '2013')
	, ('Collette Wolfe', 'Collette Wolfe', 'Alice', '1', '2013')
	, ('Keith Valcourt', 'Keith Valcourt', 'Ted', '1', '2005')
	, ('Swati Chokalingam', 'Swati Chokalingam', 'Kelly''s Mom', '1', '2006')
	, ('Damani Roberts', 'Damani Roberts', 'Chet Montgomery', '1', '2006')
	, ('Ann Maddox', 'Ann Maddox', 'Telemarketer', '1', '2007')
	, ('Stephen Mitchell', 'Stephen Mitchell', 'Bartender', '1', '2007')
	, ('Mike Nojun Park', 'Mike Nojun Park', 'Student', '1', '2007')
	, ('Hansford Rowe', 'Hansford Rowe', 'Albert Lapin', '1', '2007')
	, ('Justin Spitzer', 'Justin Spitzer', 'Doctor', '1', '2007')
	, ('Molly Burk', 'Molly Burk', 'Jan''s Daughter', '1', '2010')
	, ('Seth Coltan', 'Seth Coltan', 'Randy', '1', '2010')
	, ('David Kirk Grant', 'David Kirk Grant', 'Henry Saine (a.k.a. Conrad)', '1', '2010')
	, ('Lee Kirk', 'Lee Kirk', 'Clark', '1', '2010')
	, ('Jesse Mackey', 'Jesse Mackey', 'Jumpsuit Guy', '1', '2011')
	, ('Steve Moore', 'Steve Moore', 'Drummer', '1', '2011')
	, ('Ray Romano', 'Ray Romano', 'Merv Bronte', '1', '2011')
	, ('Alfred Rubin Thompson', 'Alfred Rubin Thompson', 'Store Owner', '1', '2011')
	, ('Eduardo Antonio Garcia', 'Eduardo Antonio Garcia', 'Ernesto', '1', '2012')
	, ('Robbie Kaller', 'Robbie Kaller', 'Blogger', '1', '2012')
	, ('Sean McDonald', 'Sean McDonald', 'Treble', '1', '2012')
	, ('Zabeth Russell', 'Zabeth Russell', 'Bachelorette Party Guest', '1', '2012')
	, ('Todd Aaron Brotze', 'Todd Aaron Brotze', 'Robert from WeyerHammer Paper', '1', '2013')
	, ('Dakota Johnson', 'Dakota Johnson', 'Dakota, Kevin''s Replacement', '1', '2013')
	, ('Debra Leigh', 'Debra Leigh', 'Sheila Davis', '1', '2013')
	, ('Santigold', 'Santigold', 'Santigold', '2', '2013')
	, ('Varun Gurunath', 'Varun Gurunath', 'Bollywood Dancer', '1', '2006')
	, ('Annie Sertich', 'Annie Sertich', 'Justin''s Date', '1', '2006')
	, ('Matt Prokop', 'Matt Prokop', 'Underage Kid #', '31', '2007')
	, ('Rick Scarry', 'Rick Scarry', 'Minister', '1', '2007')
	, ('Jeremy Shouldis', 'Jeremy Shouldis', 'Busines School Student', '1', '2007')
	, ('Ken Bernfield', 'Ken Bernfield', 'Doctor Speaking through Glass', '1', '2009')
	, ('Abraham Chaidez', 'Abraham Chaidez', 'Felipe', '1', '2010')
	, ('Randy Guiaya', 'Randy Guiaya', 'Pirelli', '1', '2010')
	, ('Robin Swenson', 'Robin Swenson', 'Curtis Dorough', '1', '2011')
	, ('Ben Wang', 'Ben Wang', 'Chinese Restaurant Waiter', '1', '2011')
	, ('Charles Miller', 'Charles Miller', 'Treble', '1', '2012')
	, ('Greg Worswick', 'Greg Worswick', 'Kenny', '1', '2012')
	, ('Kate Comer', 'Kate Comer', 'The Photographer', '1', '2013')
	, ('Jessica St. Clair', 'Jessica St. Clair', 'Casey Dean', '1', '2013')
	, ('Siddharth Jain', 'Siddharth Jain', 'Bollywood Dancer', '1', '2006')
	, ('Kulap Vilaysack', 'Kulap Vilaysack', 'Nikki', '1', '2006')
	, ('Annie Bravo', 'Annie Bravo', 'Business School Student', '1', '2007')
	, ('John F. Schaffer', 'John F. Schaffer', 'Photographer', '1', '2007')
	, ('Molly Bryant', 'Molly Bryant', 'Albany Gal', '1', '2009')
	, ('Betty Murphy', 'Betty Murphy', 'Irate Shareholder', '1', '2009')
	, ('Erica Hanrahan-Ball', 'Erica Hanrahan-Ball', 'Johanna', '1', '2010')
	, ('Greg Collins', 'Greg Collins', 'Assassin', '1', '2011')
	, ('Linda Taylor', 'Linda Taylor', 'Guitarist Lisa', '1', '2011')
	, ('Greg Tuculescu', 'Greg Tuculescu', 'Tom', '1', '2011')
	, ('Andrew O''Shanick', 'Andrew O''Shanick', 'Treble', '1', '2012')
	, ('Matt Selman', 'Matt Selman', 'Blogger', '1', '2012')
	, ('Malcolm Barrett', 'Malcolm Barrett', 'Stanley''s Replacement', '1', '2013')
	, ('Nico Evers-Swindell', 'Nico Evers-Swindell', 'Cpl. Miller', '1', '2013')
	, ('Peter A. Hulne', 'Peter A. Hulne', 'The HRPDC Executive', '1', '2013')
	, ('Anita Kapila', 'Anita Kapila', 'Bollywood Dancer', '1', '2006')
	, ('Chatree ''Chad'' Yodvisotsak', 'Chatree ''Chad'' Yodvisotsak', 'The Chef', '1', '2006')
	, ('Amy Cale Peterson', 'Amy Cale Peterson', 'Laurie', '1', '2009')
	, ('Emil Beheshti', 'Emil Beheshti', 'Doug McPherson', '1', '2010')
	, ('Brady Rubin', 'Brady Rubin', 'Woman on Park Bench', '1', '2010')
	, ('Julie Dove', 'Julie Dove', 'Photographer Toni', '1', '2012')
	, ('Thaddeus John Potter', 'Thaddeus John Potter', 'Treble', '1', '2012')
	, ('Matt Warburton', 'Matt Warburton', 'Blogger', '1', '2012')
	, ('Ryan Bailey', 'Ryan Bailey', 'Producer', '1', '2013')
	, ('John Phillips', 'John Phillips', 'The Director', '1', '2013')
	, ('Mitch Poulos', 'Mitch Poulos', 'Peter Rowley', '1', '2013')
	, ('Abe Spigner', 'Abe Spigner', 'Shawn', '1', '2013')
	, ('Ananya Kepper', 'Ananya Kepper', 'Tiffany', '1', '2006')
	, ('Deena Adar', 'Deena Adar', 'Woman at Bar', '1', '2009')
	, ('Randy Cordray', 'Randy Cordray', 'Ship''s Captain', '1', '2009')
	, ('Marla Garlin', 'Marla Garlin', 'Buffalo branch employee', '1', '2009')
	, ('Anne Santiago', 'Anne Santiago', 'Line Coordinator', '1', '2009')
	, ('Daniel J. Goor', 'Daniel J. Goor', 'Bar Patron', '1', '2011')
	, ('Caitlin Williams', 'Caitlin Williams', 'Tiffany', '1', '2012')
	, ('Rachel Crow', 'Rachel Crow', 'Gabriella', '1', '2013')
	, ('Nakul Dev Mahajan', 'Nakul Dev Mahajan', 'Bollywood Dancer', '1', '2006')
	, ('Charlotte Daniels', 'Charlotte Daniels', 'Flower Girl', '1', '2009')
	, ('Gregory Schmauss', 'Gregory Schmauss', 'Angry Shareholder', '1', '2009')
	, ('Janell Winkler', 'Janell Winkler', 'Patty Grossman', '1', '2012')
	, ('Scot Robinson', 'Scot Robinson', 'The Bartender', '1', '2013')
	, ('Jaysha Patel', 'Jaysha Patel', 'Neepa', '1', '2006')
	, ('David Rogers', 'David Rogers', 'Guy Wearing Ray-Bans', '1', '2009')
	, ('Scott Thewes', 'Scott Thewes', 'Male Audience Member', '1', '2010')
	, ('Kelly Snow', 'Kelly Snow', 'Treble', '1', '2012')
	, ('Sangita Sanyal', 'Sangita Sanyal', 'Bollywood Dancer', '1', '2006')
	, ('Stephanie McVay', 'Stephanie McVay', 'Sconesy Cider', '1', '2010')
	, ('Karishma Sawhney', 'Karishma Sawhney', 'Bollywood Dancer', '1', '2006')
	, ('Erica Mer', 'Erica Mer', 'Blue Shirted Kid #', '21', '2010')
	, ('Rita Sehmi', 'Rita Sehmi', 'Bollywood Dancer', '1', '2006')
	, ('Carolyn Wilson', 'Carolyn Wilson', 'Minister Gail', '1', '2010')
	, ('Kunal Sharma', 'Kunal Sharma', 'Teenage Food Server', '1', '2006')
	, ('Rohan Vora', 'Rohan Vora', 'Bollywood Dancer', '1', '2006')
	, ('Jamila Webb', 'Jamila Webb', 'Fast Food Manager', '1', '2013')
	, ('Clifford Bañagale', 'Clifford Bañagale', 'Filipino Teen', '1', '2013')
	, ('Jennifer Celotta', 'Jennifer Celotta', 'Wedding Guest', '1', '2013')
	, ('Susanne Daniels', 'Susanne Daniels', 'PBS Panel Moderator', '1', '2013')
	, ('Romel De Silva', 'Romel De Silva', 'Filipino Teen', '1', '2013')
	, ('Jay Falk', 'Jay Falk', 'Halpert''s Home Purchaser', '1', '2013')
	, ('John Gemberling', 'John Gemberling', 'Caterer Greeting Guests', '1', '2013')
	, ('Amelie Gillette', 'Amelie Gillette', 'Amelie', '1', '2013')
	, ('Bill Hader', 'Bill Hader', 'Bill Hader', '1', '2013')
	, ('Allison Jones', 'Allison Jones', 'Woman Guarding PBS Swag at Warehouse', '1', '2013')
	, ('Seth Meyers', 'Seth Meyers', 'Seth Meyers', '1', '2013')
	, ('Jonah Platt', 'Jonah Platt', 'Frat Boy', '1', '2013')
	, ('Jennie Tan', 'Jennie Tan', 'Audience Member', '1', '2013')
	, ('Alison White', 'Alison White', 'Purchaser''s Wife', '1', '2013')
	, ('A.J. Adelman', 'A.J. Adelman', 'Bar Patron', '1', '2006')
	, ('Steven Cortinas', 'Steven Cortinas', 'Pizza Delivery Guy', '1', '2006')
	, ('Eric La Barr', 'Eric La Barr', 'Cashier', '1', '2006')
	, ('Tom Konkle', 'Tom Konkle', 'English Teacher', '1', '2007')
	, ('Christina de Leon', 'Christina de Leon', 'Pratt Student', '1', '2008')
	, ('Bethany Dwyer', 'Bethany Dwyer', 'Beth', '1', '2008')
	, ('Stefan Kumor', 'Stefan Kumor', 'Pratt Student', '1', '2008')
	, ('Basilina Butler', 'Basilina Butler', 'Nurse', '1', '2009')
	, ('Bruno Gunn', 'Bruno Gunn', 'Water Delivery Man', '1', '2009')
	, ('Chealy Jean', 'Chealy Jean', 'Waitress', '1', '2009')
	, ('Ken Kreps', 'Ken Kreps', 'The Minister', '2', '2009-2010')
	, ('Nicholas Shaffer', 'Nicholas Shaffer', 'Hotel Manager', '1', '2009')
	, ('Katy Bodenhamer', 'Katy Bodenhamer', 'Youth Group Member', '1', '2010')
	, ('Nicholas Costello', 'Nicholas Costello', 'Youth Group Member', '1', '2010')
	, ('Donovan Estrada', 'Donovan Estrada', 'Pure Bred', '1', '2010')
	, ('Zoe Jarman', 'Zoe Jarman', 'Carla', '1', '2010')
	, ('Renee Riess', 'Renee Riess', 'Godmother', '1', '2010')
	, ('Selah Victor', 'Selah Victor', 'Mother Harvest', '1', '2010')
	, ('David Ferguson', 'David Ferguson', 'Skateland DJ', '1', '2011')
	, ('Ralph Kampshoff', 'Ralph Kampshoff', 'Bank Manager', '1', '2011')
	, ('Michael Blake', 'Michael Blake', 'Mike - Game Player', '1', '2012')
	, ('Tom Bower', 'Tom Bower', 'Heinrich', '1', '2013')
	, ('Ron Canada', 'Ron Canada', 'Mr. Haskins', '1', '2013')
	, ('Jade Catta-Preta', 'Jade Catta-Preta', 'Jeb''s Wife', '1', '2013')
	, ('Majandra Delfino', 'Majandra Delfino', 'Frannie', '1', '2013')
	, ('Wendy McColm', 'Wendy McColm', 'Esther''s Sister', '1', '2013')
	, ('Thomas Middleditch', 'Thomas Middleditch', 'Jeb', '1', '2013')
	, ('Stewart Skelton', 'Stewart Skelton', 'Dipido Smith', '1', '2013')
	, ('Hudson Phillips', 'Hudson Phillips', 'Athlead Office Employee (uncredited)', '3', '2013')
	, ('Claire Scanlon', 'Claire Scanlon', 'Nashua Employee (uncredited)', '2', '2009-2013')
	, ('Andrew Ortiz', 'Andrew Ortiz', 'Mole (uncredited)', '2', '2009')
	, ('Ricky Gervais', 'Ricky Gervais', 'David Brent (uncredited)', '2', '2011')
	, ('Angelina Ganiere', 'Angelina Ganiere', 'Dwight''s Younger Sister (uncredited)', '2', '2012-2013')
	, ('Ali Louise Hartman', 'Ali Louise Hartman', 'Phillip Halstead Lipton (uncredited)', '2', '2012')
	, ('Susanne Allan Hartman', 'Susanne Allan Hartman', 'Phillip Halstead Lipton (uncredited)', '2', '2012')
	, ('Cici Leah Campbell', 'Cici Leah Campbell', 'Shrute Family Member (uncredited)', '2', '2013')
	, ('Randall Barnwell', 'Randall Barnwell', 'Madsen (uncredited)', '1', '2005')
	, ('Wyatt Cenac', 'Wyatt Cenac', 'Improv Class Student (uncredited)', '1', '2005')
	, ('Toby Huss', 'Toby Huss', 'Todd Packer (uncredited)', '1', '2005')
	, ('John Alton', 'John Alton', 'FAX Machine Guy (uncredited)', '1', '2006')
	, ('Joey Basu', 'Joey Basu', 'Partygoer (uncredited)', '1', '2006')
	, ('Sunah Bilsted', 'Sunah Bilsted', 'Waitress (uncredited)', '1', '2006')
	, ('Kendra Cannoy', 'Kendra Cannoy', 'Emily (uncredited)', '1', '2006')
	, ('Philip Centanni', 'Philip Centanni', 'Fired Stamford Dunder Mifflin Employee (uncredited)', '1', '2006')
	, ('Chelsey Crisp', 'Chelsey Crisp', 'Convention Worker (uncredited)', '1', '2006')
	, ('Sean R. Lake', 'Sean R. Lake', 'Sci Fi Attendee (uncredited)', '1', '2006')
	, ('Sherry Landry', 'Sherry Landry', 'Waitress (uncredited)', '1', '2006')
	, ('Kayla Mae Maloney', 'Kayla Mae Maloney', 'Jocelyn (uncredited)', '1', '2006')
	, ('Angelo Middione', 'Angelo Middione', 'Bass Player - Kevins Garage Band (uncredited)', '1', '2006')
	, ('Ian Novotny', 'Ian Novotny', 'Conference Goer (uncredited)', '1', '2006')
	, ('Conan O''Brien', 'Conan O''Brien', 'Conan O''Brien (uncredited)', '1', '2006')
	, ('Stephen Pisani', 'Stephen Pisani', 'Hospital Visitor (uncredited)', '1', '2006')
	, ('Kate Quigley', 'Kate Quigley', 'Casino Waitress (uncredited)', '1', '2006')
	, ('Cora Skinner', 'Cora Skinner', 'Waitress (uncredited)', '1', '2006')
	, ('John H. Tobin', 'John H. Tobin', 'Dealer (uncredited)', '1', '2006')
	, ('Miriam Tolan', 'Miriam Tolan', 'Tina Fey Look-a-Like (uncredited)', '1', '2006')
	, ('Randy Vinneau', 'Randy Vinneau', 'Conference Goer (uncredited)', '1', '2006')
	, ('Patrick Bradford', 'Patrick Bradford', 'Additional (uncredited)', '1', '2007')
	, ('David Daskal', 'David Daskal', 'Textbook Business School Student (uncredited)', '1', '2007')
	, ('Robert Foreman', 'Robert Foreman', 'Groomsman (uncredited)', '1', '2007')
	, ('Susie Geiser', 'Susie Geiser', 'Marcy (uncredited)', '1', '2007')
	, ('Gregory Graham', 'Gregory Graham', 'Upset Bar Patron (uncredited)', '1', '2007')
	, ('Brian A. Gutierrez', 'Brian A. Gutierrez', 'Drake (uncredited)', '1', '2007')
	, ('James M. Halty', 'James M. Halty', 'Bartender (uncredited)', '1', '2007')
	, ('Crystal Havens', 'Crystal Havens', 'Cousin''s Wife (uncredited)', '1', '2007')
	, ('Laura Jean Leal', 'Laura Jean Leal', 'Teacher (uncredited)', '1', '2007')
	, ('David L. Marston', 'David L. Marston', 'Bart Heart in Second Life (uncredited)', '1', '2007')
	, ('Trevor Anthony Pitzel', 'Trevor Anthony Pitzel', 'Caterer (uncredited)', '1', '2007')
	, ('Austin Michael Scott', 'Austin Michael Scott', 'Underage Kid #2 (uncredited)', '1', '2007')
	, ('Kara Elizabeth Silva', 'Kara Elizabeth Silva', 'Sex Shop Clerk (uncredited)', '1', '2007')
	, ('Cooper Thornton', 'Cooper Thornton', 'Dennis (uncredited)', '1', '2007')
	, ('Linda Weinrib', 'Linda Weinrib', 'Bridesmaid (uncredited)', '1', '2007')
	, ('Lynnanne Zager', 'Lynnanne Zager', 'GPS (uncredited)', '1', '2007')
	, ('Alina Andrei', 'Alina Andrei', 'Party Girl (uncredited)', '1', '2008')
	, ('Darren Bailey', 'Darren Bailey', 'Airplane Passenger (uncredited)', '1', '2008')
	, ('Michael Patrick Breen', 'Michael Patrick Breen', 'Airport Passenger (uncredited)', '1', '2008')
	, ('Gary Buckner', 'Gary Buckner', 'Funeral Home Director (uncredited)', '1', '2008')
	, ('Travis Samuel Clark', 'Travis Samuel Clark', 'Dog Groomer''s Guy (uncredited)', '1', '2008')
	, ('April Eden', 'April Eden', 'Deborah Shoshlefski (uncredited)', '1', '2008')
	, ('Brett Gipson', 'Brett Gipson', 'Law Intern (uncredited)', '1', '2008')
	, ('Lynsey Nicole Harris', 'Lynsey Nicole Harris', 'Basketball Girl (uncredited)', '1', '2008')
	, ('Andrea Kelley', 'Andrea Kelley', 'Student (uncredited)', '1', '2008')
	, ('L.A. Landgraf', 'L.A. Landgraf', 'Airplane Passenger (uncredited)', '1', '2008')
	, ('Keili Lefkovitz', 'Keili Lefkovitz', 'Wendy''s employee (uncredited)', '1', '2008')
	, ('Blaise Godbe Lipman', 'Blaise Godbe Lipman', 'Brett Bailey (uncredited)', '1', '2008')
	, ('Kimberly Manion', 'Kimberly Manion', 'Creative Impulse Vendor (uncredited)', '1', '2008')
	, ('June Squibb', 'June Squibb', 'Michael''s Mom (uncredited)', '1', '2008')
	, ('Jobeth Wagner', 'Jobeth Wagner', 'Pratt Art Student (uncredited)', '1', '2008')
	, ('Steve Zissis', 'Steve Zissis', 'Dwight''s Ignored Customer (uncredited)', '1', '2008')
	, ('Dante Acosta', 'Dante Acosta', 'Blazer (uncredited)', '1', '2009')
	, ('Jessica Alba', 'Jessica Alba', 'Sophie (uncredited)', '1', '2009')
	, ('Jennifer Andreacola', 'Jennifer Andreacola', 'Game Player at Picnic (uncredited)', '1', '2009')
	, ('Michael August', 'Michael August', 'Rochester Volleyball Player #2 (uncredited)', '1', '2009')
	, ('Seth Bailey', 'Seth Bailey', 'Nashua Employee (uncredited)', '1', '2009')
	, ('Natalie Bain', 'Natalie Bain', 'Waitress (uncredited)', '1', '2009')
	, ('Jack Black', 'Jack Black', 'Sam (uncredited)', '1', '2009')
	, ('Eric Bradley', 'Eric Bradley', 'Here Comes Treble Singer (uncredited)', '1', '2009')
	, ('Julie David', 'Julie David', 'Bridesmaid (uncredited)', '1', '2009')
	, ('Rick L. Dean', 'Rick L. Dean', 'Wedding Guest (uncredited)', '1', '2009')
	, ('Bonita Dorssom', 'Bonita Dorssom', 'Shareholder (uncredited)', '1', '2009')
	, ('Kimberly Douglas', 'Kimberly Douglas', 'Grillmaster (uncredited)', '1', '2009')
	, ('Sandra L. Feeley', 'Sandra L. Feeley', 'Cindy Halpert (uncredited)', '1', '2009')
	, ('Tommy Gerrits', 'Tommy Gerrits', 'Boy at Picnic (uncredited)', '1', '2009')
	, ('Geoffrey Gould', 'Geoffrey Gould', 'Presentation Attendee (uncredited)', '1', '2009')
	, ('Timothy Michael Gould', 'Timothy Michael Gould', 'Scranton Basketball Boy (uncredited)', '1', '2009')
	, ('Melinda Haugh', 'Melinda Haugh', 'Waitstaff #2 (uncredited)', '1', '2009')
	, ('Danielle E. Hawkins', 'Danielle E. Hawkins', 'Dancer (uncredited)', '1', '2009')
	, ('Daniel Hepner', 'Daniel Hepner', 'Groomsman (uncredited)', '1', '2009')
	, ('Cloris Leachman', 'Cloris Leachman', 'Lily Hanaday (uncredited)', '1', '2009')
	, ('Katharine Leonard', 'Katharine Leonard', 'Chloe (uncredited)', '1', '2009')
	, ('Sherrie Lewandowski', 'Sherrie Lewandowski', 'Sherrie (uncredited)', '1', '2009')
	, ('James McMann', 'James McMann', 'Warehouse Guy (uncredited)', '1', '2009')
	, ('Kristin Mellian', 'Kristin Mellian', 'Waitstaff #1 (uncredited)', '1', '2009')
	, ('Chris Moss', 'Chris Moss', 'Dancer (uncredited)', '1', '2009')
	, ('Alan Mueting', 'Alan Mueting', 'Shareholder (uncredited)', '1', '2009')
	, ('Erin Pickett', 'Erin Pickett', 'Shareholder (uncredited)', '1', '2009')
	, ('Susan Pinckney', 'Susan Pinckney', 'Scranton Family Member (uncredited)', '1', '2009')
	, ('Aaron Pushkar', 'Aaron Pushkar', 'Bartender (uncredited)', '1', '2009')
	, ('Kristin Quick', 'Kristin Quick', 'Dwight''s Teammate (uncredited)', '1', '2009')
	, ('Jake Radaker', 'Jake Radaker', 'Boy at Table (uncredited)', '1', '2009')
	, ('Richard Schimmelpfenneg', 'Richard Schimmelpfenneg', 'Corporate Volleyball Player #1 (uncredited)', '1', '2009')
	, ('Fletcher Sheridan', 'Fletcher Sheridan', 'Here Comes Treble Singer (uncredited)', '1', '2009')
	, ('Gustin Smith', 'Gustin Smith', 'Rich Jones (uncredited)', '1', '2009')
	, ('Summer Malone', 'Summer Malone', 'Jim''s Niece (uncredited)', '1', '2009')
	, ('Kaye Marie Talise', 'Kaye Marie Talise', 'Scranton Family Member (uncredited)', '1', '2009')
	, ('Alexis Teague', 'Alexis Teague', 'Ashley (uncredited)', '1', '2009')
	, ('Michael A. Templeton', 'Michael A. Templeton', 'Restaurant Patron (uncredited)', '1', '2009')
	, ('Antony Teofilo', 'Antony Teofilo', 'Penguin (uncredited)', '1', '2009')
	, ('Denise Vasquez', 'Denise Vasquez', 'Shareholder (uncredited)', '1', '2009')
	, ('Thomas Michael Ventimiglio', 'Thomas Michael Ventimiglio', 'Walker (uncredited)', '1', '2009')
	, ('Julien Zuccolin', 'Julien Zuccolin', 'Florida Cousin (uncredited)', '1', '2009')
	, ('Johnnie Battistessa', 'Johnnie Battistessa', 'Featured Kid (uncredited)', '1', '2010')
	, ('Constance Broge', 'Constance Broge', 'The Storyteller (uncredited)', '1', '2010')
	, ('Will C.', 'Will C.', 'Bartender (uncredited)', '1', '2010')
	, ('Cole Coleman', 'Cole Coleman', 'Sales Analyst playing arcade game (uncredited)', '1', '2010')
	, ('Kenny Cooper', 'Kenny Cooper', 'Fake Stanley (uncredited)', '1', '2010')
	, ('Ward Edmondson', 'Ward Edmondson', 'Theater Patron (uncredited)', '1', '2010')
	, ('Kimberly Evan', 'Kimberly Evan', 'Country Club Snob (uncredited)', '1', '2010')
	, ('Cassie Jordan', 'Cassie Jordan', 'Stanley''s Date (uncredited)', '1', '2010')
	, ('Amy Rieckelman', 'Amy Rieckelman', 'Annie (uncredited)', '1', '2010')
	, ('Candace Sciarra', 'Candace Sciarra', 'Olympic Figure Skater (uncredited)', '1', '2010')
	, ('Travis Seaborn', 'Travis Seaborn', 'Jan''s Assistant (uncredited)', '1', '2010')
	, ('Jera Sky', 'Jera Sky', 'Play Patron (uncredited)', '1', '2010')
	, ('Christian Slater', 'Christian Slater', 'Himself (uncredited)', '1', '2010')
	, ('Kie Spring', 'Kie Spring', 'Stanley''s Date (uncredited)', '1', '2010')
	, ('Joe Davis', 'Joe Davis', 'Joe (uncredited)', '1', '2011')
	, ('Shannon Mary Dixon', 'Shannon Mary Dixon', 'Figure Skater (uncredited)', '1', '2011')
	, ('Michelle Faraone', 'Michelle Faraone', 'Dundies Guest (uncredited)', '1', '2011')
	, ('Mark Heidelberger', 'Mark Heidelberger', 'Karate Student (uncredited)', '1', '2011')
	, ('Lance Patrick', 'Lance Patrick', 'Karate Student (uncredited)', '1', '2011')
	, ('Carla Rudy', 'Carla Rudy', 'Last Supper Tableau (uncredited)', '1', '2011')
	, ('Sahlima', 'Sahlima', 'Valerie (uncredited)', '1', '2011')
	, ('Ashley Adler', 'Ashley Adler', 'Office worker (uncredited)', '1', '2012')
	, ('James Gregory Capps', 'James Gregory Capps', 'Paramedic (uncredited)', '1', '2012')
	, ('Clint Corley', 'Clint Corley', 'Lawyer (uncredited)', '1', '2012')
	, ('Heidi Edsall', 'Heidi Edsall', 'Young Mom (uncredited)', '1', '2012')
	, ('Jennifer Hale', 'Jennifer Hale', 'Donna Muraski (uncredited)', '1', '2012')
	, ('Ben Kacsandi', 'Ben Kacsandi', 'Trivia Contestant (uncredited)', '1', '2012')
	, ('Genevieve Levin', 'Genevieve Levin', 'Famous Amos Girl (uncredited)', '1', '2012')
	, ('Jake Lucas', 'Jake Lucas', 'Waiter #2 (uncredited)', '1', '2012')
	, ('Jill Maragos', 'Jill Maragos', 'Mom (uncredited)', '1', '2012')
	, ('Benjamin Scott Panock', 'Benjamin Scott Panock', 'Bouncer (uncredited)', '1', '2012')
	, ('Brandon Slagle', 'Brandon Slagle', 'Trivia Player (uncredited)', '1', '2012')
	, ('Brad Slaughter', 'Brad Slaughter', 'Hot Yogi (uncredited)', '1', '2012')
	, ('Steven Adkins', 'Steven Adkins', 'Office Employee (uncredited)', '1', '2013')
	, ('Cindy Buck', 'Cindy Buck', 'Audience Member (uncredited)', '1', '2013')
	, ('Bennie the Cat', 'Bennie the Cat', 'Cat (uncredited)', '1', '2013')
	, ('Miss Kitty the Cat', 'Miss Kitty the Cat', 'Cat (uncredited)', '1', '2013')
	, ('Cham', 'Cham', 'Acapella Idol Contestant (uncredited)', '1', '2013')
	, ('Brey Chanadet', 'Brey Chanadet', 'Schrute Kid (uncredited)', '1', '2013')
	, ('Brent Forrester', 'Brent Forrester', 'Audience Member (uncredited)', '1', '2013')
	, ('Deonte Gordon', 'Deonte Gordon', 'Reporter #1 (uncredited)', '1', '2013')
	, ('Steve Hely', 'Steve Hely', 'Audience Member (uncredited)', '1', '2013')
	, ('Monique Kim', 'Monique Kim', 'Korean Manicurist (uncredited)', '1', '2013')
	, ('Donna Lazar', 'Donna Lazar', 'Woman in Crowd (uncredited)', '1', '2013')
	, ('George Thomas Mansel', 'George Thomas Mansel', 'Cowboy (uncredited)', '1', '2013')
	, ('Spencer John Olson', 'Spencer John Olson', 'Schrute Cousin (uncredited)', '1', '2013')
	, ('Mark Parrish', 'Mark Parrish', 'Bartender (uncredited)', '1', '2013')
	, ('Michael Rosinsky', 'Michael Rosinsky', 'Concerned Panel Fan (uncredited)', '1', '2013')
	, ('Allison Silverman', 'Allison Silverman', 'Audience Member (uncredited)', '1', '2013')
	, ('Matt Sohn', 'Matt Sohn', 'Documentary Crew Member (uncredited)', '1', '2013')
	, ('Dan Sterling', 'Dan Sterling', 'Audience Member (uncredited)', '1', '2013')
	, ('Robert Stilwell', 'Robert Stilwell', 'Simon (uncredited)', '1', '2013')
	, ('Teena Strube', 'Teena Strube', 'Angela''s Mom (uncredited)', '1', '2013')
	, ('Victor Taylor', 'Victor Taylor', 'Auditionee (uncredited)', '1', '2013')
	, ('Dale Waddington', 'Dale Waddington', 'Kaitlyn (uncredited)', '1', '2013')
	, ('Graham Wagner', 'Graham Wagner', 'Wedding Guest (uncredited)', '1', '2013')
	, ('Eric Watson', 'Eric Watson', 'Simon Realty Employee (uncredited)', '1', '2013')

UPDATE import.People
SET Export = 0
WHERE CharacterName LIKE '%#%'
OR CharacterName LIKE '%guy'
OR CharacterName LIKE '%employee%'
OR CharacterName LIKE '%uncredited%'
OR CharacterName LIKE '%worker'
OR CharacterName LIKE '%agent'
OR CharacterName LIKE '%girl'
OR CharacterName LIKE '%woman'
OR CharacterName LIKE '%ceremonies'
OR CharacterName LIKE '%customer'
OR CharacterName LIKE '%client'
OR CharacterName LIKE 'The %'
OR CharacterName LIKE '%neighbor'
OR CharacterName LIKE '%neighbour'
OR CharacterName LIKE '%mom'
OR CharacterName LIKE '%boy'
OR CharacterName LIKE '%manager'
OR CharacterName LIKE '%sister'
OR CharacterName LIKE '%receptionist'
OR CharacterName LIKE '%waiter'
OR CharacterName LIKE '%caterer'
OR CharacterName LIKE '%assistant%'
OR CharacterName LIKE '%stewardess%'
OR CharacterName LIKE '% lady'
OR CharacterName LIKE '%father'
OR CharacterName LIKE '%boat'
OR CharacterName LIKE '%telemarketer%'
OR CharacterName LIKE '%student'
OR CharacterName LIKE '%resident'
OR CharacterName LIKE '%principal'
OR CharacterName LIKE '%principle'
OR CharacterName LIKE '%roommate'
OR CharacterName LIKE '%priest'
OR CharacterName LIKE '%treater'
OR CharacterName LIKE '% kid'
OR CharacterName = 'Son'
OR CharacterName LIKE 'concierge%'
OR CharacterName LIKE '%girlfriend'
OR CharacterName LIKE '%technician'
OR CharacterName LIKE '%waitress'
OR CharacterName LIKE '%vendor'
OR CharacterName LIKE '%interviewee'
OR CharacterName LIKE '%park ranger'
OR CharacterName LIKE 'woman%'
OR CharacterName LIKE '%mother%'
OR CharacterName LIKE '% dad'
OR CharacterName IN ('himself', 'herself')
OR CharacterName = ActorName
OR CharacterName LIKE '%recruiter'
OR CharacterName LIKE '%driver'
OR CharacterName LIKE '%redhead'
OR CharacterName LIKE '%clerk'
OR CharacterName LIKE '%barista%'
OR CharacterName LIKE '%officer%'
OR CharacterName LIKE '%artist'
OR CharacterName LIKE '%hostess'
OR CharacterName LIKE '%nurse'
OR CharacterName LIKE '%salesman%'
OR CharacterName LIKE '%delivery%'
OR CharacterName LIKE '%leader'
OR CharacterName LIKE '%Stenographer%'
OR CharacterName LIKE '% actor'
OR CharacterName LIKE '% host'
OR CharacterName LIKE '%volunteer%'
OR CharacterName LIKE '%Attendant'
OR CharacterName LIKE '%bouncer%'
OR CharacterName LIKE '%cleaner%'
OR CharacterName LIKE '%pharmacist%'
OR CharacterName LIKE '%doctor%'
OR CharacterName LIKE '% man'
OR CharacterName LIKE '%bathroom%'
OR CharacterName LIKE '%usher'
OR CharacterName LIKE '% bred'
OR CharacterName LIKE '%bassist'
OR CharacterName LIKE '%attendant'
OR CharacterName LIKE '%tourist'
OR CharacterName LIKE '%bartender'
OR CharacterName LIKE '%owner'
OR CharacterName LIKE '%guest'
OR CharacterName LIKE '%blogger'
OR CharacterName LIKE '%paper'
OR CharacterName LIKE 'doctor%glass'
OR CharacterName LIKE '%photographer%'
OR CharacterName LIKE '%replacement'
OR CharacterName LIKE '%dancer'
OR CharacterName LIKE '%producer'
OR CharacterName LIKE '%captain'
OR CharacterName LIKE '%treble'
OR CharacterName LIKE '%server'
OR CharacterName LIKE '%guest'
OR CharacterName LIKE '%moderator'
OR CharacterName LIKE '%wife'
OR CharacterName LIKE '%teacher'
OR CharacterName LIKE '%patron'
OR CharacterName LIKE '%member'
OR CharacterName LIKE '%babysitter'
OR CharacterName LIKE '%reporter'
OR CharacterName LIKE '%announcer'
OR CharacterName LIKE '%competition'
OR CharacterName LIKE '%adman'
OR CharacterName LIKE '%meow'
OR CharacterName LIKE '%security'
OR CharacterName LIKE '%helmsman'
OR CharacterName LIKE '%conventioneer'
OR CharacterName LIKE '%sweeney todd'
OR CharacterName LIKE '%gym'
OR CharacterName LIKE '%other pam'
OR CharacterName LIKE '%flex'
OR CharacterName LIKE '%attendee'
OR CharacterName LIKE '%paramedic'
OR CharacterName LIKE 'lady%'
OR CharacterName LIKE 'nurse%'
OR CharacterName LIKE '%daughter'
OR CharacterName LIKE '%drummer'
OR CharacterName LIKE '% date'
OR CharacterName LIKE '%minister'
OR CharacterName LIKE '%assassin'
OR CharacterName LIKE 'guitarist%'
OR CharacterName LIKE '%coordinator'
OR CharacterName LIKE '%shareholder'
OR CharacterName LIKE '%ray-bans'
OR CharacterName LIKE '%cider'
OR CharacterName LIKE 'minister%'
OR CharacterName LIKE '% teen'
OR CharacterName LIKE '%purchaser'
OR CharacterName LIKE '%guests'
OR CharacterName LIKE '%cashier'
OR CharacterName LIKE '%dj'
OR CharacterName LIKE '%player'
OR CharacterName LIKE 'ben franklin'
OR CharacterName LIKE '%dealer'
OR CharacterName LIKE 'economy%'
OR CharacterName LIKE 'chief buy%'
OR CharacterName LIKE 'sensei%'
OR CharacterName LIKE 'uncle%'
OR CharacterName LIKE 'albany gal'
OR CharacterName LIKE 'aunt%'

-- Remove minor characters
UPDATE import.People
SET Export = 0
WHERE CharacterName IN ( 'Gideon', 'Mr. Sylvie', 'Broccoli Rob', 'Asian Jim Halpert', 'Foppy McGee', 'Mr. Barr'
					, 'Ms. Trudy', 'Mrs. Anderson', 'Mr. Romanko', 'Henry Saine (a.k.a. Conrad)', 'Cpl. Miller'
					, 'Mr. Haskins', 'A. J.', 'Alex', 'Sylvia', 'Gil', 'Calvin', 'Brandon', 'gabor', 'Megan'
					, 'Russell', 'Bertha', 'Edna'
);


-- Remove characters appearing in just one episode with no spaces in the name (all minor characters)
UPDATE import.People
SET Export = 0
WHERE NumberOfEpisodes = 1
AND Export = 1
AND CharacterName NOT LIKE '% %'
 

-- Updates
UPDATE import.People
SET CharacterName = 'Val Johnson'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Warehouse manager'
WHERE CharacterName = 'Val'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Gino Eisenberg'
	, CompanyName = 'Vance Refrigeration'
	, Title = 'Delivery driver'
WHERE CharacterName = 'Gino'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Lynn Wyatt'	
WHERE CharacterName = 'Lynn'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Stacy Gates'	
WHERE CharacterName = 'Stacy'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Ravi Ramamurthy'
	, CompanyName = 'Self-employed'
	, Title = 'Physician'
WHERE CharacterName = 'Ravi'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Zeke Schrute'	
WHERE CharacterName = 'Zeke'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Mose Schrute'
	, CompanyName = 'Schrute Farms'
	, Title = 'Assistant to the farm manager'
WHERE CharacterName = 'Mose'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Madge Madsen'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Warehouseman'
WHERE CharacterName = 'Madge'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Esther Bruegger'
WHERE CharacterName = 'Esther'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Daniel Schofield'
	, CompanyName = 'Harper Collins'
WHERE CharacterName = 'Mr. Schofield'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Nate Nickerson'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Warehouseman'
WHERE CharacterName = 'Nate'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Clark Green'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Salesperson'
WHERE CharacterName = 'Clark'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Dan Ramish'
	, CompanyName = 'Prestige Direct Sale Solutions'
WHERE CharacterName = 'Mr. Ramish'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Susan California'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Bookkeeper'
WHERE CharacterName = 'Mrs. California'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Hank Tate'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Security guard'
WHERE CharacterName = 'Hank'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Hank Tate'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Security guard'
WHERE CharacterName = 'Hank'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Hunter Raymond'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Executive assistant'
WHERE CharacterName = 'Hunter'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Rolando Craig'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Receptionist'
WHERE CharacterName = 'Rolando'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Martin Nash'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Accountant'
WHERE CharacterName = 'Martin'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Trevor Gethard'
	, CompanyName = 'Self-employed'
	, Title = 'Hit man'
WHERE CharacterName = 'Trevor'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Ronni Raoul'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Receptionist'
WHERE CharacterName = 'Ronni'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Rolf Ahl'	
WHERE CharacterName = 'Rolf'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Jada Philbin'	
WHERE CharacterName = 'Jada'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Kendall Hartmann'	
	, CompanyName = 'Dunder Mifflin'
	, Title = 'Human resources manager'
WHERE CharacterName = 'Kendall'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Vikram '
	, CompanyName = 'Lipephedrine Diet Pill Company'
	, Title = 'Salesperson'
WHERE CharacterName = 'Vikram'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Vikram Chowdhry'
	, CompanyName = 'Lipephedrine Diet Pill Company'
	, Title = 'Salesperson'
WHERE CharacterName = 'Vikram'
AND Export = 1

UPDATE import.People
SET CharacterName = 'Sadiq Vaidya'
	, CompanyName = 'Dunder Mifflin'
	, Title = 'IT Technician'
WHERE CharacterName = 'Sadiq'
AND Export = 1

