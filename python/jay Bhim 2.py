# import python3

import pyttsx3

engine = pyttsx3.init()
# ----------- SETTINGS -------------en
engine.setProperty("rate", 180)
engine.setProperty("volume", 0.5)

voices = engine.getProperty("voices")

# ---------- VOICE SELECTION -------------
engine.setProperty("voice", voices[0].id)
# ----------- YOUR TEXT -----------------
text="""jay Bheem Ashwani resive your message"""
#speak the text
engine.say(text)
# ---------- SAVE AS AUDIO FILE ----------
engine.save_to_file(text,"output_voice.mp3")
# run and speak
engine.runAndWait()
print("Voice created successfully!")

