import requests
import os
from dotenv import load_dotenv


load_dotenv()
API_KEY = os.getenv("WEATHER_API_KEY")  # Input your own API key or create .env @ root with WEATHER_API_KEY, gitignored my .env file for security
cities = ["Doha", "Al Rayyan", "Al Wakrah"]

for city in cities:
    url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid={API_KEY}&units=metric"
    response = requests.get(url)
    with open(f"data/api/{city}_weather.json", "w", encoding="utf-8", errors="ignore") as f:
        f.write(response.text)