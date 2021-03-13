# Profile Editor

A mobile application for editing profile pages. It make use of the flutter framework and is written in
the Dart programming language

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for
development and testing purposes.

### Prerequisites

#### Git

 First you need some type of version control installed on your machine. For this set up we will use
 git. By trying to run git for the first time on mac you will be prompted to install Xcode developer
 tools which includes git.

#### Flutter

1. Next you will need to install the Flutter SDK you can download the zip
[here](https://flutter.dev/docs/get-started/install/macos).
2. After you download the zip file if it is not already unzipped use a command like
[unzip ~/Downloads/flutter_macos_2.0.2-stable.zip].
3. Next you will have to move the unzipped the flutter to your desired directory with a command like
[mv scource/path destination/path.]
4. Then you will need to add flutter to your path. For this step you will need sudo privileges.
enter the command [sudo nano /etc/path] to add the path for example you would add
[Users/myuser/development/flutter/bin] press control + x to exit then the press y when asked to save
and press enter.
5. Next run the command [flutter doctor] from any directory to set up the sdk

#### Java

1. You will need to have Java 8 downloaded on your system you can download it
[here](https://www.java.com/en/dowload/).
2. Open the downloaded file and install.

#### Android Studio

1. After that you have flutter up and running you can go ahead and download and install
Android studio [Here](https://developer.android.com/studio?gclid=Cj0KCQiAv6yCBhCLARIsABqJTjaZ4jzy3h0313-NHdF9gD_uRK1Sy8eF5yyqpUgtTeK3pfJGvYOO3GcaAnYKEALw_wcB&gclsrc=aw.ds#downloads).
2. You can now go through default installation and click the standard setup.
3. Next you will need to add the flutter plugin.In the opening screen go to the
bottom right corner and select configure and go to plugins. Search for Flutter, install and restart.

### Installation

1. Select get from Version Control in the Android Studio Idea
Copy and paste this [https://github.com/samuel-nwankwo/profile-editor] in the URL and select Clone
2. Navigate to the lib/main.dart and you will be prompted to update dependencies. Select update.
3. Next start the android emulator by going to the far right and selecting the adv manager. If you
are having trouble finding it you can see what it looks like
[here](https://stackoverflow.com/questions/43055787/where-is-avd-manager-in-android-studio-on-macos).
4. In the ADV manager you will need to press the play button and it will start running.
5. Then you will need to accept the android studio licences. Enter these commands in the terminal
[cd ~/Library/Android/sdk/tools/bin/]<br>
[./sdkmanager --licenses]. Select all y's.
6. Lastly press the green play button to run main.dart.
7. The emulator should be up and running an good to go.

### Built With

[Flutter](https://flutter.dev/) - Beautiful native applications

### Authors

Samuel Nwankwo



