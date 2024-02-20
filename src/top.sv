//_\TLV_version 1d: tl-x.org, generated by SandPiper(TM) 1.14-2022/10/10-beta-Pro
//_\source top.tlv 39

//_\SV
   // Include Tiny Tapeout Lab.
   // Included URL: "https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/35e36bd144fddd75495d4cbc01c4fc50ac5bde6f/tlv_lib/tiny_tapeout_lib.tlv"// Included URL: "https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlv_lib/fpga_includes.tlv"
//_\source top.tlv 93

//_\SV

// ================================================
// A simple Makerchip Verilog test bench driving random stimulus.
// Modify the module contents to your needs.
// ================================================

module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
   // Tiny tapeout I/O signals.
   logic [7:0] ui_in, uo_out;
   
   logic [31:0] r;
   always @(posedge clk) r <= 0;
   assign ui_in = r[7:0];
   
   logic ena = 1'b0;
   logic rst_n = ! reset;

   /*
   // Or, to provide specific inputs at specific times (as for lab C-TB) ...
   // BE SURE TO COMMENT THE ASSIGNMENT OF INPUTS ABOVE.
   // BE SURE TO DRIVE THESE ON THE B-PHASE OF THE CLOCK (ODD STEPS).
   // Driving on the rising clock edge creates a race with the clock that has unpredictable simulation behavior.
   initial begin
      #1  // Drive inputs on the B-phase.
         ui_in = 8'h0;
      #10 // Step 5 cycles, past reset.
         ui_in = 8'hFF;
      // ...etc.
   end
   */

   // Instantiate the Tiny Tapeout module.
   tt_um_template tt(.*);

   assign passed = top.cyc_cnt > 60;
   assign failed = 1'b0;
endmodule


// Provide a wrapper module to debounce input signals if requested.

//_\SV



// =======================
// The Tiny Tapeout module
// =======================

module tt_um_template (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    /*   // The FPGA is based on TinyTapeout 3 which has no bidirectional I/Os (vs. TT6 for the ASIC).
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    */
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
   wire reset = ! rst_n;

// ---------- Generated Code Inlined Here (before 1st \TLV) ----------
// Generated by SandPiper(TM) 1.14-2022/10/10-beta-Pro from Redwood EDA, LLC.
// (Installed here: /usr/local/mono/sandpiper/distro.)
// Redwood EDA, LLC does not claim intellectual property rights to this file and provides no warranty regarding its correctness or quality.


// For silencing unused signal messages.
`define BOGUS_USE(ignore)


genvar digit, input_label, leds, switch;


//
// Signals declared top-level.
//

// For $slideswitch.
logic [7:0] L0_slideswitch_a0;

// For $sseg_decimal_point_n.
logic L0_sseg_decimal_point_n_a0;

// For $sseg_digit_n.
logic [7:0] L0_sseg_digit_n_a0;

// For $sseg_segment_n.
logic [6:0] L0_sseg_segment_n_a0;

// For /fpga_pins/fpga|kyad_twh$cnt.
logic [31:0] FpgaPins_Fpga_KYAD_TWH_cnt_a0,
             FpgaPins_Fpga_KYAD_TWH_cnt_a1;

// For /fpga_pins/fpga|kyad_twh$digit.
logic [3:0] FpgaPins_Fpga_KYAD_TWH_digit_a0;

// For /fpga_pins/fpga|kyad_twh$inp_digit.
logic [3:0] FpgaPins_Fpga_KYAD_TWH_inp_digit_a0;

// For /fpga_pins/fpga|kyad_twh$num.
logic [31:0] FpgaPins_Fpga_KYAD_TWH_num_a0,
             FpgaPins_Fpga_KYAD_TWH_num_a1,
             FpgaPins_Fpga_KYAD_TWH_num_a2;

// For /fpga_pins/fpga|kyad_twh$out.
logic [3:0] FpgaPins_Fpga_KYAD_TWH_out_a0;

// For /fpga_pins/fpga|kyad_twh$reset.
logic FpgaPins_Fpga_KYAD_TWH_reset_a0;




   //
   // Scope: /fpga_pins
   //


      //
      // Scope: /fpga
      //


         //
         // Scope: |kyad_twh
         //

            // Staging of $cnt.
            always_ff @(posedge clk) FpgaPins_Fpga_KYAD_TWH_cnt_a1[31:0] <= FpgaPins_Fpga_KYAD_TWH_cnt_a0[31:0];

            // Staging of $num.
            always_ff @(posedge clk) FpgaPins_Fpga_KYAD_TWH_num_a1[31:0] <= FpgaPins_Fpga_KYAD_TWH_num_a0[31:0];
            always_ff @(posedge clk) FpgaPins_Fpga_KYAD_TWH_num_a2[31:0] <= FpgaPins_Fpga_KYAD_TWH_num_a1[31:0];








//
// Debug Signals
//

   if (1) begin : DEBUG_SIGS_GTKWAVE

      (* keep *) logic [7:0] \@0$slideswitch ;
      assign \@0$slideswitch = L0_slideswitch_a0;
      (* keep *) logic  \@0$sseg_decimal_point_n ;
      assign \@0$sseg_decimal_point_n = L0_sseg_decimal_point_n_a0;
      (* keep *) logic [7:0] \@0$sseg_digit_n ;
      assign \@0$sseg_digit_n = L0_sseg_digit_n_a0;
      (* keep *) logic [6:0] \@0$sseg_segment_n ;
      assign \@0$sseg_segment_n = L0_sseg_segment_n_a0;

      //
      // Scope: /digit[0:0]
      //
      for (digit = 0; digit <= 0; digit++) begin : \/digit 

         //
         // Scope: /leds[7:0]
         //
         for (leds = 0; leds <= 7; leds++) begin : \/leds 
            (* keep *) logic  \//@0$viz_lit ;
            assign \//@0$viz_lit = L1_Digit[digit].L2_Leds[leds].L2_viz_lit_a0;
         end
      end

      //
      // Scope: /fpga_pins
      //
      if (1) begin : \/fpga_pins 

         //
         // Scope: /fpga
         //
         if (1) begin : \/fpga 

            //
            // Scope: |kyad_twh
            //
            if (1) begin : P_kyad_twh
               (* keep *) logic [31:0] \///@0$cnt ;
               assign \///@0$cnt = FpgaPins_Fpga_KYAD_TWH_cnt_a0;
               (* keep *) logic [3:0] \///@0$digit ;
               assign \///@0$digit = FpgaPins_Fpga_KYAD_TWH_digit_a0;
               (* keep *) logic [3:0] \///@0$inp_digit ;
               assign \///@0$inp_digit = FpgaPins_Fpga_KYAD_TWH_inp_digit_a0;
               (* keep *) logic [31:0] \///@0$num ;
               assign \///@0$num = FpgaPins_Fpga_KYAD_TWH_num_a0;
               (* keep *) logic [3:0] \///@0$out ;
               assign \///@0$out = FpgaPins_Fpga_KYAD_TWH_out_a0;
               (* keep *) logic  \///@0$reset ;
               assign \///@0$reset = FpgaPins_Fpga_KYAD_TWH_reset_a0;
            end
         end
      end

      //
      // Scope: /switch[7:0]
      //
      for (switch = 0; switch <= 7; switch++) begin : \/switch 
         (* keep *) logic  \/@0$viz_switch ;
         assign \/@0$viz_switch = L1_Switch[switch].L1_viz_switch_a0;
      end


   end

// ---------- Generated Code Ends ----------
//_\TLV
   /* verilator lint_off UNOPTFLAT */
   // Connect Tiny Tapeout I/Os to Virtual FPGA Lab.
   //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/35e36bd144fddd75495d4cbc01c4fc50ac5bde6f/tlvlib/tinytapeoutlib.tlv 76   // Instantiated from top.tlv, 162 as: m5+tt_connections()
      assign L0_slideswitch_a0[7:0] = ui_in;
      assign L0_sseg_segment_n_a0[6:0] = ~ uo_out[6:0];
      assign L0_sseg_decimal_point_n_a0 = ~ uo_out[7];
      assign L0_sseg_digit_n_a0[7:0] = 8'b11111110;
   //_\end_source

   // Instantiate the Virtual FPGA Lab.
   //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv 307   // Instantiated from top.tlv, 165 as: m5+board(/top, /fpga, 7, $, , calc)
      
      //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv 355   // Instantiated from /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv, 309 as: m4+thanks(m5__l(309)m5_eval(m5_get(BOARD_THANKS_ARGS)))
         //_/thanks
            
      //_\end_source
      
   
      // Board VIZ.
   
      // Board Image.
      
      //_/fpga_pins
         
         //_/fpga
            //_\source top.tlv 46   // Instantiated from /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv, 340 as: m4+calc.
            
            
            
               //16Key KeyPad
               //_|kyad_twh
                  //_@0
            
                     assign FpgaPins_Fpga_KYAD_TWH_reset_a0 = reset;
            
                     assign FpgaPins_Fpga_KYAD_TWH_cnt_a0[31:0] = FpgaPins_Fpga_KYAD_TWH_reset_a0 ? 32'b0 : FpgaPins_Fpga_KYAD_TWH_cnt_a1 + 1'b1;
                     assign FpgaPins_Fpga_KYAD_TWH_num_a0[31:0] = FpgaPins_Fpga_KYAD_TWH_reset_a0 ? 1 : (FpgaPins_Fpga_KYAD_TWH_num_a1 + FpgaPins_Fpga_KYAD_TWH_num_a2);
            
                     assign FpgaPins_Fpga_KYAD_TWH_inp_digit_a0[3:0] = ui_in[3:0];
                     assign FpgaPins_Fpga_KYAD_TWH_out_a0[3:0] = FpgaPins_Fpga_KYAD_TWH_inp_digit_a0[3:0];
                     assign FpgaPins_Fpga_KYAD_TWH_digit_a0[3:0] = FpgaPins_Fpga_KYAD_TWH_out_a0[3:0];
            
            
                     assign uo_out =
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h0 ? 8'b00111111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h1 ? 8'b00000110 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h2 ? 8'b01011011 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h3 ? 8'b01001111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h4 ? 8'b01100110 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h5 ? 8'b01101101 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h6 ? 8'b01111101 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h7 ? 8'b00000111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h8 ? 8'b01111111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'h9 ? 8'b01101111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'ha ? 8'b01110111 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'hb ? 8'b01111100 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'hc ? 8'b00111001 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'hd ? 8'b01011110 :
                        FpgaPins_Fpga_KYAD_TWH_digit_a0 == 4'he ? 8'b01111001 :
                                         8'b01110001;
            
            
            
            
               // Note that pipesignals assigned here can be found under /fpga_pins/fpga.
            
            
            
            
               // Connect Tiny Tapeout outputs. Note that uio_ outputs are not available in the Tiny-Tapeout-3-based FPGA boards.
               //*uo_out = 8'b0;
               
               
            //_\end_source
   
      // LEDs.
      
   
      // 7-Segment
      //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv 395   // Instantiated from /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv, 346 as: m4+fpga_sseg.
         for (digit = 0; digit <= 0; digit++) begin : L1_Digit //_/digit
            
            for (leds = 0; leds <= 7; leds++) begin : L2_Leds //_/leds

               // For $viz_lit.
               logic L2_viz_lit_a0;

               assign L2_viz_lit_a0 = (! L0_sseg_digit_n_a0[digit]) && ! ((leds == 7) ? L0_sseg_decimal_point_n_a0 : L0_sseg_segment_n_a0[leds % 7]);
               
            end
         end
      //_\end_source
   
      // slideswitches
      //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv 454   // Instantiated from /raw.githubusercontent.com/osfpga/VirtualFPGALab/a069f1e4e19adc829b53237b3e0b5d6763dc3194/tlvlib/fpgaincludes.tlv, 349 as: m4+fpga_switch.
         for (switch = 0; switch <= 7; switch++) begin : L1_Switch //_/switch

            // For $viz_switch.
            logic L1_viz_switch_a0;

            assign L1_viz_switch_a0 = L0_slideswitch_a0[switch];
            
         end
      //_\end_source
   
      // pushbuttons
      
   //_\end_source
   // Label the switch inputs [0..7] (1..8 on the physical switch panel) (top-to-bottom).
   //_\source /raw.githubusercontent.com/osfpga/VirtualFPGALab/35e36bd144fddd75495d4cbc01c4fc50ac5bde6f/tlvlib/tinytapeoutlib.tlv 82   // Instantiated from top.tlv, 167 as: m5+tt_input_labels_viz(⌈"Value[0]", "Value[1]", "Value[2]", "Value[3]", "Op[0]", "Op[1]", "Op[2]", "="⌉)
      for (input_label = 0; input_label <= 7; input_label++) begin : L1_InputLabel //_/input_label
         
      end
   //_\end_source

//_\SV
endmodule


// Undefine macros defined by SandPiper.
`undef BOGUS_USE
