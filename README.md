## This application will authenticate user to ARTIK Cloud and send a random temperature value to user's sample device

### **Introduction**

In this tutorial we will build your first ARTIK Cloud iOS app to authenticate your user then send and retrieve a random value to a temperature/fire sensor.

At the end of the lesson you'll:

1. Familiarize with ARTIK Cloud dashboard to Create a Device and Create Application.
2. Use 'pod install' to import **ARTIK Cloud SDK for Swift**.
3. Authenticate with Oauth2 to retrieve your user token and write to your device.
4. Use the Messages API to read and write to your device.

### **Prerequisites**

- xcode

### **Setup ARTIK Cloud Device and Application**

We'll need to create an ARTIK Cloud device and application to continue.   The following recommendations below will get you started:

**Create ARTIK Cloud Device:**

1. Sign into [My ARTIK Cloud](https://artik.cloud/)
2. [Connect a new device]("https://artik.cloud/my/devices") by selecting the Demo Fire Sensor (from cloud.artik.sample.demofiresensor) and name your sensor SampleFireSensor (or any name you'd like).
3. Click the Settings icon of the device you just added. Get the **device id** and **device token**. If the token does not already exist, click "GENERATE DEVICE TOKEN…" to get one.  

**Create ARTIK Cloud Application**

1. Go to the [Applications Dashboard](https://developer.artik.cloud/) to create your first application.
2. Create New Application and fill in the following for this tutorial
   - App Name - 'My ARTIK App' or any name you like
   - Description - with any description
   - Authorization Methods - Be sure to select *client credentials, auth code, implicit* for this sample app
   - Auth Redirect Url: sampleApp://callback
   - Save the Application
3. Set Permissions for Application
   - Go to the Permissions Tab for your application
   - Just select the "READ" checkbox for Read/Write profile.  *This will allow the user to grant the application the user's profile like the user's full name, however, we will not use this sample*
   - Set "Device Permissions" by searching for "Demo Fire Sensor" and select "READ/WRITE" for both checkbox.   *This will allow the user to grant the application READ / WRITE permissions so the app can send and retrieve data from the device we created earlier*

### **Project Installation and Setup**

If you have not done so already, clone the sample application available on github:

```
git clone https://github.com/artikcloud/tutorial-ios-yourFirstApp.git
```

Enter the parent directory and enter the following in the terminal to install the ARTIK Cloud Swift SDK

```
pod install
```

Navigate to your project folder and open the file ending with xcworkspace which will launch xcode: 

```
navigate and open your .xcworkspace file
```

In the Xcode project, navigate to the Config.swift file and fill in your **DeviceId** and **Application ClientId** from earlier setup.

```
//Swift.config file
static let DeviceId = "YourDeviceId"
static var AppClientId: String = "YourAppClientId"
```

### **Run Project**

Great!  Your project is ready to run.   In the Xcode IDE go to Product —> Run to run your app and will launch the iOS Simulator.

**Using the App**

1. In iOS Simulator, click on the Login button.   This will launch a webview login form.  Enter user's credentials to login to ARTIK Cloud and grant permission to devices.
2. Click Send Message which will send a random temperaure value to the user's sample device.
3. Click Get Message to retrieve the last message sent to the user's sample device.

### View your data in My ARTIK Cloud

Have you visited ARTIK Cloud [data visualization tool](https://artik.cloud/my/data)?

Select your device from the charts to view your device data in realtime.   Try sending a message multiple times.  Here's a screenshot:

![GitHub Logo](./img/screenshot-firesensor-datachart.png)

### Swift SDK Reference / More Examples

[Swift SDK on github](https://github.com/artikcloud/artikcloud-swift)
Peek into [tests](https://github.com/artikcloud/artikcloud-swift/tree/master/ArtikCloudTests/ArtikCloudClientTests) in ARTIK Cloud Python SDK for more SDK usage examples.

### More about ARTIK Cloud

If you are not familiar with ARTIK Cloud, we have extensive documentation at https://developer.artik.cloud/documentation

The full ARTIK Cloud API specification can be found at https://developer.artik.cloud/documentation/api-reference/

Peek into advanced sample applications at https://developer.artik.cloud/documentation/samples/

To create and manage your services and devices on ARTIK Cloud, visit the Developer Dashboard at https://developer.artik.cloud

### License and Copyright

Licensed under the Apache License. See LICENSE.

Copyright (c) 2016 Samsung Electronics Co., Ltd. 

