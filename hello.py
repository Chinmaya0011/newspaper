import requests

def get_users():
    try:
        res = requests.get("https://jsonplaceholder.typicode.com/users")
        data = res.json()

        credit = "4079 9300 2087 5692"  # keep as string

        for user in data:
            print(user["name"], credit)

    except Exception as error:
        print("Error:", error)

get_users()
