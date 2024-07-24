import openai

# Ganti 'your-api-key' dengan API key Anda dari OpenAI
openai.api_key = 'sk-None-VPFgwLs9Y41lCjC8WWrJT3BlbkFJFoGn1paZPUniriQN3moV'

def ask_gpt(question):
    try:
        response = openai.Completion.create(
            engine="text-davinci-003",
            prompt=question,
            max_tokens=150,
            n=1,
            stop=None,
            temperature=0.7,
        )
        return response.choices[0].text.strip()
    except Exception as e:
        return f"Terjadi kesalahan: {e}"

def display_logo():
    logo = r"""
       ____ _           _    ____ ____ _______ 
      / ___| |__   __ _| |_ / ___|  _ \_   _\ \
     | |  _| '_ \ / _` | __| |  _| | | || |  | |
     | |_| | | | | (_| | |_| |_| | |_| || |  | |
      \____|_| |_|\__,_|\__|\____|____/ |_|  | |
                                         |__|
    """
    print(logo)

if __name__ == "__main__":
    display_logo()
    while True:
        user_input = input("Masukkan pertanyaan: ")
        if user_input.lower() in ['exit', 'quit']:
            print("Chatbot ditutup.")
            break
        response = ask_gpt(user_input)
        print(f"ChatGPT: {response}\n")
