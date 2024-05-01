# AgroAvenija

AgroAvenija is a mobile app that bridges the gap between small food producers and customers, facilitating direct access to fresh, locally-sourced produce.
Technology used: Flutter, Supabase

# Prerequisites

1. **Flutter Installation**  
   You must have Flutter installed on your system.
   For detailed instructions, visit the [Flutter installation guide](https://docs.flutter.dev/get-started/install).

2. **IDE Setup**  
   An IDE with Flutter support, such as Android Studio or Visual Studio Code, is required. 
   Ensure that you have the Flutter and Dart plugins installed. 
   For Visual Studio Code, you can find these in the Extensions marketplace. In Android Studio, these can be installed from the Plugins section in the IDE settings.

3. **Android Studio and Emulator Setup**  
   Although the code is written in Visual Studio Code, an emulator from Android Studio is used to run and test the application.
   Therefore, Android Studio must be installed, not just for coding but also to utilize the Android emulator. 
   Within Android Studio, ensure you have accessed the SDK Manager to install the Android SDK. 
   You can find the SDK Manager under "Tools > SDK Manager" in Android Studio. 
   This is crucial for running the emulator and for building projects targeting various Android versions. 
   
4. **In terminal or command line**, type `flutter doctor` which will check your Flutter environment and show the installed versions of Flutter and Dart SDKs. 
If there is message `'No issues found!'`, you should be good to go. You can also type `flutter --version` to get information about the installed version of Flutter only.

5. **Supabase Account**  
   Since this app uses Supabase, you'll need a Supabase account. Create one at [this website](https://supabase.com/).
<!-- 4. Environment Setup: 
    Enviroment variable for Supabase must be configured
    Ovo moram dodatno istražit.
 -->
6. **Git**  
   Basic knowledge of Git is recommended, as you will need it to clone the repository.

7. **Mobile Device or Emulator**  
   To run the app, you will need either a physical mobile device or an emulator set up through your IDE.

# Installation

Follow these steps to get your development environment set up:

1. **Clone the Repository**  
   Start by cloning the project repository to your local machine. 
   Open your terminal, navigate to the directory where you want to store the project and run:  
   `git clone https://github.com/dgrabo/agroavenija.git`

2. **Install Dependencies**  
   Once the repository is cloned, you'll need to install all of the required dependencies.
   Navigate to the project directory if you haven't already and run:  
   `flutter pub get`

<!-- 3. Setup Environment Variables 
    Trebam ovo dodatno pogledati još.
 -->

3. **Run the Application**  
   Before running the application, ensure you have Flutter installed and either an emulator running or a device connected.  
   If you are using VSCode, you can select the emulator from the bottom right corner of the IDE.  
   Position yourself in the `main.dart` file and press `F5` to start the app on the emulator.  
   Alternatively, you can run the application from the terminal:  
   `flutter run` 

# Troubleshooting

If you encounter any issues during the installation, consider the following common troubleshooting steps:

- Ensure your Flutter SDK is up to date with `flutter upgrade`.
- If you get errors related to missing packages or dependencies, try running `fluttter clean` followed by `flutter pub get` again.
<!-- - Check that your environment variables are set correctly.
    Trebam provjeriti ovo.
 -->