# Dynamic UI Flutter App
A Flutter application that dynamically renders UI components based on an API response. The app integrates with a backend API to fetch data and displays it in a responsive and customizable layout. It uses Bloc for state management, Dio for API calls, and Dependency Injection for managing dependencies.

## Features
Dynamic UI Rendering: Renders UI components (e.g., banners, categories, products) based on the API response.

Theme Customization: Applies dynamic themes based on the API's theme_colors data.

State Management: Uses Bloc to manage app state and handle API data.

Error Handling: Displays error messages for network issues or invalid API responses.

Responsive Design: Ensures the app works seamlessly on different screen sizes.

##flutter test
        flutter test test/home_bloc_test.dart