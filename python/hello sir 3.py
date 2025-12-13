import pyttsx3

engine =pyttsx3.init()

engine.setProperty("rate", 180)

rate = engine.getProperty('rate')

engine.setProperty('rate', rate - 90)  

engine.setProperty('volume', 0.7)  

voices = engine.getProperty('voices')

engine.setProperty('voice', voices[1].id)

text= ("Hello friends welcome to friendship group chat, how are you, this time..")

engine.say(text)

engine.save_to_file(text, "output_voice.mp3")

engine.runAndWait()
print("Voice created successfully!")