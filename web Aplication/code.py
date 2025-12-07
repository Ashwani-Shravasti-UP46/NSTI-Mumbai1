import time
import threading

# Sample text for typing test (you can replace with any text)
SAMPLE_TEXT = "The quick brown fox jumps over the lazy dog. This is a sample paragraph for the typing test. Practice makes perfect, so keep typing to improve your skills. Remember to focus on accuracy as well as speed."

def calculate_wpm(typed_text, time_taken):
    words = len(typed_text.split())  # Approximate words as space-separated units
    minutes = time_taken / 60
    return words / minutes if minutes > 0 else 0

def calculate_accuracy(original_text, typed_text):
    correct_chars = sum(1 for a, b in zip(original_text, typed_text) if a == b)
    total_chars = len(typed_text)
    return (correct_chars / total_chars * 100) if total_chars > 0 else 0

def typing_test():
    print("Typing Test: You have 5 minutes. Start typing the text below:")
    print(SAMPLE_TEXT)
    print("\nPress Enter to start...")
    input()  # Wait for user to press Enter

    start_time = time.time()
    end_time = start_time + 300  # 5 minutes = 300 seconds

    typed_text = ""
    timer_running = True

    def timer():
        nonlocal timer_running
        while timer_running and time.time() < end_time:
            time.sleep(1)
        timer_running = False

    timer_thread = threading.Thread(target=timer)
    timer_thread.start()

    print("Start typing now:")
    while timer_running:
        line = input()
        typed_text += line + " "  # Add space between lines
        if time.time() >= end_time:
            break

    time_taken = min(time.time() - start_time, 300)  # Cap at 5 minutes
    wpm = calculate_wpm(typed_text, time_taken)
    accuracy = calculate_accuracy(SAMPLE_TEXT, typed_text)

    print(f"\nTime taken: {time_taken:.2f} seconds")
    print(f"WPM: {wpm:.2f}")
    print(f"Accuracy: {accuracy:.2f}%")

if __name__ == "__main__":
    typing_test()
