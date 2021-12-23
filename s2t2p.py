import speech_recognition as sr
import re
import os
import sys
import subprocess
import pyautogui
import time
import nltk
from nltk.tokenize import word_tokenize
os.remove("/Users/anush/Documents/Processing/jread/test1.txt")
os.remove("/Users/anush/Documents/Processing/jread/stre.txt")
r = sr.Recognizer()
with sr.Microphone() as source:
    print("Speak Anything :")
    audio = r.listen(source)
    try:
        text = r.recognize_google(audio)
        print("You said : {}".format(text))
        ext="{}".format(text)
        #print(word_tokenize(ext))
        l=word_tokenize(ext)
        le=len(l)
        #print(le)
        for i in range(le):
            tag=nltk.pos_tag(l)
#        tag=nltk.pos_tag(l,tagset='universal')
#print(tag)
        dtag=dict(tag)
        print(dtag)
#        print(dtag.values())
#        print(dtag.keys())
        new_dict = {}
        for key, value in dtag.items():
            if value in new_dict:
                new_dict[value].append(key)
            else:
                new_dict[value]=[key]
        for i in new_dict:
            if(i=="NN" or  i=="IN" or i=="NNS" or i=="NNP" or i=="VBZ"):
                res=i," :" ,new_dict[i]
                with open('/Users/anush/Documents/Processing/jread/test1.txt', 'a') as f:
                        print(res)
                        f.write("%s\n" % str(res))

    except:
        print("Sorry could not recognize what you said")

hand=open("/Users/anush/Documents/Processing/jread/test1.txt")
for line in hand:
    line=line.rstrip()
    x=re.findall("[^'][a-z]+",line)
    st=' '.join(map(str, x))
    print(st)
    with open('/Users/anush/Documents/Processing/jread/stre.txt', 'a') as r:
        r.write("%s\n" % str(st))
hand.close()
r.close()

def open_file(filename):
    if sys.platform == "win32":
        os.startfile(filename)
    else:
        opener ="open" if sys.platform == "darwin" else "xdg-open"
        subprocess.call([opener, filename])
open_file('/Users/anush/Documents/Processing/jread/jread.pde')

time.sleep(6)
pyautogui.keyDown('command')
pyautogui.press('r')
