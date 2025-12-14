import pyttsx3
engine =pyttsx3.init()
#---------------- ettings -----------------------
# +++++++++++++++ VOICE SPEED ++++++++++++++++
engine.setProperty("rate", 180)
# ++++++ voice rate +++++++++++++++++
rate= engine.getProperty("rate")
# engine.setProperty('rate', rate - 20)
# +++++++++++++  VOICE LOUDNESS +++++++++++
engine.setProperty("volume", 0.9)
# +++++++++ AVELAVELL VOICE LIST ++++++++++
voices = engine.getProperty("voices")
# ++++++++ VOICE CELECTION +++++++++++
# +++++++++ VOICES[0]  =MALE VOICE +++++++
# +++++++++ VOICES[1]  =FEMALE VOICE +++++++
engine.setProperty("voice", voices[1].id)  #++++++ FEMALE VOICE ++++++++++++
# ++++++ YOUR TEXT ++++++++++++++++++++
text= ("My, Name is Ashwani Bouddh, i from paatkhaulee kalan, post Siswara,black ikauna, distric shravasti, state uttar pradesh-271835")
# +++++++ SPEEK THE TEXT +++++++++++++
engine.say(text)
engine.save_to_file(text, "output_voice.mp3")
#++++++++++++ RUN AND SPEEK+++++++++++++
engine.runAndWait()
print("voices creaated successfully!")
