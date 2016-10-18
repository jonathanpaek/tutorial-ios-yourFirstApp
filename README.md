# An iOS swift application sends data to and receives data from ARTIK Cloud

Let's build an iOS application that communicates to ARTIK Cloud using ARTIK Cloud's swift SDK. This tutorial is meant to help you understand how to use the SDK to perform basic operations in ARTIK Cloud.

Introduction
-------------

The tutorial [Your first iOS app](https://developer.artik.cloud/documentation/tutorials/your-first-ios-app.html) at https://developer.artik.cloud/documentation describes what the system does and how it is implemented.

Consult [Initial setup](https://developer.artik.cloud/documentation/tutorials/your-first-ios-app.html#initial-setup) in the tutorial to set up the cloud and Android App.

Setup Installation
------------------

 *. Sign into [My ARTIK Cloud](https://artik.cloud/)
 *. On the device dashboard, click to connect a new device. Select the Demo Fire Sensor (from cloud.artik.sample.demofiresensor) and name your sensor SampleFireSensor (or any name you'd like).
 *. Click the Settings icon on the device you just added. Get the **device ID** and **device token**. If the token does not already exist, click "GENERATE DEVICE TOKEN…" to get one.   We will only use the 'device id' in this app since the the logged in user will have access to the device.
 *. Visit the Introduction selection to create your Application to retrieve your clientId.
 *. Install ARTIK Cloud Swift SDK:
  ```
  #in project directory run:
  pod install
  ```
 *. Open project file with Xcode (sample-swift-SDKStarterWithOauth2.xcworkspace)
 *. Enter deviceId and clientId in your Config.swift file.
 *. Run (Command-R) your app in xcode which will open your app in the iOS Simulator.


More about ARTIK Cloud
---------------

If you are not familiar with ARTIK Cloud, we have extensive documentation at https://developer.artik.cloud/documentation

The full ARTIK Cloud API specification can be found at https://developer.artik.cloud/documentation/api-spec.html

Peek into advanced sample applications at https://developer.artik.cloud/documentation/samples/

To create and manage your services and devices on ARTIK Cloud, visit the Developer Dashboard at https://developer.artik.cloud

License and Copyright
---------------------

Licensed under the Apache License. See LICENSE.

Copyright (c) 2016 Samsung Electronics Co., Ltd. 
