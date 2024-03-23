import pyttsx3
import datetime
import speech_recognition as sr
import wikipedia
import webbrowser
import pyautogui
import psutil
import pyjokes

engine = pyttsx3.init('sapi5')
voices =  engine.getProperty('voices')
#print(voices[0].id) 
# 0 for David, 1 for Zira
engine.setProperty('voice', voices[0].id) 

def speak(audio):
    engine.say(audio)
    engine.runAndWait()

def time():
    Time = datetime.datetime.now().strftime("%I:%M:%S")
    speak(Time)

def date():
    year = int(datetime.datetime.now().year)
    month = int(datetime.datetime.now().month)
    day = int(datetime.datetime.now().day)
    speak(day)
    speak(month)
    speak(year)

def greeting():
    speak("Welcome aboard")
    speak("The time is")
    time()
    speak("And the date is")
    date()
    hour = datetime.datetime.now().hour
    if (hour >= 6 and hour <= 12):
        speak("Good morning!")
        speak("What would you like to do today")
    elif (hour >= 12 and hour <= 18):
        speak("Good afternoon")
        speak("What would you like to do today")
    elif (hour >= 18 and hour <= 23):
        speak("Good evening")
        speak("What would you like to do today")
    else:
        speak( "It's very late. Good night.")

def takeCommand():
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening...")
        r.pause_threshold = 1
        audio = r.listen(source)

    try:
        print("Detecting")
        query = r.recognize_google(audio, language='en-in')
        print(query)
    
    except Exception as e:
        #print(e)
        print("Say that again please...")
        return "None"
    return query

def screenshot():
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    filename = f"C:\\Users\\camru\\OneDrive\\Pictures\\Screensh=ots\\screenshot_{timestamp}.png"
    img = pyautogui.screenshot()
    img.save(filename)

def cpu():
    usage = str(psutil.cpu_percent())
    speak("CPU is at"+usage+"percent")
    battery = psutil.sensors_battery()
    speak("Battery is at "+str(int((battery.percent)))+'percent')

def joke():
    ajoke = pyjokes.get_joke()
    speak(ajoke)
    print(ajoke)    


if  __name__ == "__main__":    
    while True:
        query = takeCommand().lower()

        if 'hi jarvis' in query:
            greeting()

        elif 'about yourself' in query:
            speak("Hi. I'm JARVIS - Just A Rather Very Intelligent System. I'm created using Artificial Intelligence and written in Python. My original creator is Tony Stark and i assist him in his work as Iron Man. I strive to make tasks easier and i hope to help you too.")

        elif 'wikipedia' in query:
            speak("Searching Wikipedia...")
            print("Searching Wikipedia...")
            query = query.replace('wikipedia', '')
            results = wikipedia.summary(query, sentences=2)
            speak("According to Wikipedia")
            print(results)
            speak(results)

        elif 'open youtube' in query:
            webbrowser.open("https://www.youtube.com/")

        elif 'open google' in query:
            webbrowser.open("https://www.google.com/")

        elif 'time' in query:
            time()

        elif 'date' in query:
            date()

        elif 'play music' in query:
            speak("Playing Music on Youtube. What song would you like to listen to?")
            chromepath = "C:\\Users\\camru\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe"
            search = takeCommand().lower()
            youtube_url = f"https://www.youtube.com/results?search_query={search}"
            webbrowser.open(youtube_url)
            speak("Playing" + search)
            
        elif 'search online' in query:
            speak("What would you like to search for?")
            search = takeCommand().lower()
            webbrowser.open_new_tab("https://www.google.com/search?q=" + search)

        elif 'remember this' in query:
            speak("What should i remind you?")
            data = takeCommand()
            speak("You said , {}".format(data))
            remember_data = open('data.txt', 'w')
            remember_data.write(data + '\n')
            remember_data.close()

        elif 'add this' in query:
            speak("Adding...")
            data = takeCommand()
            with open('data.txt', 'a') as remember_data:
                remember_data.write(data + '\n')

        elif 'reminders' in query:
            speak("Here's what you told me to remember")
            remember_data = open('data.txt', 'r').read()
            speak(remember_data)

        elif 'screenshot' in query:
            screenshot()
            speak("Captured screenshot")

        elif 'cpu' in query:
            cpu()

        elif 'joke' in query:
            joke()

        elif 'i love you 3000' in query:
            speak("I love you 3000")
                        
        elif 'thank you jarvis' in query:
            speak("Have a nice day. Shutting down...")
            quit()       
