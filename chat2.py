import aiml
 
kernel = aiml.Kernel()
kernel.learn("startup.xml")
kernel.respond("load chat 2")
 
while True:
    input_text = input(">Human: ")
    response = kernel.respond(input_text)
    print(">Bot: "+response)
