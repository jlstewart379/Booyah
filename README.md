Would love some insight on why this extremely simple automated test using Appium takes about 38 seconds to run on the iOS simulator.

To run:

1. Clone repo
2. Build the Xcode project BooyahApp.app
3. Tell Appium where to find the app that was built by entering it as the app_path in the .booyah.yml file. 

````yaml
    app_path: <path/to/your/BooyahApp.app>
````

4. Install the app on the simulator using 

````
    $rake install
````    
5. Start your appium server. If you have appium installed through npm you can do 
````
    $rake appium
````    
6. Start your cucumber test 

````
    $bundle exec cucumber
````

This basic test takes about 38 seconds to execute. All it does is:

1. Enter text into a text field
2. Presses a button
3. Verifies a label is present 

