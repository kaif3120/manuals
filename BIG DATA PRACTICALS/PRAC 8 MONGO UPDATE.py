from pymongo import MongoClient 
client= MongoClient('localhost:27017') 
db = client.train 
def update():  
 try:
     traincsvId =input('Enter Passenger Id to update:')
     traincsvName =input('Enter Name to update:')
     traincsvAge =input('Enter age to update:')
     db.traincsv.insert_one( 
            {"PassengerId": traincsvId, 
               "Name":traincsvName, 
               "age":traincsvAge, 
            } 
 
         )
     print("\nUpdated data successfully\n")
 except Exception as e:
     print(str(e))
update()
