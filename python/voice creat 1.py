import pyttsx3

# Voice Engine Start
engine = pyttsx3.init()

# ----------- SETTINGS -------------
engine.setProperty("rate", 180)     # voice speed
engine.setProperty("volume", 0.8)   # voice loudness
 # Available Voices List
voices = engine.getProperty("voices")

# ---------- VOICE SELECTION -------------
# voices[0] = Male voice
# voices[1] = Female voice
engine.setProperty("voice", voices[0].id)  # male voice

# ----------- YOUR TEXT -----------------
text = """
Hello! Ashwani, You are  using the most beutifull language Python.
Python is a popular, high level general-purpose programming languagee known for its simple readable syntax,maaking it beginner-frendly.
"""

# Speak the text
engine.say(text)

# ---------- SAVE AS AUDIO FILE ----------
engine.save_to_file(text, "output_voice.mp3")   # File create ho jayegi

# Run and speak
engine.runAndWait()

print("Voice created successfully!")