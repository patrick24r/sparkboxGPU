# sparkboxGPU  
This repository tracks the development of the GPU for the sparkboxHD .
The GPU renders up to 
* 16-bit parallel command interface
* Onboard flash to support text engine
* Up to 32 layers at once
* Onboard RAM for layer data

# Components  
FPGA: de0-nano  
LCD: NHD-4.3-480272EF-ATXL#  
RAM: (on board de0-nano)  
Flash: TBD

# Algorithm
This GPU runs a 2D rendering algorithm ~~because it's easier to write than a 3D rendering algorithm~~. It can store up to 255 total layers and render up to 32 active layers. To render a single frame, the GPU iterates over each pixel. For each pixel, the GPU starts at the top layer and searches down until it finds a layer on that pixel.

## Controller
Manage commands from the command interface
Manage frame rendering

## Pipeline  
To improve throughput, the algorithm is broken down into a pipeline with the following stages.

### Stage 1: Pixel/Layer Counter  
This stage tracks the next x-y-layer position to find.

### Stage 2: Layer Registers  
During this stage, information on the current layer is retrieved (x/y position, width, height, etc.)

### Stage 3: Address Calculation Unit  
Using the information from the layer registers, this pipe determines if the 

### Stage 4: Read/ Write RAM  
For sprite layers, this contains all the data for each frame. For text layers, this contains the text string. This layer includes a cache for increased performance.

### Stage 5: Read/Write Flash  
This stage is only for text layers. Based on the font, character, and current pixel position, font data is read from non-volitile flash memory.

### Stage 6: Palette Registers  
This stage contains the palette data for each layer. After this layer, if the final pixel value is non-transparent, it is sent to the LCD

### Stage 7: LCD Controller  
This stage controls the output on the LCD screen.
