from gtts import gTTS
import playsound

text = "Jay Bheem"

# Create voice
tts = gTTS(text=text, lang='hi', slow=False)

# Save file
tts.save("voice.mp3")

# Play file
playsound.playsound("voice.mp3")

print("Voice created successfully!")
