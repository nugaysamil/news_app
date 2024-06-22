# News App

News App is a Flutter project designed to provide users with the latest news headlines. The application fetches news data from the NewsAPI and displays it in a clean, user-friendly interface. Users can browse through different news categories and read detailed articles.

# Figma Link: 
- **https://www.figma.com/community/file/1365109967017520913/portofolio-mobile-magazine

## Features

- **News Browsing:** Users can browse through a list of news articles fetched from the NewsAPI.
- **News Details:** Clicking on a news article displays detailed information about it, including the title, description, source, and publication date.
- **Categories:** Users can filter news by categories such as business, sports, technology, and more.
- **Responsive Design:** The app is designed to work on both mobile and tablet devices.

https://github.com/nugaysamil/news_app/assets/106466382/3105113e-a18c-4e58-899a-b115743f0557

## Dependencies

The project uses the following packages:

- **equatable:** For simplifying object comparisons.
- **dio:** For network requests and API interactions.
- **cached_network_image:** For efficient image loading and caching.
- **json_annotation & json_serializable:** For JSON serialization and deserialization.
- **google_fonts:** For custom fonts.
- **carousel_slider_plus:** For creating image sliders.
- **flutter_riverpod:** For state management.
- **firebase_auth, firebase_core, google_sign_in:** For Firebase authentication and Google Sign-In integration.

## Overview

The application's main screen displays a list of news articles fetched from the NewsAPI. Each article is presented in a card with its title, image, and a brief description. Users can tap on an article to see more details, such as the full content, source, and publication date. The app also includes category filters to help users find news on specific topics.

## Architecture

The project follows a MVVM (Model-View-ViewModel) architecture:

- **Model:** Represents the data structure and handles data manipulation.
- **View:** Displays the UI and responds to user interactions.
- **ViewModel:** Connects the model and view, handling business logic and state management.

The folder structure is organized as follows:

- **lib**
  - **feature**
    - **model**
    - **view_model**
    - **views**
  - **product**
    - **generation**
    - **init**
    - **model**
    - **service**
    - **utility**
    - **widget**
  - firebase_options.dart
  - main.dart

## Conclusion

News App is a simple yet functional application that demonstrates the use of various Flutter packages and APIs. It provides a solid foundation for building more complex news applications.

## Getting Started

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Add your NewsAPI key in the appropriate service file.
4. Run the app using `flutter run`.

## API

The application fetches data from the following API: https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=YOUR_API_KEY

