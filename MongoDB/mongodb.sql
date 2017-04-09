use hockey
do.dropdatabase
db.tables.insert({"name":"Sandeep"})
multiple records needs to insert in array []
show collections
db.players.find()
db.players.findone()
db.players.find.pretty()
When insert a document, unique identifier is getting inserted.
id -
db.players.remove({"name":"sandeep"})
db.players.remove({"id":"434333"})
db.players.update() -- it needs two parameters,
first parameter will be selection criteria, usually id, or primary key, second parameter will be entire document with changed information.
db.players.drop()
db.players.find({"designation":"Manager"})

To search using multiple criteria
db.players.find({"designation":"Manager"},{"Sex":"Male"})
To Search using OR criteria 
Whenever you are using $ it means keyword inside mongodb
db.players.find( $OR
[{"designation":"Manager"},{"Sex":"Male"}])



db.players.find( {"age":{$ne:30}})
$gt, $lt, $gte, $lte

This will return only names from mongodb

db.payers.find({"age":"29"},{"name":1,_id:0)

If we want first 10 records then use limit(10)

db.payers.find({"age":"29"},{"name":1,_id:0).limit(10)

If we want to skip first few records then use skip

db.payers.find({"age":"29"},{"name":1,_id:0).skip(3)

it has tags which we can put anytime. Does not required to change schema.
it doesnt have joins
Predicates
-<<=> >=
$all
$exists
$ne
$in
$nin
$nor
$not
$or
$and
regular Expressions
$where (js exps)
$group()

Natively we can use javascript to scroll records.

Clustering and sharding

Query Language

db.players.find().sort(date:-1).limit(1)

It can have nested values
geospatial indexing and queries


Indexing

automic updates
Comments c = { author:"will@testing.com",date:new Date(),text: "Great Post!"}
db.posts.update( {_id: post._id},{$push: {comments:c}})
$set
$unset
$inc
$pushall
$pull
$pullAll
$bit


Aggregation and map/reduce
Built for High performance, fault tolerant clusters made easy
1. Replica set
2. Auto-sharding
Read spread capability
Automatically shard data across clusters.


Object-Relationa mapping is the Veitname of our industry.
If you do not have big data problem also you can use mongodb.
Good Uses for MongoDB
1. Accounts/user profiles
2. form data
3. CMS
4. Storing geo-data
5. application configuration 
6. application logging - logging into application

1. What is Normalziation technique for Mongodb?
   In this case in each collection you can have same data?
2. Mongodb does not support two commit machanism
3. How to backup these database?
4. mongoexport , mongodump



MongoDB
1. A Document oriented database
2. Suitable for realtime data needs
3. Do not have a machine learning addons

Haddop
1. Provides a distributed MapReduce
2. Suitable mainly for batch processing
3. Have powerful machine learning Add-on such as Mahout.





