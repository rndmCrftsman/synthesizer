// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 26/04/2020, 19:07:01
// Component : AudioDataMover



module FIFO (
  input               io_w_en,
  input      [31:0]   io_w_data,
  input               io_r_en,
  output reg [31:0]   io_r_data,
  output              io_empty,
  output              io_half,
  output              io_full,
  input               clk,
  input               reset 
);
  wire       [31:0]   _zz_2_;
  wire                _zz_3_;
  wire                _zz_4_;
  wire       [6:0]    _zz_5_;
  wire       [31:0]   _zz_6_;
  reg                 _zz_1_;
  reg        [6:0]    w_addr;
  reg        [6:0]    r_addr;
  wire       [6:0]    addr_dist;
  reg [31:0] mem [0:127];

  assign _zz_3_ = (io_w_en && (! io_full));
  assign _zz_4_ = (io_r_en && (! io_empty));
  assign _zz_5_ = (w_addr + 7'h01);
  assign _zz_6_ = io_w_data;
  always @ (posedge clk) begin
    if(_zz_1_) begin
      mem[w_addr] <= _zz_6_;
    end
  end

  assign _zz_2_ = mem[r_addr];
  always @ (*) begin
    _zz_1_ = 1'b0;
    if(_zz_3_)begin
      _zz_1_ = 1'b1;
    end
  end

  assign io_empty = ((r_addr == w_addr) ? 1'b1 : 1'b0);
  assign io_full = ((r_addr == _zz_5_) ? 1'b1 : 1'b0);
  assign addr_dist = (w_addr - r_addr);
  assign io_half = (addr_dist[6] ? 1'b1 : 1'b0);
  always @ (*) begin
    io_r_data = 32'h0;
    if(_zz_4_)begin
      io_r_data = _zz_2_;
    end
  end

  always @ (posedge clk) begin
    if(reset) begin
      w_addr <= 7'h0;
      r_addr <= 7'h0;
    end else begin
      if(_zz_3_)begin
        w_addr <= (w_addr + 7'h01);
      end
      if(_zz_4_)begin
        r_addr <= (r_addr + 7'h01);
      end
    end
  end


endmodule
//FIFO_1_ replaced by FIFO

module AudioDataMover (
  output              io_s_data_out_valid,
  input               io_s_data_out_ready,
  output     [31:0]   io_s_data_out_payload,
  input               io_s_data_in_valid,
  output              io_s_data_in_ready,
  input      [31:0]   io_s_data_in_payload,
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [31:0]   io_axi_aw_payload_addr,
  input      [3:0]    io_axi_aw_payload_id,
  input      [3:0]    io_axi_aw_payload_region,
  input      [7:0]    io_axi_aw_payload_len,
  input      [2:0]    io_axi_aw_payload_size,
  input      [1:0]    io_axi_aw_payload_burst,
  input      [0:0]    io_axi_aw_payload_lock,
  input      [3:0]    io_axi_aw_payload_cache,
  input      [3:0]    io_axi_aw_payload_qos,
  input      [2:0]    io_axi_aw_payload_prot,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [3:0]    io_axi_ar_payload_id,
  input      [3:0]    io_axi_ar_payload_region,
  input      [7:0]    io_axi_ar_payload_len,
  input      [2:0]    io_axi_ar_payload_size,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [0:0]    io_axi_ar_payload_lock,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [3:0]    io_axi_ar_payload_qos,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output              io_input_buffer_half,
  output              io_input_buffer_full,
  output              io_output_buffer_half,
  output              io_output_buffer_empty,
  input               clk,
  input               reset 
);
  wire                _zz_1_;
  wire       [31:0]   _zz_2_;
  wire                _zz_3_;
  wire       [31:0]   buffer_out_io_r_data;
  wire                buffer_out_io_empty;
  wire                buffer_out_io_half;
  wire                buffer_out_io_full;
  wire       [31:0]   buffer_in_io_r_data;
  wire                buffer_in_io_empty;
  wire                buffer_in_io_half;
  wire                buffer_in_io_full;
  wire       [7:0]    _zz_4_;
  wire       [7:0]    _zz_5_;
  wire       [31:0]   AXI_ADDRESS;
  wire       [1:0]    AXI_RESP_OK;
  wire       [1:0]    AXI_RESP_SLVERR;
  wire       [1:0]    AXI_BURST_TYPE_FIXED;
  wire       [2:0]    AXI_BURST_SIZE_32bit;
  wire       [7:0]    AXI_BURST_LEN;
  reg                 r_axi_awready;
  reg                 r_axi_wready;
  reg                 r_axi_bvalid;
  reg        [1:0]    r_axi_bresp;
  reg        [3:0]    r_axi_bid;
  reg                 r_axi_arready;
  reg                 r_axi_rvalid;
  reg        [1:0]    r_axi_rresp;
  reg                 r_axi_rlast;
  reg        [3:0]    r_axi_rid;
  reg        [6:0]    axi_r_cnt;
  reg        [6:0]    axi_w_cnt;
  wire                axi_aw_req_valid;
  wire                axi_ar_req_valid;
  reg                 r_axi_aw_req_valid;
  reg                 r_axi_ar_req_valid;

  assign _zz_4_ = (AXI_BURST_LEN + 8'h01);
  assign _zz_5_ = (AXI_BURST_LEN + 8'h01);
  FIFO buffer_out ( 
    .io_w_en      (_zz_1_                      ), //i
    .io_w_data    (_zz_2_[31:0]                ), //i
    .io_r_en      (io_s_data_out_ready         ), //i
    .io_r_data    (buffer_out_io_r_data[31:0]  ), //o
    .io_empty     (buffer_out_io_empty         ), //o
    .io_half      (buffer_out_io_half          ), //o
    .io_full      (buffer_out_io_full          ), //o
    .clk          (clk                         ), //i
    .reset        (reset                       )  //i
  );
  FIFO buffer_in ( 
    .io_w_en      (io_s_data_in_valid          ), //i
    .io_w_data    (io_s_data_in_payload[31:0]  ), //i
    .io_r_en      (_zz_3_                      ), //i
    .io_r_data    (buffer_in_io_r_data[31:0]   ), //o
    .io_empty     (buffer_in_io_empty          ), //o
    .io_half      (buffer_in_io_half           ), //o
    .io_full      (buffer_in_io_full           ), //o
    .clk          (clk                         ), //i
    .reset        (reset                       )  //i
  );
  assign AXI_ADDRESS = 32'h00000400;
  assign AXI_RESP_OK = (2'b00);
  assign AXI_RESP_SLVERR = (2'b10);
  assign AXI_BURST_TYPE_FIXED = (2'b00);
  assign AXI_BURST_SIZE_32bit = (3'b010);
  assign AXI_BURST_LEN = 8'h3f;
  assign io_s_data_in_ready = (! buffer_in_io_full);
  assign io_s_data_out_valid = (! buffer_out_io_empty);
  assign io_s_data_out_payload = buffer_out_io_r_data;
  assign io_input_buffer_half = buffer_in_io_half;
  assign io_input_buffer_full = buffer_in_io_full;
  assign io_output_buffer_half = buffer_out_io_half;
  assign io_output_buffer_empty = buffer_out_io_empty;
  assign io_axi_aw_ready = r_axi_awready;
  assign axi_aw_req_valid = ((((io_axi_aw_payload_addr == AXI_ADDRESS) && (io_axi_aw_payload_len == AXI_BURST_LEN)) && (io_axi_aw_payload_size == AXI_BURST_SIZE_32bit)) && (io_axi_aw_payload_burst == AXI_BURST_TYPE_FIXED));
  assign io_axi_w_ready = r_axi_wready;
  assign _zz_2_ = io_axi_w_payload_data;
  assign _zz_1_ = (((r_axi_aw_req_valid && r_axi_wready) && io_axi_w_valid) && (7'h0 < axi_w_cnt));
  assign io_axi_b_valid = r_axi_bvalid;
  assign io_axi_b_payload_resp = r_axi_bresp;
  assign io_axi_b_payload_id = r_axi_bid;
  assign io_axi_ar_ready = r_axi_arready;
  assign axi_ar_req_valid = ((((io_axi_ar_payload_addr == AXI_ADDRESS) && (io_axi_ar_payload_len == AXI_BURST_LEN)) && (io_axi_ar_payload_size == AXI_BURST_SIZE_32bit)) && (io_axi_ar_payload_burst == AXI_BURST_TYPE_FIXED));
  assign io_axi_r_valid = r_axi_rvalid;
  assign io_axi_r_payload_resp = r_axi_rresp;
  assign io_axi_r_payload_last = r_axi_rlast;
  assign io_axi_r_payload_id = r_axi_rid;
  assign _zz_3_ = (((r_axi_ar_req_valid && r_axi_rvalid) && io_axi_r_ready) && (7'h0 < axi_r_cnt));
  assign io_axi_r_payload_data = buffer_in_io_r_data;
  always @ (posedge clk) begin
    if(reset) begin
      r_axi_awready <= 1'b1;
      r_axi_wready <= 1'b0;
      r_axi_bvalid <= 1'b0;
      r_axi_bresp <= (2'b00);
      r_axi_bid <= (4'b0000);
      r_axi_arready <= 1'b1;
      r_axi_rvalid <= 1'b0;
      r_axi_rresp <= (2'b00);
      r_axi_rlast <= 1'b0;
      r_axi_rid <= (4'b0000);
      axi_r_cnt <= 7'h0;
      axi_w_cnt <= 7'h0;
      r_axi_aw_req_valid <= 1'b0;
      r_axi_ar_req_valid <= 1'b0;
    end else begin
      if((r_axi_awready && io_axi_aw_valid))begin
        r_axi_bid <= io_axi_aw_payload_id;
        axi_w_cnt <= _zz_4_[6:0];
        r_axi_aw_req_valid <= axi_aw_req_valid;
        r_axi_wready <= 1'b1;
        r_axi_awready <= 1'b0;
        if(axi_aw_req_valid)begin
          r_axi_bresp <= AXI_RESP_OK;
        end else begin
          r_axi_bresp <= AXI_RESP_SLVERR;
        end
      end
      if((r_axi_wready && io_axi_w_valid))begin
        if((axi_w_cnt == 7'h01))begin
          r_axi_wready <= 1'b0;
          r_axi_bvalid <= 1'b1;
        end
        axi_w_cnt <= (axi_w_cnt - 7'h01);
      end
      if((r_axi_bvalid && io_axi_b_ready))begin
        r_axi_bvalid <= 1'b0;
        r_axi_awready <= 1'b1;
      end
      if((r_axi_arready && io_axi_ar_valid))begin
        r_axi_rid <= io_axi_ar_payload_id;
        axi_r_cnt <= _zz_5_[6:0];
        r_axi_ar_req_valid <= axi_ar_req_valid;
        r_axi_rvalid <= 1'b1;
        r_axi_arready <= 1'b0;
        if(axi_aw_req_valid)begin
          r_axi_rresp <= AXI_RESP_OK;
        end else begin
          r_axi_rresp <= AXI_RESP_SLVERR;
        end
      end
      if((r_axi_rvalid && io_axi_r_ready))begin
        if((axi_r_cnt == 7'h02))begin
          r_axi_rlast <= 1'b1;
        end else begin
          if((axi_r_cnt == 7'h01))begin
            r_axi_rvalid <= 1'b0;
            r_axi_rlast <= 1'b0;
            r_axi_arready <= 1'b1;
          end
        end
        axi_r_cnt <= (axi_r_cnt - 7'h01);
      end
    end
  end


endmodule
