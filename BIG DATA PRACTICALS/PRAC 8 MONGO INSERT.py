from pymongo import MongoClient
client= MongoClient('localhost:27017')
db = client.train  

def insert():
    try:
        Id =input(' Enter traincsv Passenger Id: ')
        Name =input('Enter Name: ')
        Age =input('Enter age: ')
        Fare =input('Enter Fare: ')
        Sex =input('Enter Sex: ')
        Ticket =input('Enter Ticket: ')
        db.traincsv.insert_one(
            {
                "PassengerId": Id,
                "Name":Name,
                "Age":Age,
                "Fare":Fare,
                "Sex":Sex,
                "Ticket":Ticket,
                })
        print("\nInserted data successfully\n")

    except Exception as e:
        print(str(e))
        
insert()
