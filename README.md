# CAR_HMI
I did the Front-end Part...
A good vedio here  ( https://drive.google.com/drive/folders/1UD_xj0BMWTLttQa3POPsQnr-A7lF2NI8?usp=sharing )

---A car's digital dashboard is a system of Electronic Control Units (ECUs) 
that gathers information from various automotive components, such as the Battery Management System (BMS),
motoring system, doors, etc. Then send the data to the Raspberry Pi, which is running a Linux OS-based QT application, 
using the CAN protocol. A QT application is created using Qtcreator and C++ as the back-end.
C++ parses the data and prepares it for display before passing it to QML, which is the front-end language. Gauges, 3D objects,
and notifications designed using QML are used to display and signal data changes in the QT application.
The Yocto project is used to build and customize the Linux image to meet 
project requirements with the smallest possible footprint and greatest performance.
