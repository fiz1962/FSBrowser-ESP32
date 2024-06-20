https://github.com/espressif/arduino-esp32/tree/master/libraries/WebServer/examples/FSBrowser

FSBrowser for Arduino IDE and ESP32 boards.

From FSBrowser example for ESP32 boards in Arduino IDE with several fixes for FFAT file system.  No need to upload data folder.  Files can be added to device using curl without need to upload filesystem image first.

To create a folder (paths must end with /):
  curl -X PUT --user name:password -d path=/somepath/ http://esp32fs.local/edit

To upload a file:
  curl --user name:password -F "file=@edit.htm;filename=/edit.htm" http://esp32fs.local/edit

After uploading edit.htm the filesystem can be accessed by Browsing to {localIP}/edit.htm
