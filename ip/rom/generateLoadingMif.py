#!/usr/bin/python
import pathlib, os, sys, array
from os import path
from PIL import Image, ImageDraw, ImageFont

# Screen variables
WIDTH = 480
HEIGHT = 272
TEXT = "Loading..."
BG_COLOR = (20, 20, 20)
FT_COLOR = (230, 230, 230)

# Loading bar variables
BAR_WIDTH = int(WIDTH * 3 / 4)
BAR_HEIGHT = int(HEIGHT / 20)
BAR_POS_X = int((WIDTH-BAR_WIDTH) / 2)
BAR_POS_Y = int(HEIGHT * 0.75)

def customHexFormat(number):
    bytestring = '{:04x}'.format(number)
    retstring = ""
    for i in range(len(bytestring)-2,-1,-2):
        retstring = retstring + bytestring[i:i+2] + " "

    return retstring.strip()

# ----------------------------------------------------------------------------- #
# Generate a mif file for loading screen data in the same directory as this file
dir = pathlib.Path(__file__).parent.absolute()
mifFile = path.join(dir, 'loadingScreen.mif')
# Delete the old file if it exists
if path.exists(mifFile):
    os.remove(mifFile)
# Create the new image loading file
pngFile = path.join(dir, 'loadingScreen.png')

# ----------------------------------------------------------------------------- #
# Generate the loading sceen image
img = Image.new('RGB', (WIDTH, HEIGHT), color = BG_COLOR)
# Draw the loading text in the screen center
fnt = ImageFont.truetype('arial.ttf', int(WIDTH / 8))
d = ImageDraw.Draw(img)
TEXT_W, TEXT_H = d.textsize(TEXT, font=fnt)
# Draw loading text
d.text(((WIDTH - TEXT_W)/2,(HEIGHT-TEXT_H)/2), TEXT, font=fnt, fill=FT_COLOR)
# Draw loading bar
d.rectangle([BAR_POS_X, BAR_POS_Y, BAR_POS_X + BAR_WIDTH, BAR_POS_Y + BAR_HEIGHT], fill=FT_COLOR)
d.rectangle([BAR_POS_X - 5, BAR_POS_Y - 5, BAR_POS_X + BAR_WIDTH + 5, BAR_POS_Y + BAR_HEIGHT + 5], fill=None, width=2)

# Save the image file
img.save(pngFile)

# ----------------------------------------------------------------------------- #
# Generate the mif file to contain the image data
mif = open(mifFile, "w+")
im = Image.open(pngFile, "r")

# Get the colors from the image

pixels = im.load()
# Convert the image to a bit array where 1 means the color at that pixel
# is not the backgroud color
byteArray = array.array('B')
bitCount = 0
byte = 0x0
for y in range(0, HEIGHT-1):
    for x in range(0, WIDTH-1):
        if (pixels[x,y] == FT_COLOR):
            byte = byte | (1 << bitCount)

        bitCount = bitCount + 1
        if (bitCount == 8):
            bitCount = 0
            byteArray.append(byte)
            byte = 0x0

# Write file information header
mif.write("DEPTH = 16384;\nWIDTH = 8;\n")
mif.write("ADDRESS_RADIX = DEC;\nDATA_RADIX = HEX;\n")

mif.write("CONTENT\nBEGIN\n")
# MEMORY LAYOUT
# BYTES 0-63: HEADER info (bar width, bar height, bar x, bar y, bg color, ft color)
# [BYTE ADDRESS] : data description
# [1:0] : bar x position
mif.write("0 : " + customHexFormat(BAR_POS_X) + "; -- Bar x position\n")
# [3:2] : bar y poisition
mif.write("2 : " + customHexFormat(BAR_POS_Y) + "; -- Bar y position\n")
# [5:4] : bar width (pixels)
mif.write("4 : " + customHexFormat(BAR_WIDTH) + "; -- Bar width\n")
# [7:6] : bar height (pixels)
mif.write("6 : " + customHexFormat(BAR_HEIGHT) + "; -- Bar height\n")
# [31:8] : background color
mif.write("8 : " + '{:02x}'.format(BG_COLOR[2]) + " " + '{:02x}'.format(BG_COLOR[1]) + " " + '{:02x}'.format(BG_COLOR[0]) +"; -- Background color RGB\n")
# [55:32] : front color
mif.write("11 : " + '{:02x}'.format(FT_COLOR[2]) + " " + '{:02x}'.format(FT_COLOR[1]) + " " + '{:02x}'.format(FT_COLOR[0]) +"; -- Front color RGB\n")

# BYTES 64-16383: Image pixel information
for i in range(len(byteArray)):
    if (byteArray[i] != 0):
        mif.write(str(i) + " : " + '{:02x}'.format(byteArray[i]) + ";\n")


mif.write("END;\n")
mif.close()

