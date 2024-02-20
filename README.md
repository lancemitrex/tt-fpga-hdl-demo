The project was originated during the training class, "ChipCraft: The Art of Chip Design for Non-Experts" presented by eFabless.

Project Title: Input DIP Switch to HEX 7-Segment Display.

This Project is a 'simple' project for inexperienced FPGA and/or inexperienced Verilog programmers. 
The project reads the INPUT DIP Switch on the Tiny Tapeout Demo Board and outputs the properly formatted Hex character, to the 7-Segment display which is also located on the Tiny Tapeout Demo Board.

The complete Transaction-Level Verilog code is located in the file, "DIPSwitch_7-segment.v"

The remainder of this README.md file outlines the process utilized for this project.

================================================================================================================================================

Overview
This project provides a template for generating an FPGA bitstream for a Verilog based design for Tiny Tapeout.

What is Tiny Tapeout?
TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

How to Use this Template
1. Create your design
Develop your Verilog design using a local or web-based IDE. Simulate your design to ensure it functions properly.

To program the FPGA demo board with your design, follow the next set of instructions.

2. Clone this repo
Create a GitHub account if you don't have one. Log into your account and select the 'Use this template' button in the upper right to clone a new copy of this repo in your GitHub account.

3. Enable GitHub actions to build the results page
Enabling GitHub Pages
4. Edit info.yaml
Edit the info.yaml. Set the following parameters in the file:

project:
  wokwi_id:  0
  source_files:
    - top.sv  # for designs generated by Makerchip
    - [file#1.v]
    - [file#2.sv]
  top_module: tt_um_template  # for designs generated by Makerchip 
  
documentation: 
  author:       "Your name here"                   # Your name
  title:        "Verilog FPGA bitstream"           # Project title
  language:     "Verilog"                          # other examples include Verilog, Amaranth, VHDL, etc
  description:  "The project generates an FPGA bitstream for a Verilog based Tiny Tapeout design."      # Short description of what your project does

5. Update / add your Verilog files
For designs generated by Makerchip, replace the file top.sv with your System Verilog.

For other Verilog designs, add or update the top module verilog file plus any others used in the design.

Commit all changes to the remote repo.

6. Generate and download your FPGA bitstream
Once GitHub Actions have been enabled for your copy of this repo, GitHub will automatically run the workflows found under the Actions menu for your repo.

Everytime to commit a change to the repo, the GitHub Actions including FPGA action will trigger the workflow automatically.

A green checkmark shows the workflow completed successfully. Click on the workflow on the Actions summary page for the workflow. At the bottom of the page you will find an Artifacts section with a bitstream link. Click to download locally to your desktop. Navigate to the downloaded file and click to unpack the zip file and get a 'wokwi.bin' file.

Follow the instruction to program the bitstream on your demo board.

7. Programming your bitstream on the FPGA board
Put your board in 'Boot Mode'
While holding the 'Boot' button on the top carrier board, connect a USB from your desktop to the top carrier to power on the board.

Release the 'boot' button.

Select from one of the options below to program the bitstream to the board.

WebUSB DFU
Navigate to the follow web page.

https://devanlai.github.io/webdfu/dfu-util/

Click the 'Connect' button and select the device with 'Tiny Tapeout'. A pop menu should appear. Select the 'ICE40' interface.

Click the 'Choose File' button under Firmware Download. Select the woki.bin file you downloaded previously. Click the Download button.

Unplug and re-plug the USB in the top carrier to power cycle the board.

dfu-util for Win64
Download and unzip the following executable...

https://files.ef.link/mest/win64.zip

dfu-util.exe will be installed under /win64

dfu-util for Mac
brew install dfu-util

Ubuntu
It's pre-installed… yay… but you don't have permission to use it. To open USB access:

echo 'ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="1d50", ATTRS{idProduct}=="6146", MODE="664", GROUP="plugdev", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/50-usb.rules sudo udevadm control --reload-rules sudo udevadm trigger

Wokwi Projects
For Wokwi projects, see the following repo for a template that supports Wokwi based designs.

https://github.com/efabless/tt-fpga-demo

Other Resources
FAQ
Digital design lessons
Learn how semiconductors work
Join the community
What next?
Submit your design to the next shuttle on the website. The closing date is November 4th.
Edit this README and explain your design, how it works, and how to test it.
Share your GDS on your social network of choice, tagging it #tinytapeout and linking Matt's profile:
LinkedIn #tinytapeout matt-venn
Mastodon #tinytapeout @matthewvenn
Twitter #tinytapeout @matthewvenn
