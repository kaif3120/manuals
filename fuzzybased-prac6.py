import numpy as np
import skfuzzy as fuzzy
from skfuzzy import control as ctrl
import matplotlib.pyplot as plt

temperature = ctrl.Antecedent(np.arange(0, 101, 1), 'temperature')
humidity = ctrl.Antecedent(np.arange(0, 101, 1), 'humidity')
fan_speed = ctrl.Consequent(np.arange(0, 101, 1), 'fan_speed')

temperature['cold'] = fuzzy.trimf(temperature.universe, [0, 20,20])
temperature['medium'] = fuzzy.trimf(temperature.universe, [20,50,50])
temperature['hot'] = fuzzy.trimf(temperature.universe, [50,100,100])

humidity['low'] = fuzzy.trimf(humidity.universe, [0, 20,20])
humidity['medium'] = fuzzy.trimf(humidity.universe, [20,50,50])
humidity['high'] = fuzzy.trimf(humidity.universe, [50,100,100])

fan_speed['low'] = fuzzy.trimf(fan_speed.universe, [0, 20,20])
fan_speed['medium'] = fuzzy.trimf(fan_speed.universe, [20,50,50])
fan_speed['high'] = fuzzy.trimf(fan_speed.universe, [50,100,100])

rule1 = ctrl.Rule(temperature['cold'] & humidity['low'], fan_speed['low'])
rule2 = ctrl.Rule(temperature['medium'] & humidity['medium'], fan_speed['medium'])
rule3 = ctrl.Rule(temperature['hot'] & humidity['high'], fan_speed['high'])
fan_speed_ctrl = ctrl.ControlSystem([rule1, rule2, rule3])
fan_speed_simulation = ctrl.ControlSystemSimulation(fan_speed_ctrl)
fan_speed_simulation.input['temperature'] = int(input('Enter temperature:'))
fan_speed_simulation.input['humidity'] = int(input('Enter humidity:'))
fan_speed_simulation.compute()
output_speed = fan_speed_simulation.output['fan_speed']
fan_speed.view(sim=fan_speed_simulation)
plt.show()
print(f"Fan Speed: {output_speed}")