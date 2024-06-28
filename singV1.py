# หากไม่อยากให้มันเล่นเพลงให้เอา pygame ออก หรือตามที่Commentบอก
import time, os, threading, pygame # เอาออกหากไม่อยากให้เล่นเพลง

def play_song(data):
    def print_lyrics(data):
        os.system('cls')
        print(name_song, "\n")
        intro_duration = 22 # ค่าดีเลย์ก่อนเริ่มเนื้อเพลง 
        for i in range(intro_duration, 0, -1):
            print(f"เริ่มใน {i} วินาที...", end='\r')
            time.sleep(1)
        print("เริ่มเนื้อเพลง!              ")

        for song, duration in data:
            for char in song:
                print(char, end='', flush=True)
                time.sleep(duration / len(song))  # หน่วงเวลาแต่ละตัวอักษรตามค่าดีเลย์ของแต่ละบรรทัด
            print()  # เริ่มบรรทัดใหม่
            time.sleep(0.5)  # หน่วงเวลาหลังจากพิมพ์บรรทัดเสร็จ

    lyrics_thread = threading.Thread(target=print_lyrics, args=(data,))
    lyrics_thread.start()
    
    pygame.mixer.init() # เอาออกหากไม่อยากให้เล่นเพลง
    pygame.mixer.music.load('Path your file song หรือไฟล์เพลงคุณ คลิกที่ไฟล์เพลจากนั้นกด ctrl+shift+c แล้วเอามาวางที่นี่') # เอาออกหากไม่อยากให้เล่นเพลง
    pygame.mixer.music.play() # เอาออกหากไม่อยากให้เล่นเพลง
    
    lyrics_thread.join()

data_song = [
    ("Test", 0.5),
    ("Test2", 2)
]


name_song = "Name"

play_song(data_song)
