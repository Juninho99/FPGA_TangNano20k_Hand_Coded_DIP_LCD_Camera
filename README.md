# FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera
 
This paper explores the application of FPGA programmable structures in the field of digital image processing. FPGA structures offer high flexibility, speed, and parallel data processing, making them ideal devices for digital image processing.  

The paper discusses fundamental concepts of digital image processing, including morphological operations, filtering, and edge detection. The study showcases practical implementations of the algorithms on FPGA programmable structures, demonstrating their capacity to significantly enhance image processing speeds. Through illustrative examples and empirical results, the paper illuminates the distinct advantages of employing FPGA-based implementations when contrasted with traditional CPU approaches.  

Furthermore, the research addresses challenges that arise during the configuration of FPGA programmable structures, such as resource optimization, memory management, and achieving higher program execution frequencies. The paper culminates in an examination of FPGA programmable structures application in video processing. It explores how the same algorithms, initially designed for processing images retrieved from memory, can be extended seamlessly to the realm of video processing.  

Throughout this exploration, the study weaves in the unique intricacies associated with the selected hardware, providing a holistic perspective on the potential of FPGA-based solutions in the context of digital image and video processing.

## Generating an image on the screen
<!---![etf-generated-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/10b7db07-097a-45b4-9aa9-393286a1145f)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/10b7db07-097a-45b4-9aa9-393286a1145f" width="700">

## Display of the image that was read from the memory
### Binary image
<!---![slika-binary-image1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/9f5c0d63-7fc3-4710-a3e1-1c6da688110e)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/9f5c0d63-7fc3-4710-a3e1-1c6da688110e" width="700">

### Grayscale image
<!---![slika-grayscale-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/5c1088cb-3986-4a52-86d8-972818940291)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/5c1088cb-3986-4a52-86d8-972818940291" width="700">

### Colorful image
<!---![slika-colorful-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/b2ff067f-7b8b-41c7-acaf-93e6784aed8a)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/b2ff067f-7b8b-41c7-acaf-93e6784aed8a" width="700">

## Digital image processing
### Morphological operations
<!---![slika-morphology-erosion1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/2f2de9c1-e0c4-4dec-b749-e52c1bb7420c)-->
<!---![slika-morphology-dilatation1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/1f4716e5-37fe-493a-b44d-c18c70686317)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/2f2de9c1-e0c4-4dec-b749-e52c1bb7420c" width="700">
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/1f4716e5-37fe-493a-b44d-c18c70686317" width="700">

### Gaussian filter
<!---![slika-gaussian3x3-filtered](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/91b3e353-5b3d-4771-96e8-875533deee7a)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/91b3e353-5b3d-4771-96e8-875533deee7a" width="700">

### Sobel edge detector
<!---![slika-sobel3x3-edge](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/23f16f37-7364-46e6-b362-db942b599f21)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/23f16f37-7364-46e6-b362-db942b599f21" width="700">

## Digital video processing
<!---![kamera_grayscale1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/d956337d-0f30-4bd7-8552-6441a25c79bb)-->
<!---![kamera_binary1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/e32e8528-c8bd-4e55-a0c4-36e0ccfd8335)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/d956337d-0f30-4bd7-8552-6441a25c79bb" width="700">
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/e32e8528-c8bd-4e55-a0c4-36e0ccfd8335" width="700">

The video below demonstrates real-time image transmission from a camera to a screen. It is accomplished through a video system made up of 2 boards.  

One FPGA device, equipped with a DVP input for the camera, enables direct data transfer (via wires) to another FPGA device. The second FPGA device receives the data and stores it in block RAM memory. After storing a complete frame, it is displayed on the screen.  

Due to limited memory capacity, the displayed images on the screen are in grayscale. Additionally, synchronization between the FPGA devices, namely the camera and the screen, is ensured using vertical and horizontal synchronization signals, as well as the clock signal. The final display operates at 8 frames per second (fps). Furthermore, real-time image processing algorithms have been successfully tested during the project.  

https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/128f5e11-914b-4778-95fa-f1b337d61a30

## Closing notes

This brief overview is a mere teaser. I've put it together to instigate curiosity and open path for the follow up, deeper conversations.  

Be it related to video, audio, general signal-processing, or interfacing FPGA to sensors and photonics. Be it using Parallel; Low or High-speed Serial; Commodity LVDS, or Specialty CML I/O pads; QSPI or SerDes; OV, RPi, or IMX Camera SOCs -- I'm always a challenge seeker, problem analyst and solver at heart.  

Yet, I'm not a lone star, but a team player with elaborate community ecosystem. In that sense, this Master thesis work of mine has leveraged from the following open-source prior art:

* https://github.com/StereoNinja/StereoNinjaFPGA
* https://github.com/AngeloJacobo/FPGA_OV7670_Camera_Interface
* https://github.com/gatecat/CSI2Rx
* https://github.com/westonb/OV7670-Verilog
* https://github.com/circuitvalley/USB_C_Industrial_Camera_FPGA_USB3
* https://github.com/chili-chips-ba/openXC7-TetriSaraj

Just like I have built on top of open-source community, you are free to use my work as the starter or incubator for your projects. Then, jump one level up to the root of my repo for more cool hardware/software designs to take a look at and build upon.  
* https://github.com/Juninho99






