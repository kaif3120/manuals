from pymongo import MongoClient 
client= MongoClient('localhost:27017') 
db = client.train 
def read():   
  try:
      trainCol=db.traincsv.find()   
      print("All data From database")
      for train in trainCol: 
            print(train)   
  except Exception as e:     
    print(str(e)) 
read()
