#How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;

#You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?
SELECT name, membercost 
FROM cd.facilities;

#How can you produce a list of facilities that charge a fee to members?
SELECT * FROM cd.facilities
WHERE membercost > 0;

#How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND (membercost < monthlymaintenance / 50.0);

#How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT name FROM cd.facilities
WHERE name LIKE '%Tennis%';

#How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
SELECT * FROM cd.facilities
WHERE facid in (1,5)

SELECT * FROM cd.facilities
WHERE facid=1 OR facid=5;

#How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.
SELECT memid, surname, firstname, joindate 
FROM cd.members
WHERE joindate >= '2012-09-01';

#How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
SELECT DISTINCT surname  FROM cd.members
ORDER BY surname
LIMIT 10;

#You'd like to get the signup date of your last member. How can you retrieve this information?
SELECT joindate, surname, firstname 
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT MAX(joindate) AS latest FROM cd.members

#Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT COUNT(guestcost)
FROM cd.facilities
WHERE guestcost > 10;

#Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT SUM(slots) AS sept_bookings, facid 
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30'
GROUP BY facid
ORDER BY SUM(slots) DESC;

#Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT SUM(slots) AS total_slots, facid 
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

#How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-22'? Return a list of start time and facility name pairings, ordered by the time.
SELECT cd.facilities.facid, name, starttime 
FROM cd.facilities
INNER JOIN cd.bookings ON cd.bookings.facid = cd.facilities.facid
WHERE starttime BETWEEN '2012-09-22 00:00:00.00' AND '2012-09-22 23:59:59.99' 
AND name LIKE '%Tennis Court%'
ORDER BY starttime;

#How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT starttime FROM cd.bookings
INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell';

-- SELECT * FROM cd.members
-- WHERE firstname = 'David' AND surname = 'Farrell';

-- SELECT cd.members.memid FROM cd.members
-- INNER JOIN cd.bookings ON cd.bookings.memid = cd.members.memid;

-- SELECT starttime, memid FROM cd.bookings
-- WHERE memid = 28;