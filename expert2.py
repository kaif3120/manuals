print("Car health expert system by Rahul")

def is_car_healthy(symptoms):

  if "engine_light_on" in symptoms or "low_oil_pressure" in symptoms: 
   return False
  else:
     return True

car = input('Enter car issue:')
def get_car_repair(symptoms):
    
    if is_car_healthy(symptoms):
        return "Your car is healthy"
    elif "engine_light_on" in symptoms:
        return "Get your engine checked"
    elif "low_oil_pressure" in symptoms:
        return "Add oil to your car"
    else:
        return "I don't know what's wrong with your car"
def main():
    symptoms = [ "low_oil_pressure",]


    if is_car_healthy(symptoms):
        print("Your car is healthy")
    else:
        print("Your car needs repair")
        print("The repair is:", get_car_repair(symptoms))
main()


   


    



