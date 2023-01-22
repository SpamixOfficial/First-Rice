from pynput import keyboard


anim = 1

def on_press(key):
    global anim
    if anim == 1:
        print("")
        anim = 2
    elif anim == 2:
        print("hi2")
        anim=3
    elif anim == 3:
        print("hi3")
        anim=1

def on_release(key):
    print("hi4")

with keyboard.Listener(
        on_press=on_press,
        on_release=on_release) as listener:
    listener.join()