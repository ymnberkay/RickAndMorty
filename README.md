# Rick and Morty App

## Overview
This Rick and Morty app is built using SwiftUI and follows the MVVM (Model-View-ViewModel) architecture pattern. It allows users to explore information about characters, episodes, and locations from the popular TV show Rick and Morty.

## Features
- **Character Browser**: View detailed information about characters including their name, status, species, origin, location, and more.
- **Episode Guide**: Explore a list of episodes, their titles, air dates, and summaries.
- **Location Directory**: Discover information about various locations featured in the series.

## Screenshots

<div style="display: flex; justify-content: space-around;">
    <div style="flex: 1; margin-right: 10px;">
        <img src="https://github.com/ymnberkay/RickAndMorty/assets/73296405/8fabf1ab-932f-45c1-b53f-bb135c58bc42" alt="Home Screen" width="400">
        <p><em>Home Screen - Provides options to explore characters, episodes, or locations.</em></p>
    </div>
    <div style="flex: 1; margin-left: 10px;">
        <img src="https://github.com/ymnberkay/RickAndMorty/assets/73296405/913d6525-8e51-4f6c-af03-024decf38d13" alt="Character Detail" width="400">
        <p><em>Character Detail - Displays detailed information about a character, including name, status, species, and more.</em></p>
    </div>
</div>


## Requirements
- Xcode 12 or later
- iOS 14.0 or later

## Installation
1. Clone this repository to your local machine.
2. Open the project in Xcode.
3. Build and run the project on a simulator or a physical device.

## Usage
- Upon launching the app, users are greeted with a home screen presenting options to explore characters, episodes, or locations.
- Navigate through different sections using the tab bar at the bottom.
- Tap on a character, episode, or location to view detailed information.

## Architecture
This app follows the MVVM (Model-View-ViewModel) architecture pattern:
- **Model**: Represents the data structures and business logic.
- **View**: Represents the UI components and their layout.
- **ViewModel**: Acts as an intermediary between the Model and the View, handling presentation logic and data manipulation.

## Dependencies
This project uses the following dependencies:
- [Kingfisher](https://github.com/onevcat/Kingfisher): For downloading and caching images.

## Credits
- Rick and Morty API: Data for this app is sourced from the [Rick and Morty API](https://rickandmortyapi.com/), a free and open API for the Rick and Morty television series.

## Contributions
Contributions to this project are welcome! If you have any suggestions, feature requests, or bug reports, please feel free to open an issue or submit a pull request.
