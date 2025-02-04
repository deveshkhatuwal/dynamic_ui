# Dynamic UI Flutter App
A Flutter application that dynamically renders UI components based on an API response. The app integrates with a backend API to fetch data and displays it in a responsive and customizable layout. It uses Bloc for state management, Dio for API calls, and Dependency Injection for managing dependencies.

## Features
Dynamic UI Rendering: Renders UI components (e.g., banners, categories, products) based on the API response.
Theme Customization: Applies dynamic themes based on the API's theme_colors data.
State Management: Uses Bloc to manage app state and handle API data.
Error Handling: Displays error messages for network issues or invalid API responses.
Responsive Design: Ensures the app works seamlessly on different screen sizes.

## flutter test
        flutter test test/home_bloc_test.dart
"theme_colors": [
{
"bg_clr": "#f5af19,#32a8a4",
"service_id": "3",
"txt_title_clr": "#f5af19,#f772a1",
"txt_clr": "#f5af19,#ac72f7",
"prd_clr": "#f5af19,#325ea8",
"cat_clr": "#f5af19,#327da8"
}
]
### bg_clr: Background color (light/dark theme).

### txt_title_clr: Text color for titles.

### txt_clr: Text color for body text.

### prd_clr: Product card color.

### cat_clr: Category card color.

### API Integration
The app fetches data from the following API endpoint:

Endpoint: https://food.56testing.club/Api/Api_customer/homepage_dynamic
Authentication: Basic Auth
Username: food123
Password: food123

Request Body: {
"added_by_web": "food.56testing.club",
"service_id": 2,
"user_id": 1
}
## State Management
The app uses Bloc for state management. Key Blocs include:
HomeBloc: Manages the state of the home page (loading, loaded, error).
ThemeBloc: Manages the app's theme (light/dark mode).

## Dependency Injection
The app uses GetIt for dependency injection. Key services include:
DioClient: Handles API requests.
RemoteDataSource: Fetches data from the API.
HomeRepository: Mediates between the data source and use cases.