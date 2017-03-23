
parameter CLK_PERIOD = 10ns;
module tb_crc ();
    
    bit clk = 0;
    bit reset_n;
    
    bit unsigned [7:0]   data_in;
    bit unsigned [15:0]  crc_out;
        
    
    wire test_all_done;
    
    assign test_all_done = 0;

    int test_case = 0;
    
    bit crc_en = 0;
    

    initial begin
        forever begin 
            #(CLK_PERIOD/2);
            
            if (test_all_done) begin
                break;
            end else begin
                clk = (~clk);
            end
        end
    end
    
    initial begin
        crc_en = 0;
        data_in = 0;
        reset_n = 1;
        # (6 * CLK_PERIOD);
        reset_n = 0;
        
        # (1 * CLK_PERIOD);
        reset_n = 1;
        
        # (1 * CLK_PERIOD);
        crc_en = 1;
        data_in = 8'd49;
        # (1 * CLK_PERIOD);
        data_in = 8'd50;
        # (1 * CLK_PERIOD);
        data_in = 8'd51;
        # (1 * CLK_PERIOD);
        data_in = 8'd52;
            
            ;
        
        
        
    end
    
    crc16_CCITT crc16_CCITT_i (.*,
            .sync_reset (1'b0),
            .crc_en (crc_en),
            .data_in (data_in),
            .crc_out (crc_out));
    
    
    
endmodule : tb_crc

