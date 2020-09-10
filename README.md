# The Idea
The app aims to provide support to users in the lockdown period. During these difficult times, maintaining habits is not an easy task. A lot of people feel insecure about their health and daily routines. The app proivdes current situation and helps them in maintaining their daily habits. It also provides Inffecto rating which tells use how vulnerable the user is to coronavirus spread.

## Basic Details
#### Dashboard: 
The dashboard provides a controlling place in the app from where the different features can be accessed.

#### My Account: 
My Account page provides account-related details to users including their name, email address, and profile picture. It also provides user to share our app and log out from the app.

#### Helpline Contacts: 
We have provided a place where we have stored all the state emergency information as well as national emergency contact details. In case of emergency, the user has to only select the state, and emergency contacts can be dialed from the app.

#### Health Reminders: 
A vaccine is many months away, if not longer. In the meantime, as we return to work, it’s good to know that if we are disciplined about using masks, we could keep ourselves & others safe. So, as a part of the safety app against COVID-19, we have made a feature that will enable you to set reminders for you to stay safe.

#### Safety Test: 
The test provides a relative ranking for the users by analyzing various information related to the coronavirus. The information includes current symptoms, travel history, interaction with patients, and current location.

### Choice of Software:
#### Flutter 1.17.2: 
We have used flutter for a lot of reasons. First is, you can make native android apps using it and have the control on each pixel on the screen. It is also very handy for handling complex user gestures on the screen. But the biggest reason for using flutter is that the application is not limited to the android platform and can be easily extended to iOS and Web via the same base code. 
#### Firebase: 
For handling several user information requests from authentication to data storage, we have used firebase which provides several read, write, and search queries for the different tasks for the user. 
#### Pub Packages: 
There are several pub packages we have used to provide a wide range of features to users. These are a part of flutter itself and they can be integrated with the project very easily. 
#### Covid19India.org API: 
For calculating the safety rating, we require the coronavirus number data. Here the open-source API has proven its worth, as it provides daily updated statewide coronavirus number information in India.

## Learnings
This project helped us a lot to understanding the nuances of a basic flutter app development, how to handle backend processes, how to integrate API with an app and many other user friendly details that an app should have. It was a really nice experience to work on this app.

## Future Expansion Plans:
The app can be further extended to iOS and Web platforms
Also, it can be implemented for people of any country by using the international COVID data API.

## How to run on your virtual machine
For running the application in your virtual device, run the following commands from terminal:
```flutter run```

Or you can directly install the apk from here
[Inffecto.apk](google.com)

Future Playstore link:
[Inffecto Playstore](google.com)
