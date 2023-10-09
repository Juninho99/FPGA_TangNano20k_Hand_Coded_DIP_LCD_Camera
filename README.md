# Camera-to-LCD Streaming
This is an excerpt from my MSEE paper, defended at the Faculty of Electrical Enginering, University of Sarajevo, Bosnia-Herzegovina. The paper explores the application of FPGA programmable structures for Digital Image Processing (DIP). FPGA structures offer high flexibility in constructing custom parallel computation datapaths, making them super fast and often ideal choice for Computer Vision (CV) workloads.  

The paper discusses fundamental DIP concepts, including Morphological Operations, Filtering, and Edge Detection. The study showcases practical implementations of algorithms in logic structures, with price-performance tradeoffs between:
 - Time-Domain Multiplexed
 - Function-Domain Multiplexed
 - Pipelined
 - and wide Parallel DSP.

In doing so, it demonstrates FPGA capacity to significantly boost image processing speeds. Through illustrative examples and empirical results, the paper highlights the distinct advantages of FPGA solutions, contrasting them to traditional CPU and GPU approaches.  

This research then goes to analyze the challenges that arise from configuration demands on FPGA programmable logic, such as:
 - Resource Utilization
 - Resource Optimization
 - Memory Management
 
The techniques for achieving higher <i>Frames Per Second</i> (FPS) processing rates, both with and without <i>Fmax</i> changes, are outlined. At its summit, this work explores how an algorithm, initially designed for <b>Static Images</b>, both generated in real-time and retrieved from memory, can seamlessly be extended to the On-the-Fly Processing of <b>Motion Pictures (aka Video)</b>.  

Throughout this exploration, the study weaves-in the unique intricacies associated with underlying hardware, providing a holistic perspective on the potential for FPGA solutions in the field of digital image and video algorithms.

## 1. Hardware Platform
For a number of good reasons, my experimental system is made of 2 boards, both with Gowin FPGAs:
 - <b>Static Image</b> examples use only the second board (TangNano20K), which drives the LCD screen
 - <b>Motion Picture</b> examples also use the camera board (TangNano4K)
          ![2-board-Video-System Logical-View](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/45703565/4da18116-7d33-40d9-8b21-fb2893a533ed)

Such full, end2end datapath has the video jumping on-off FPGA four times, and streaming between two boards.
              ![2-board-Video-System Physical-View](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/45703565/156385ba-417d-4ef9-81f1-0ea1bde4f702)

## 2. Static Images
### 2.1 Algorithmic Image Generation
This is almost like Vector Graphics, naturally to the extent possible with a standard Bit-Map display. 
 - Image is generated in System Verilog RTL, on-the-fly / "chasing the ray"
<!---![etf-generated-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/10b7db07-097a-45b4-9aa9-393286a1145f)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/10b7db07-097a-45b4-9aa9-393286a1145f" width="700">

### 2.2 Displaying Bit-Map Image from Memory
#### 2.2.1 Binary, Black & White (BW)
<!---![slika-binary-image1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/9f5c0d63-7fc3-4710-a3e1-1c6da688110e)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/9f5c0d63-7fc3-4710-a3e1-1c6da688110e" width="700">

#### 2.2.2 Grayscale
<!---![slika-grayscale-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/5c1088cb-3986-4a52-86d8-972818940291)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/5c1088cb-3986-4a52-86d8-972818940291" width="700">

#### 2.2.3 RGB 565 Color
<!---![slika-colorful-image](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/b2ff067f-7b8b-41c7-acaf-93e6784aed8a)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/b2ff067f-7b8b-41c7-acaf-93e6784aed8a" width="700">

## 3. Digital Image Processing
### 3.1 Morphological Operations
<!---![slika-morphology-erosion1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/2f2de9c1-e0c4-4dec-b749-e52c1bb7420c)-->
<!---![slika-morphology-dilatation1](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/1f4716e5-37fe-493a-b44d-c18c70686317)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/2f2de9c1-e0c4-4dec-b749-e52c1bb7420c" width="700">
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/1f4716e5-37fe-493a-b44d-c18c70686317" width="700">

### 3.2 Gaussian Filter
<!---![slika-gaussian3x3-filtered](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/91b3e353-5b3d-4771-96e8-875533deee7a)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/91b3e353-5b3d-4771-96e8-875533deee7a" width="700">

### 3.3 Sobel Edge Detector
<!---![slika-sobel3x3-edge](https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/23f16f37-7364-46e6-b362-db942b599f21)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_DIP_LCD_Camera/assets/70281175/23f16f37-7364-46e6-b362-db942b599f21" width="700">

## 4. Motion Picture / Video
The video below demonstrates <i>real-time video transfer from camera to screen</i>. 

The 1st FPGA device is equipped with a DVP input. It takes-in video from an OV Camera SOC, and moves it to the 2nd FPGA device, via exernally exposed wires. The second FPGA device receives such streaming video data, passes it through Block RAM (BRAM) configured as an always-half-full FIFO, and renders it on an LCD. The final display operates at 8 FPS. 

Both Camera-to-FPGA1 and FPGA2-to-FPGA2 data handoffs are implemented using <i>Source-synchronous, Eye-centered</i> interfacing method.

https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/128f5e11-914b-4778-95fa-f1b337d61a30


![Camera2LCD-datapath](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/45703565/c9278840-4ddb-492e-9760-e829938d6415)

### 4.1 Dataflow Essentials
Camera keeps streaming data into FPGA1, and cannot be backpressured. That's the classic "Push" interface. 

On the other hand, the Image/Video Processor takes data out of the Pixel Buffer, which is a "Pull" interface. To make it more-efficient in terms of LUT expense, the Image/Video processor takes advantage of blanking intervals, and tries to spread out useful work, at times consuming more than one cycle to process one pixel. This means that, in order not to drop data, the Pixel Buffer must provide a measure of elasticity. This is to absorb the resulting discrepancy between ingress and egress throughput, despite having the same clock rate and data width, both in and out. It does it by <b>running Half Full most of the time</b>, which yields <i>+/- buffer depth of pixel elasticity</i>.

The RGB LCD Backend does not constain the full <i>Store-and-Forward Frame Buffer</i> (FB) either. Instead, it provides the minimal amount of <i>Cut-Through</i> Pixel Buffering, essentialy just enough to smoothen out the occasional burstiness of video output from the Image/Video Processor. 

Substantial memory saving is realized in this way compared to the classic video buffering methods.

![PixelBuffer](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/45703565/85389399-4c11-4ccf-971c-7eebf0b8ba0c)

### 4.2 Key signals for Data Streaming between Camera and Screen
The data transfer between Camera, two FPGA devices and Screen is governed by:
 - Vertical and Horizontal Synchronization Pulses
 - Pixel Clock signal

<!---![Camera-Screen-Signals-Github](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/fcb17978-990f-4714-becf-1a75ad4150d7)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/fcb17978-990f-4714-becf-1a75ad4150d7" width="700">

### 4.3 Key signals in Simulation
Always-half-full FIFO is the key element that ensures smooth data transfer. That's where the "Camera Push" meets the "Screen Pull", and pixel-level elasticity peacefully resolves the potential clash.

<!--![Prikaz prozora GTKWave sa oznakama - Github](https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/34651656-3122-4e60-be29-1f7264e5f736)-->
<img src="https://github.com/Juninho99/FPGA_TangNano20k_Hand_Coded_DIP_LCD_Camera/assets/70281175/34651656-3122-4e60-be29-1f7264e5f736" width="700">

## Closing notes
This brief overview is a mere teaser. I've put it together to instigate curiosity and open the path for follow up, deeper conversations.  

Be it related to:
 - Video
 - Audio
 - General signal-processing
 - or interfacing FPGA to sensors and photonics.

Be it for using:
- Parallel
- Serial: Standard, or High-speed
- Commodity LVDS, or Specialty CML I/O pads
- QSPI, or SerDes
- OV, RPi, or IMX Camera SOCs

I'm always a <b>Challenge Seeker, Problem Analyst</b> and <b>Problem Solver</b> at heart. Yet, I'm not a lone star, but a <b>Team Player within an elaborate community ecosystem</b>. 

In that sense, this Master thesis work has leveraged from the following open-source prior art:
* https://github.com/StereoNinja/StereoNinjaFPGA
* https://github.com/AngeloJacobo/FPGA_OV7670_Camera_Interface
* https://github.com/gatecat/CSI2Rx
* https://github.com/westonb/OV7670-Verilog
* https://github.com/circuitvalley/USB_C_Industrial_Camera_FPGA_USB3
* https://github.com/chili-chips-ba/openXC7-TetriSaraj

Just like I have built on top of open-source community contributions, you are free to use my work as a starter, or incubator for your projects. 

Then, jump one level up to the root of my repo, where you'll find more cool hardware/software designs you can take a look at, and build upon.  
* https://github.com/Juninho99


   <b>--- End of Document ---</b>



