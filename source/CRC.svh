`ifndef CRC_SVH
`define CRC_SVH

extern module crc16_CCITT #(parameter INIT_VALUE = 16'hFFFF) (
        input wire                  clk,
        input wire                  reset_n,
        
        input wire                  sync_reset,
        
        input wire                  crc_en,
        input wire unsigned [7:0]   data_in,
        
        output wire unsigned [15:0] crc_out
);

`endif
