// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 16/08/2020, 13:59:28
// Component : AudioStation



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
  wire       [4:0]    _zz_5_;
  wire       [31:0]   _zz_6_;
  reg                 _zz_1_;
  reg        [4:0]    w_addr;
  reg        [4:0]    r_addr;
  wire       [4:0]    addr_dist;
  reg [31:0] mem [0:31];

  assign _zz_3_ = (io_w_en && (! io_full));
  assign _zz_4_ = (io_r_en && (! io_empty));
  assign _zz_5_ = (w_addr + 5'h01);
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
  assign io_half = (addr_dist[4] ? 1'b1 : 1'b0);
  always @ (*) begin
    io_r_data = 32'h0;
    if(_zz_4_)begin
      io_r_data = _zz_2_;
    end
  end

  always @ (posedge clk) begin
    if(reset) begin
      w_addr <= 5'h0;
      r_addr <= 5'h0;
    end else begin
      if(_zz_3_)begin
        w_addr <= (w_addr + 5'h01);
      end
      if(_zz_4_)begin
        r_addr <= (r_addr + 5'h01);
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
  reg        [4:0]    axi_r_cnt;
  reg        [4:0]    axi_w_cnt;
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
  assign AXI_ADDRESS = 32'h0;
  assign AXI_RESP_OK = (2'b00);
  assign AXI_RESP_SLVERR = (2'b10);
  assign AXI_BURST_TYPE_FIXED = (2'b00);
  assign AXI_BURST_SIZE_32bit = (3'b010);
  assign AXI_BURST_LEN = 8'h0f;
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
  assign _zz_1_ = (((r_axi_aw_req_valid && r_axi_wready) && io_axi_w_valid) && (5'h0 < axi_w_cnt));
  assign io_axi_b_valid = r_axi_bvalid;
  assign io_axi_b_payload_resp = r_axi_bresp;
  assign io_axi_b_payload_id = r_axi_bid;
  assign io_axi_ar_ready = r_axi_arready;
  assign axi_ar_req_valid = ((((io_axi_ar_payload_addr == AXI_ADDRESS) && (io_axi_ar_payload_len == AXI_BURST_LEN)) && (io_axi_ar_payload_size == AXI_BURST_SIZE_32bit)) && (io_axi_ar_payload_burst == AXI_BURST_TYPE_FIXED));
  assign io_axi_r_valid = r_axi_rvalid;
  assign io_axi_r_payload_resp = r_axi_rresp;
  assign io_axi_r_payload_last = r_axi_rlast;
  assign io_axi_r_payload_id = r_axi_rid;
  assign _zz_3_ = (((r_axi_ar_req_valid && r_axi_rvalid) && io_axi_r_ready) && (5'h0 < axi_r_cnt));
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
      axi_r_cnt <= 5'h0;
      axi_w_cnt <= 5'h0;
      r_axi_aw_req_valid <= 1'b0;
      r_axi_ar_req_valid <= 1'b0;
    end else begin
      if((r_axi_awready && io_axi_aw_valid))begin
        r_axi_bid <= io_axi_aw_payload_id;
        axi_w_cnt <= _zz_4_[4:0];
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
        if((axi_w_cnt == 5'h01))begin
          r_axi_wready <= 1'b0;
          r_axi_bvalid <= 1'b1;
        end
        axi_w_cnt <= (axi_w_cnt - 5'h01);
      end
      if((r_axi_bvalid && io_axi_b_ready))begin
        r_axi_bvalid <= 1'b0;
        r_axi_awready <= 1'b1;
      end
      if((r_axi_arready && io_axi_ar_valid))begin
        r_axi_rid <= io_axi_ar_payload_id;
        axi_r_cnt <= _zz_5_[4:0];
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
        if((axi_r_cnt == 5'h02))begin
          r_axi_rlast <= 1'b1;
        end else begin
          if((axi_r_cnt == 5'h01))begin
            r_axi_rvalid <= 1'b0;
            r_axi_rlast <= 1'b0;
            r_axi_arready <= 1'b1;
          end
        end
        axi_r_cnt <= (axi_r_cnt - 5'h01);
      end
    end
  end


endmodule

module I2S (
  output              io_s_data_out_valid,
  input               io_s_data_out_ready,
  output     [31:0]   io_s_data_out_payload,
  input               io_s_data_in_valid,
  output              io_s_data_in_ready,
  input      [31:0]   io_s_data_in_payload,
  output              io_bclk,
  output              io_mclk,
  output              io_pblrc,
  output              io_pbdat,
  output              io_reclrc,
  input               io_recdat,
  input               clk,
  input               reset 
);
  reg        [31:0]   r_buffer_out;
  reg                 r_buffer_out_full;
  reg        [31:0]   r_buffer_in;
  reg                 r_buffer_in_full;
  reg        [4:0]    r_cnt_mclk_en;
  reg        [10:0]   r_cnt_lrclk_en;
  reg        [11:0]   r_cnt_frame_en;
  reg                 r_mclk_en;
  reg                 r_lrclk_en;
  reg                 r_frame_en;
  reg        [63:0]   r_data;
  reg                 r_mclk;
  reg                 r_lrclk;
  reg                 r_write_read;

  assign io_s_data_out_valid = r_buffer_out_full;
  assign io_s_data_out_payload = r_buffer_out;
  assign io_s_data_in_ready = (! r_buffer_in_full);
  assign io_mclk = r_mclk;
  assign io_bclk = r_mclk;
  assign io_pblrc = r_lrclk;
  assign io_reclrc = r_lrclk;
  assign io_pbdat = r_data[63];
  always @ (posedge clk) begin
    if(reset) begin
      r_buffer_out <= 32'h0;
      r_buffer_out_full <= 1'b0;
      r_buffer_in <= 32'h0;
      r_buffer_in_full <= 1'b0;
      r_cnt_mclk_en <= 5'h0;
      r_cnt_lrclk_en <= 11'h0;
      r_cnt_frame_en <= 12'h0;
      r_mclk_en <= 1'b0;
      r_lrclk_en <= 1'b0;
      r_frame_en <= 1'b0;
      r_data <= 64'h0;
      r_mclk <= 1'b0;
      r_lrclk <= 1'b0;
      r_write_read <= 1'b0;
    end else begin
      if((r_cnt_mclk_en == 5'h09))begin
        r_cnt_mclk_en <= 5'h0;
        r_mclk_en <= 1'b1;
      end else begin
        r_cnt_mclk_en <= (r_cnt_mclk_en + 5'h01);
        r_mclk_en <= 1'b0;
      end
      if((r_cnt_lrclk_en == 11'h27f))begin
        r_cnt_lrclk_en <= 11'h0;
        r_lrclk_en <= 1'b1;
      end else begin
        r_cnt_lrclk_en <= (r_cnt_lrclk_en + 11'h001);
        r_lrclk_en <= 1'b0;
      end
      if((r_cnt_frame_en == 12'h4ff))begin
        r_cnt_frame_en <= 12'h0;
        r_frame_en <= 1'b1;
      end else begin
        r_cnt_frame_en <= (r_cnt_frame_en + 12'h001);
        r_frame_en <= 1'b0;
      end
      if(r_mclk_en)begin
        r_mclk <= (! r_mclk);
      end
      if(r_lrclk_en)begin
        r_lrclk <= (! r_lrclk);
      end
      if((io_s_data_in_valid && io_s_data_in_ready))begin
        r_buffer_in <= io_s_data_in_payload;
        r_buffer_in_full <= 1'b1;
      end
      if((io_s_data_out_valid && io_s_data_out_ready))begin
        r_buffer_out_full <= 1'b0;
      end
      if(r_mclk_en)begin
        r_write_read <= (! r_write_read);
      end
      if(r_frame_en)begin
        r_buffer_out <= r_data[62 : 31];
        r_buffer_out_full <= 1'b1;
        r_data <= {r_buffer_in,r_buffer_in};
        r_buffer_in_full <= 1'b0;
      end else begin
        if(r_mclk_en)begin
          if(r_write_read)begin
            r_data <= {r_data[62 : 0],io_recdat};
          end
        end
      end
    end
  end


endmodule

module AudioStation (
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
  output              io_bclk,
  output              io_mclk,
  output              io_pblrc,
  output              io_pbdat,
  output              io_reclrc,
  input               io_recdat,
  input               clk,
  input               reset 
);
  wire                audio_data_mover_io_s_data_out_valid;
  wire       [31:0]   audio_data_mover_io_s_data_out_payload;
  wire                audio_data_mover_io_s_data_in_ready;
  wire                audio_data_mover_io_axi_ar_ready;
  wire                audio_data_mover_io_axi_aw_ready;
  wire                audio_data_mover_io_axi_w_ready;
  wire                audio_data_mover_io_axi_r_valid;
  wire       [31:0]   audio_data_mover_io_axi_r_payload_data;
  wire       [3:0]    audio_data_mover_io_axi_r_payload_id;
  wire       [1:0]    audio_data_mover_io_axi_r_payload_resp;
  wire                audio_data_mover_io_axi_r_payload_last;
  wire                audio_data_mover_io_axi_b_valid;
  wire       [3:0]    audio_data_mover_io_axi_b_payload_id;
  wire       [1:0]    audio_data_mover_io_axi_b_payload_resp;
  wire                audio_data_mover_io_input_buffer_half;
  wire                audio_data_mover_io_input_buffer_full;
  wire                audio_data_mover_io_output_buffer_half;
  wire                audio_data_mover_io_output_buffer_empty;
  wire                i2s_1__io_s_data_out_valid;
  wire       [31:0]   i2s_1__io_s_data_out_payload;
  wire                i2s_1__io_s_data_in_ready;
  wire                i2s_1__io_bclk;
  wire                i2s_1__io_mclk;
  wire                i2s_1__io_pblrc;
  wire                i2s_1__io_pbdat;
  wire                i2s_1__io_reclrc;

  AudioDataMover audio_data_mover ( 
    .io_s_data_out_valid         (audio_data_mover_io_s_data_out_valid          ), //o
    .io_s_data_out_ready         (i2s_1__io_s_data_in_ready                     ), //i
    .io_s_data_out_payload       (audio_data_mover_io_s_data_out_payload[31:0]  ), //o
    .io_s_data_in_valid          (i2s_1__io_s_data_out_valid                    ), //i
    .io_s_data_in_ready          (audio_data_mover_io_s_data_in_ready           ), //o
    .io_s_data_in_payload        (i2s_1__io_s_data_out_payload[31:0]            ), //i
    .io_axi_aw_valid             (io_axi_aw_valid                               ), //i
    .io_axi_aw_ready             (audio_data_mover_io_axi_aw_ready              ), //o
    .io_axi_aw_payload_addr      (io_axi_aw_payload_addr[31:0]                  ), //i
    .io_axi_aw_payload_id        (io_axi_aw_payload_id[3:0]                     ), //i
    .io_axi_aw_payload_region    (io_axi_aw_payload_region[3:0]                 ), //i
    .io_axi_aw_payload_len       (io_axi_aw_payload_len[7:0]                    ), //i
    .io_axi_aw_payload_size      (io_axi_aw_payload_size[2:0]                   ), //i
    .io_axi_aw_payload_burst     (io_axi_aw_payload_burst[1:0]                  ), //i
    .io_axi_aw_payload_lock      (io_axi_aw_payload_lock                        ), //i
    .io_axi_aw_payload_cache     (io_axi_aw_payload_cache[3:0]                  ), //i
    .io_axi_aw_payload_qos       (io_axi_aw_payload_qos[3:0]                    ), //i
    .io_axi_aw_payload_prot      (io_axi_aw_payload_prot[2:0]                   ), //i
    .io_axi_w_valid              (io_axi_w_valid                                ), //i
    .io_axi_w_ready              (audio_data_mover_io_axi_w_ready               ), //o
    .io_axi_w_payload_data       (io_axi_w_payload_data[31:0]                   ), //i
    .io_axi_w_payload_strb       (io_axi_w_payload_strb[3:0]                    ), //i
    .io_axi_w_payload_last       (io_axi_w_payload_last                         ), //i
    .io_axi_b_valid              (audio_data_mover_io_axi_b_valid               ), //o
    .io_axi_b_ready              (io_axi_b_ready                                ), //i
    .io_axi_b_payload_id         (audio_data_mover_io_axi_b_payload_id[3:0]     ), //o
    .io_axi_b_payload_resp       (audio_data_mover_io_axi_b_payload_resp[1:0]   ), //o
    .io_axi_ar_valid             (io_axi_ar_valid                               ), //i
    .io_axi_ar_ready             (audio_data_mover_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr      (io_axi_ar_payload_addr[31:0]                  ), //i
    .io_axi_ar_payload_id        (io_axi_ar_payload_id[3:0]                     ), //i
    .io_axi_ar_payload_region    (io_axi_ar_payload_region[3:0]                 ), //i
    .io_axi_ar_payload_len       (io_axi_ar_payload_len[7:0]                    ), //i
    .io_axi_ar_payload_size      (io_axi_ar_payload_size[2:0]                   ), //i
    .io_axi_ar_payload_burst     (io_axi_ar_payload_burst[1:0]                  ), //i
    .io_axi_ar_payload_lock      (io_axi_ar_payload_lock                        ), //i
    .io_axi_ar_payload_cache     (io_axi_ar_payload_cache[3:0]                  ), //i
    .io_axi_ar_payload_qos       (io_axi_ar_payload_qos[3:0]                    ), //i
    .io_axi_ar_payload_prot      (io_axi_ar_payload_prot[2:0]                   ), //i
    .io_axi_r_valid              (audio_data_mover_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_axi_r_ready                                ), //i
    .io_axi_r_payload_data       (audio_data_mover_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_id         (audio_data_mover_io_axi_r_payload_id[3:0]     ), //o
    .io_axi_r_payload_resp       (audio_data_mover_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last       (audio_data_mover_io_axi_r_payload_last        ), //o
    .io_input_buffer_half        (audio_data_mover_io_input_buffer_half         ), //o
    .io_input_buffer_full        (audio_data_mover_io_input_buffer_full         ), //o
    .io_output_buffer_half       (audio_data_mover_io_output_buffer_half        ), //o
    .io_output_buffer_empty      (audio_data_mover_io_output_buffer_empty       ), //o
    .clk                         (clk                                           ), //i
    .reset                       (reset                                         )  //i
  );
  I2S i2s_1_ ( 
    .io_s_data_out_valid      (i2s_1__io_s_data_out_valid                    ), //o
    .io_s_data_out_ready      (audio_data_mover_io_s_data_in_ready           ), //i
    .io_s_data_out_payload    (i2s_1__io_s_data_out_payload[31:0]            ), //o
    .io_s_data_in_valid       (audio_data_mover_io_s_data_out_valid          ), //i
    .io_s_data_in_ready       (i2s_1__io_s_data_in_ready                     ), //o
    .io_s_data_in_payload     (audio_data_mover_io_s_data_out_payload[31:0]  ), //i
    .io_bclk                  (i2s_1__io_bclk                                ), //o
    .io_mclk                  (i2s_1__io_mclk                                ), //o
    .io_pblrc                 (i2s_1__io_pblrc                               ), //o
    .io_pbdat                 (i2s_1__io_pbdat                               ), //o
    .io_reclrc                (i2s_1__io_reclrc                              ), //o
    .io_recdat                (io_recdat                                     ), //i
    .clk                      (clk                                           ), //i
    .reset                    (reset                                         )  //i
  );
  assign io_axi_aw_ready = audio_data_mover_io_axi_aw_ready;
  assign io_axi_w_ready = audio_data_mover_io_axi_w_ready;
  assign io_axi_b_valid = audio_data_mover_io_axi_b_valid;
  assign io_axi_b_payload_id = audio_data_mover_io_axi_b_payload_id;
  assign io_axi_b_payload_resp = audio_data_mover_io_axi_b_payload_resp;
  assign io_axi_ar_ready = audio_data_mover_io_axi_ar_ready;
  assign io_axi_r_valid = audio_data_mover_io_axi_r_valid;
  assign io_axi_r_payload_data = audio_data_mover_io_axi_r_payload_data;
  assign io_axi_r_payload_id = audio_data_mover_io_axi_r_payload_id;
  assign io_axi_r_payload_resp = audio_data_mover_io_axi_r_payload_resp;
  assign io_axi_r_payload_last = audio_data_mover_io_axi_r_payload_last;
  assign io_input_buffer_half = audio_data_mover_io_input_buffer_half;
  assign io_input_buffer_full = audio_data_mover_io_input_buffer_full;
  assign io_output_buffer_half = audio_data_mover_io_output_buffer_half;
  assign io_output_buffer_empty = audio_data_mover_io_output_buffer_empty;
  assign io_bclk = i2s_1__io_bclk;
  assign io_mclk = i2s_1__io_mclk;
  assign io_pblrc = i2s_1__io_pblrc;
  assign io_pbdat = i2s_1__io_pbdat;
  assign io_reclrc = i2s_1__io_reclrc;

endmodule
