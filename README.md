# dhiwise_project

An Assessment project for the dhiwse technical round. 

The project is simple money saving application for house buying which allows the user to moniter it's saving via different forms and look over the metrics.

The project uses firebase firestore to store the data and connects to it to get the data.

## Flutter Project setup

1. create a new folder with project "folder-name".
2. Open the terminal with the respective newly created folder.
3. On the terminal hit the command :
   ```
   git clone https://github.com/Developer-Krishnapc/dhiwise_project_task/tree/master
   ```
4. This will pull the project from github and create a clone for the same.
5. Open the project with any ide or code editor Eg. Vs Code, Android studio, etc.
6. Open the terminal and run the commands sequentionally
   ```
   > flutter pub get
   > cd ios
   > pod repo update
   > pod install
   > cd ..
   > flutter pub run build_runner watch -d
   ```
7. This commands will install all the dependcies and also generate the boilerplate required code for 'Riverpod'
8. Click on the run button or just enter the command `flutter run lib/main.dart`



## Firebase Configuration

No firebase configuration for the project as firebase config file is not inclueded in the git ignore. Just follow the flutter project setup and you are good to go.



</br></br>
# Firebase Rules.

1. For the demo project with only one collection i have given the view access to the users for now as the application do not conatin the feature to add the contibution for the saving.

2. If the project would have the feature to add the contribution we would have to restrict it to specific user via authentication.


```
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {

    match /{document=**} {
      allow read;
    }
  }
}
```

