import time

def countdown_timer(seconds):
    while seconds:
        mins, secs = divmod(seconds, 60)
        time_format = f"{mins:02d}:{secs:02d}"
        print(time_format, end="\r")
        time.sleep(1)
        seconds -= 1

    print("⏰ Time's up!")

if __name__ == "__main__":
    # Change the value here to set how many seconds you want
    countdown_seconds = int(input("Enter time in seconds: "))
    countdown_timer(countdown_seconds)
