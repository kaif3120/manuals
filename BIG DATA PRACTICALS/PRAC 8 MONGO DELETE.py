from pymongo import MongoClient
client= MongoClient('localhost:27017') 
db = client.train 
def delete():
    try:
        criteria=input("Enter Name to delete:")
        db.traincsv.delete_one({"Name":criteria})
        print("\ndeleted data successfully\n")
    except Exception as e:
        print(str(e)) 
delete() 
