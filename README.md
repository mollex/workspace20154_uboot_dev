# Xilinx U-boot 2015.4 Zynq (Windows Xilinx SDK) 

Ready to use project U-boot with Xilinx SDK. Main goal is build and debug U-boot with IDE in bare metal. 

## Getting Started

This repository contains a full working work space for an easy start working with it. U-boot has been tested by downloading the image Linux  over the network and via a memory SD card. 

Source code U-boot from official Xilinx repositories [https://github.com/Xilinx/u-boot-xlnx](https://github.com/Xilinx/u-boot-xlnx "u-boot-xlnx")  
Release [https://github.com/Xilinx/u-boot-xlnx/releases/tag/xilinx-v2015.4](https://github.com/Xilinx/u-boot-xlnx/releases/tag/xilinx-v2015.4)

### Prerequisites

- Windows 10
- Xilinx SDK 2015.4 (or 2015.3)
- ZedBoard 

### Installing

- clone 
- open as work space with Xilinx SDK 

![OPEN](readme/uboot_open_workspace.png)

### Build

 Workspace consists of three projects.

- system_hw_platform_0 - hardware platform for Zynq 7020 ZedBoard DevKit.
- u-boot-xlnx-xilinx-v2015.4-origin - origin source code (build but not work, not debug yet)
- u-boot-xlnx-xilinx-v2015.4-debug - modify source code (build and debug, work correct)


![PRJ](readme/uboot_projectexplorer.png)

Before building a project, you need to change the absolute paths in two places. These paths depend on where you have your SDK installed and maybe different than mine.

We can do this through the project properties.

```
right click on u-boot-xlnx-xilinx-v2015.4-debug (origin) -> Properties -> C/C++ Build -> Settings -> Derictories
 ```

```
right click on u-boot-xlnx-xilinx-v2015.4-debug (origin) -> Properties -> C/C++ Build -> Settings -> Software Platform
```

![PRJ](readme/uboot_settings.png)


Build Project. A file  **u-boot-xlnx-xilinx-v2015.4-debug.elf** will appear in the folder **Debug**

```
right click on u-boot-xlnx-xilinx-v2015.4-debug (origin) -> Build Project
```

If everything is successful you will see the following:

    'Invoking: ARM Linux Print Size'
    arm-xilinx-linux-gnueabi-size u-boot-xlnx-xilinx-v2015.4-debug.elf  |tee "u-boot-xlnx-xilinx-v2015.4-debug.elf.size"
    text	   data	    bss	    dec	    hex	filename
    842656	  33792	 881088	1757536	 1ad160	u-boot-xlnx-xilinx-v2015.4-debug.elf
    'Finished building: u-boot-xlnx-xilinx-v2015.4-debug.elf.size'

### Debug

Work only with u-boot-xlnx-xilinx-v2015.4-debug project!

- connect ZedBoard (jtag + uart)
- remove SD card
- set jampers  MIO6-GND, MIO5-3.3, MIO4-3.3, MIO3-GND, MIO2-GND    
- open **Debug Configuration** set correct path to **u-boot-xlnx-xilinx-v2015.4-debug.elf** file
- run debug

![PRJ](readme/uboot_debug.png)

### Working 

Explore the project comfortably with breakpoints!

![PRJ](readme/uboot_debug2.png)
