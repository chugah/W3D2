
CREATE TABLE contacts (
	id serial NOT NULL PRIMARY KEY,
	name varchar(40) NOT NULL,
	email varchar(40) NOT NULL
);

COPY contacts  FROM stdin;
Ace Frehley 		ace@msn.com
Peter Criss 		criss@gmail.com
Gene Simmons 		sims@yahoo.com
Paul Stanley 		ps@hotmail.com
David LeeRoth 		dlr@hotmail.com
Eddie VanHalen 		evh@gmail.com
Michael Anthony 	manthony@gmail.com
Alex VanHalen 		alex@hotmail.com
John Coltrane 		jazzy@gmail.com
Billie Holiday 		holiday@hotmail.com
Ella Fitzgerald 	ella@gmail.com
Louis Armstrong 	trombone@gmail.com
Chrissy Hynes 		chynes@gmail.com

