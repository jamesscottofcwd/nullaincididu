import Environment

struct Settings {
    @Environment("API_KEY") var apiKey: String
}

let settings = Settings()
print(settings.apiKey)
