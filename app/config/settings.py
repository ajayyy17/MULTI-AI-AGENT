from dotenv import load_dotenv
import os

load_dotenv()

class Settings:
    GROK_API_KEY = os.getenv("GROK_API_KEY")
    TAVILY_API_KEY = os.getenv("TAVILY_API_KEY")

    ALLOWED_MODEL_NAMES = [
        "llama-3.3-70b-versatile",
        "llama-3.1-8b-instant"
    ]

settings = Settings()
