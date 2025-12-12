import pyttsx3

# Voice Engine Start
engine = pyttsx3.init()

# ----------- SETTINGS -------------
engine.setProperty("rate", 150)     # voice speed
engine.setProperty("volume", 0.8)   # voice loudness

# Available Voices List
voices = engine.getProperty("voices")

# ---------- VOICE SELECTION -------------
# voices[0] = Male voice
# voices[1] = Female voice
engine.setProperty("voice", voices[0].id)  # male voice

# ----------- YOUR TEXT -----------------
text = """
Hello! Hello Ashwani, You are  using the generated language Python.
You can change my speed, tone and voice easily.
"""

# Speak the text
engine.say(text)

# ---------- SAVE AS AUDIO FILE ----------
engine.save_to_file(text, "output_voice.mp3")   # File create ho jayegi

# Run and speak
engine.runAndWait()

print("Voice created successfully!")
