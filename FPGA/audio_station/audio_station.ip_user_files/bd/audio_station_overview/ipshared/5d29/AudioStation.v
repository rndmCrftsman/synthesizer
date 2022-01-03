// Generator : SpinalHDL v1.6.0    git head : 73c8d8e2b86b45646e9d0b2e729291f2b65e6be3
// Component : AudioStation
// Git hash  : 16cca3e7ca68666d7965f4b737ddd3d2d443a608



module AudioStation (
  input               io_enable,
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [31:0]   io_axi_aw_payload_addr,
  input      [11:0]   io_axi_aw_payload_id,
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
  output     [11:0]   io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [11:0]   io_axi_ar_payload_id,
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
  output     [11:0]   io_axi_r_payload_id,
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
  input               resetn
);
  wire                audio_data_mover_io_s_data_out_valid;
  wire       [31:0]   audio_data_mover_io_s_data_out_payload;
  wire                audio_data_mover_io_s_data_in_ready;
  wire                audio_data_mover_io_axi_ar_ready;
  wire                audio_data_mover_io_axi_aw_ready;
  wire                audio_data_mover_io_axi_w_ready;
  wire                audio_data_mover_io_axi_r_valid;
  wire       [31:0]   audio_data_mover_io_axi_r_payload_data;
  wire       [11:0]   audio_data_mover_io_axi_r_payload_id;
  wire       [1:0]    audio_data_mover_io_axi_r_payload_resp;
  wire                audio_data_mover_io_axi_r_payload_last;
  wire                audio_data_mover_io_axi_b_valid;
  wire       [11:0]   audio_data_mover_io_axi_b_payload_id;
  wire       [1:0]    audio_data_mover_io_axi_b_payload_resp;
  wire                audio_data_mover_io_input_buffer_half;
  wire                audio_data_mover_io_input_buffer_full;
  wire                audio_data_mover_io_output_buffer_half;
  wire                audio_data_mover_io_output_buffer_empty;
  wire                i2s_1_io_s_data_out_valid;
  wire       [31:0]   i2s_1_io_s_data_out_payload;
  wire                i2s_1_io_s_data_in_ready;
  wire                i2s_1_io_bclk;
  wire                i2s_1_io_mclk;
  wire                i2s_1_io_pblrc;
  wire                i2s_1_io_pbdat;
  wire                i2s_1_io_reclrc;

  AudioDataMover audio_data_mover (
    .io_enable                   (io_enable                                ), //i
    .io_s_data_out_valid         (audio_data_mover_io_s_data_out_valid     ), //o
    .io_s_data_out_ready         (i2s_1_io_s_data_in_ready                 ), //i
    .io_s_data_out_payload       (audio_data_mover_io_s_data_out_payload   ), //o
    .io_s_data_in_valid          (i2s_1_io_s_data_out_valid                ), //i
    .io_s_data_in_ready          (audio_data_mover_io_s_data_in_ready      ), //o
    .io_s_data_in_payload        (i2s_1_io_s_data_out_payload              ), //i
    .io_axi_aw_valid             (io_axi_aw_valid                          ), //i
    .io_axi_aw_ready             (audio_data_mover_io_axi_aw_ready         ), //o
    .io_axi_aw_payload_addr      (io_axi_aw_payload_addr                   ), //i
    .io_axi_aw_payload_id        (io_axi_aw_payload_id                     ), //i
    .io_axi_aw_payload_region    (io_axi_aw_payload_region                 ), //i
    .io_axi_aw_payload_len       (io_axi_aw_payload_len                    ), //i
    .io_axi_aw_payload_size      (io_axi_aw_payload_size                   ), //i
    .io_axi_aw_payload_burst     (io_axi_aw_payload_burst                  ), //i
    .io_axi_aw_payload_lock      (io_axi_aw_payload_lock                   ), //i
    .io_axi_aw_payload_cache     (io_axi_aw_payload_cache                  ), //i
    .io_axi_aw_payload_qos       (io_axi_aw_payload_qos                    ), //i
    .io_axi_aw_payload_prot      (io_axi_aw_payload_prot                   ), //i
    .io_axi_w_valid              (io_axi_w_valid                           ), //i
    .io_axi_w_ready              (audio_data_mover_io_axi_w_ready          ), //o
    .io_axi_w_payload_data       (io_axi_w_payload_data                    ), //i
    .io_axi_w_payload_strb       (io_axi_w_payload_strb                    ), //i
    .io_axi_w_payload_last       (io_axi_w_payload_last                    ), //i
    .io_axi_b_valid              (audio_data_mover_io_axi_b_valid          ), //o
    .io_axi_b_ready              (io_axi_b_ready                           ), //i
    .io_axi_b_payload_id         (audio_data_mover_io_axi_b_payload_id     ), //o
    .io_axi_b_payload_resp       (audio_data_mover_io_axi_b_payload_resp   ), //o
    .io_axi_ar_valid             (io_axi_ar_valid                          ), //i
    .io_axi_ar_ready             (audio_data_mover_io_axi_ar_ready         ), //o
    .io_axi_ar_payload_addr      (io_axi_ar_payload_addr                   ), //i
    .io_axi_ar_payload_id        (io_axi_ar_payload_id                     ), //i
    .io_axi_ar_payload_region    (io_axi_ar_payload_region                 ), //i
    .io_axi_ar_payload_len       (io_axi_ar_payload_len                    ), //i
    .io_axi_ar_payload_size      (io_axi_ar_payload_size                   ), //i
    .io_axi_ar_payload_burst     (io_axi_ar_payload_burst                  ), //i
    .io_axi_ar_payload_lock      (io_axi_ar_payload_lock                   ), //i
    .io_axi_ar_payload_cache     (io_axi_ar_payload_cache                  ), //i
    .io_axi_ar_payload_qos       (io_axi_ar_payload_qos                    ), //i
    .io_axi_ar_payload_prot      (io_axi_ar_payload_prot                   ), //i
    .io_axi_r_valid              (audio_data_mover_io_axi_r_valid          ), //o
    .io_axi_r_ready              (io_axi_r_ready                           ), //i
    .io_axi_r_payload_data       (audio_data_mover_io_axi_r_payload_data   ), //o
    .io_axi_r_payload_id         (audio_data_mover_io_axi_r_payload_id     ), //o
    .io_axi_r_payload_resp       (audio_data_mover_io_axi_r_payload_resp   ), //o
    .io_axi_r_payload_last       (audio_data_mover_io_axi_r_payload_last   ), //o
    .io_input_buffer_half        (audio_data_mover_io_input_buffer_half    ), //o
    .io_input_buffer_full        (audio_data_mover_io_input_buffer_full    ), //o
    .io_output_buffer_half       (audio_data_mover_io_output_buffer_half   ), //o
    .io_output_buffer_empty      (audio_data_mover_io_output_buffer_empty  ), //o
    .clk                         (clk                                      ), //i
    .resetn                      (resetn                                   )  //i
  );
  I2S i2s_1 (
    .io_enable                (io_enable                               ), //i
    .io_s_data_out_valid      (i2s_1_io_s_data_out_valid               ), //o
    .io_s_data_out_ready      (audio_data_mover_io_s_data_in_ready     ), //i
    .io_s_data_out_payload    (i2s_1_io_s_data_out_payload             ), //o
    .io_s_data_in_valid       (audio_data_mover_io_s_data_out_valid    ), //i
    .io_s_data_in_ready       (i2s_1_io_s_data_in_ready                ), //o
    .io_s_data_in_payload     (audio_data_mover_io_s_data_out_payload  ), //i
    .io_bclk                  (i2s_1_io_bclk                           ), //o
    .io_mclk                  (i2s_1_io_mclk                           ), //o
    .io_pblrc                 (i2s_1_io_pblrc                          ), //o
    .io_pbdat                 (i2s_1_io_pbdat                          ), //o
    .io_reclrc                (i2s_1_io_reclrc                         ), //o
    .io_recdat                (io_recdat                               ), //i
    .clk                      (clk                                     ), //i
    .resetn                   (resetn                                  )  //i
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
  assign io_bclk = i2s_1_io_bclk;
  assign io_mclk = i2s_1_io_mclk;
  assign io_pblrc = i2s_1_io_pblrc;
  assign io_pbdat = i2s_1_io_pbdat;
  assign io_reclrc = i2s_1_io_reclrc;

endmodule

module I2S (
  input               io_enable,
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
  input               resetn
);
  reg        [31:0]   r_buffer_out;
  reg                 r_buffer_out_full;
  reg        [31:0]   r_buffer_in;
  reg                 r_buffer_in_full;
  reg        [2:0]    r_cnt_mclk_en;
  reg        [4:0]    r_cnt_bclk_en;
  reg        [10:0]   r_cnt_lrclk_en;
  reg        [11:0]   r_cnt_frame_en;
  reg                 r_mclk_en;
  reg                 r_bclk_en;
  reg                 r_lrclk_en;
  reg                 r_frame_en;
  reg        [63:0]   r_data;
  reg                 r_out;
  reg                 r_mclk;
  reg                 r_enable;
  reg                 r_bclk;
  reg                 r_lrclk;
  wire                when_I2S_l113;
  wire                when_I2S_l125;
  wire                when_I2S_l126;
  wire                when_I2S_l138;
  wire                when_I2S_l146;
  wire                when_I2S_l154;
  wire                when_I2S_l171;
  wire                when_I2S_l177;

  assign io_s_data_out_valid = (r_buffer_out_full && io_enable);
  assign io_s_data_out_payload = r_buffer_out;
  assign io_s_data_in_ready = ((! r_buffer_in_full) && io_enable);
  assign io_mclk = r_mclk;
  assign io_bclk = r_bclk;
  assign io_pblrc = r_lrclk;
  assign io_reclrc = r_lrclk;
  assign io_pbdat = r_out;
  assign when_I2S_l113 = (r_cnt_mclk_en == 3'b100);
  assign when_I2S_l125 = (r_cnt_mclk_en == 3'b011);
  assign when_I2S_l126 = (! r_mclk);
  assign when_I2S_l138 = (r_cnt_bclk_en == 5'h09);
  assign when_I2S_l146 = (r_cnt_lrclk_en == 11'h27f);
  assign when_I2S_l154 = (r_cnt_frame_en == 12'h4ff);
  assign when_I2S_l171 = (io_s_data_in_valid && io_s_data_in_ready);
  assign when_I2S_l177 = (io_s_data_out_valid && io_s_data_out_ready);
  always @(posedge clk) begin
    if(!resetn) begin
      r_buffer_out <= 32'h0;
      r_buffer_out_full <= 1'b0;
      r_buffer_in <= 32'h0;
      r_buffer_in_full <= 1'b0;
      r_cnt_mclk_en <= 3'b000;
      r_cnt_bclk_en <= 5'h0;
      r_cnt_lrclk_en <= 11'h0;
      r_cnt_frame_en <= 12'h0;
      r_mclk_en <= 1'b0;
      r_bclk_en <= 1'b0;
      r_lrclk_en <= 1'b0;
      r_frame_en <= 1'b0;
      r_data <= 64'h0;
      r_out <= 1'b0;
      r_mclk <= 1'b1;
      r_enable <= 1'b0;
      r_bclk <= 1'b0;
      r_lrclk <= 1'b0;
    end else begin
      if(when_I2S_l113) begin
        r_cnt_mclk_en <= 3'b000;
        r_mclk_en <= 1'b1;
      end else begin
        r_cnt_mclk_en <= (r_cnt_mclk_en + 3'b001);
        r_mclk_en <= 1'b0;
      end
      if(r_mclk_en) begin
        r_mclk <= (! r_mclk);
      end
      if(when_I2S_l125) begin
        if(when_I2S_l126) begin
          if(io_enable) begin
            r_enable <= 1'b1;
          end else begin
            r_enable <= 1'b0;
          end
        end
      end else begin
        r_enable <= r_enable;
      end
      if(r_enable) begin
        if(when_I2S_l138) begin
          r_cnt_bclk_en <= 5'h0;
          r_bclk_en <= 1'b1;
        end else begin
          r_cnt_bclk_en <= (r_cnt_bclk_en + 5'h01);
          r_bclk_en <= 1'b0;
        end
        if(when_I2S_l146) begin
          r_cnt_lrclk_en <= 11'h0;
          r_lrclk_en <= 1'b1;
        end else begin
          r_cnt_lrclk_en <= (r_cnt_lrclk_en + 11'h001);
          r_lrclk_en <= 1'b0;
        end
        if(when_I2S_l154) begin
          r_cnt_frame_en <= 12'h0;
          r_frame_en <= 1'b1;
        end else begin
          r_cnt_frame_en <= (r_cnt_frame_en + 12'h001);
          r_frame_en <= 1'b0;
        end
        if(r_bclk_en) begin
          r_bclk <= (! r_bclk);
        end
        if(r_lrclk_en) begin
          r_lrclk <= (! r_lrclk);
        end
        if(when_I2S_l171) begin
          r_buffer_in <= io_s_data_in_payload;
          r_buffer_in_full <= 1'b1;
        end
        if(when_I2S_l177) begin
          r_buffer_out_full <= 1'b0;
        end
        if(r_frame_en) begin
          r_buffer_out <= r_data[63 : 32];
          r_buffer_out_full <= 1'b1;
          r_data <= {r_buffer_in,r_buffer_in};
          r_buffer_in_full <= 1'b0;
        end else begin
          if(r_bclk_en) begin
            if(r_bclk) begin
              r_out <= r_data[63];
            end else begin
              r_data <= {r_data[62 : 0],io_recdat};
            end
          end
        end
      end else begin
        r_cnt_bclk_en <= 5'h09;
        r_cnt_lrclk_en <= 11'h27f;
        r_cnt_frame_en <= 12'h4ff;
        r_bclk_en <= 1'b0;
        r_lrclk_en <= 1'b0;
        r_frame_en <= 1'b0;
        r_bclk <= 1'b1;
        r_lrclk <= 1'b0;
      end
    end
  end


endmodule

module AudioDataMover (
  input               io_enable,
  output              io_s_data_out_valid,
  input               io_s_data_out_ready,
  output     [31:0]   io_s_data_out_payload,
  input               io_s_data_in_valid,
  output              io_s_data_in_ready,
  input      [31:0]   io_s_data_in_payload,
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [31:0]   io_axi_aw_payload_addr,
  input      [11:0]   io_axi_aw_payload_id,
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
  output     [11:0]   io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [11:0]   io_axi_ar_payload_id,
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
  output     [11:0]   io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output              io_input_buffer_half,
  output              io_input_buffer_full,
  output              io_output_buffer_half,
  output              io_output_buffer_empty,
  input               clk,
  input               resetn
);
  wire                buffer_out_io_w_en;
  wire       [31:0]   buffer_out_io_w_data;
  wire                buffer_out_io_r_en;
  wire                buffer_in_io_w_en;
  wire                buffer_in_io_r_en;
  wire       [31:0]   buffer_out_io_r_data;
  wire                buffer_out_io_empty;
  wire                buffer_out_io_half;
  wire                buffer_out_io_full;
  wire       [31:0]   buffer_in_io_r_data;
  wire                buffer_in_io_empty;
  wire                buffer_in_io_half;
  wire                buffer_in_io_full;
  wire       [7:0]    _zz_axi_w_cnt;
  wire       [7:0]    _zz_axi_r_cnt;
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
  reg        [11:0]   r_axi_bid;
  reg                 r_axi_arready;
  reg                 r_axi_rvalid;
  reg        [1:0]    r_axi_rresp;
  reg                 r_axi_rlast;
  reg        [11:0]   r_axi_rid;
  reg        [4:0]    axi_r_cnt;
  reg        [4:0]    axi_w_cnt;
  wire                axi_aw_req_valid;
  wire                axi_ar_req_valid;
  reg                 r_axi_aw_req_valid;
  reg                 r_axi_ar_req_valid;
  wire                when_AudioDataMover_l162;
  wire                when_AudioDataMover_l176;
  wire                when_AudioDataMover_l177;
  wire                when_AudioDataMover_l185;
  wire                when_AudioDataMover_l191;
  wire                when_AudioDataMover_l205;
  wire                when_AudioDataMover_l206;
  wire                when_AudioDataMover_l208;

  assign _zz_axi_w_cnt = (AXI_BURST_LEN + 8'h01);
  assign _zz_axi_r_cnt = (AXI_BURST_LEN + 8'h01);
  FIFO buffer_out (
    .io_w_en      (buffer_out_io_w_en    ), //i
    .io_w_data    (buffer_out_io_w_data  ), //i
    .io_r_en      (buffer_out_io_r_en    ), //i
    .io_r_data    (buffer_out_io_r_data  ), //o
    .io_empty     (buffer_out_io_empty   ), //o
    .io_half      (buffer_out_io_half    ), //o
    .io_full      (buffer_out_io_full    ), //o
    .clk          (clk                   ), //i
    .resetn       (resetn                )  //i
  );
  FIFO buffer_in (
    .io_w_en      (buffer_in_io_w_en     ), //i
    .io_w_data    (io_s_data_in_payload  ), //i
    .io_r_en      (buffer_in_io_r_en     ), //i
    .io_r_data    (buffer_in_io_r_data   ), //o
    .io_empty     (buffer_in_io_empty    ), //o
    .io_half      (buffer_in_io_half     ), //o
    .io_full      (buffer_in_io_full     ), //o
    .clk          (clk                   ), //i
    .resetn       (resetn                )  //i
  );
  assign AXI_ADDRESS = 32'h43c00000;
  assign AXI_RESP_OK = 2'b00;
  assign AXI_RESP_SLVERR = 2'b10;
  assign AXI_BURST_TYPE_FIXED = 2'b00;
  assign AXI_BURST_SIZE_32bit = 3'b010;
  assign AXI_BURST_LEN = 8'h0f;
  assign io_s_data_in_ready = ((! buffer_in_io_full) && io_enable);
  assign buffer_in_io_w_en = (io_s_data_in_ready && io_s_data_in_valid);
  assign io_s_data_out_valid = ((! buffer_out_io_empty) && io_enable);
  assign buffer_out_io_r_en = (io_s_data_out_ready && io_s_data_out_valid);
  assign io_s_data_out_payload = buffer_out_io_r_data;
  assign io_input_buffer_half = buffer_in_io_half;
  assign io_input_buffer_full = buffer_in_io_full;
  assign io_output_buffer_half = (! buffer_out_io_half);
  assign io_output_buffer_empty = buffer_out_io_empty;
  assign io_axi_aw_ready = r_axi_awready;
  assign axi_aw_req_valid = ((((io_axi_aw_payload_addr == AXI_ADDRESS) && (io_axi_aw_payload_len == AXI_BURST_LEN)) && (io_axi_aw_payload_size == AXI_BURST_SIZE_32bit)) && (io_axi_aw_payload_burst == AXI_BURST_TYPE_FIXED));
  assign io_axi_w_ready = r_axi_wready;
  assign buffer_out_io_w_data = io_axi_w_payload_data;
  assign buffer_out_io_w_en = (((r_axi_aw_req_valid && r_axi_wready) && io_axi_w_valid) && (5'h0 < axi_w_cnt));
  assign io_axi_b_valid = r_axi_bvalid;
  assign io_axi_b_payload_resp = r_axi_bresp;
  assign io_axi_b_payload_id = r_axi_bid;
  assign io_axi_ar_ready = r_axi_arready;
  assign axi_ar_req_valid = ((((io_axi_ar_payload_addr == AXI_ADDRESS) && (io_axi_ar_payload_len == AXI_BURST_LEN)) && (io_axi_ar_payload_size == AXI_BURST_SIZE_32bit)) && (io_axi_ar_payload_burst == AXI_BURST_TYPE_FIXED));
  assign io_axi_r_valid = r_axi_rvalid;
  assign io_axi_r_payload_resp = r_axi_rresp;
  assign io_axi_r_payload_last = r_axi_rlast;
  assign io_axi_r_payload_id = r_axi_rid;
  assign buffer_in_io_r_en = (((r_axi_ar_req_valid && r_axi_rvalid) && io_axi_r_ready) && (5'h0 < axi_r_cnt));
  assign io_axi_r_payload_data = buffer_in_io_r_data;
  assign when_AudioDataMover_l162 = (r_axi_awready && io_axi_aw_valid);
  assign when_AudioDataMover_l176 = (r_axi_wready && io_axi_w_valid);
  assign when_AudioDataMover_l177 = (axi_w_cnt == 5'h01);
  assign when_AudioDataMover_l185 = (r_axi_bvalid && io_axi_b_ready);
  assign when_AudioDataMover_l191 = (r_axi_arready && io_axi_ar_valid);
  assign when_AudioDataMover_l205 = (r_axi_rvalid && io_axi_r_ready);
  assign when_AudioDataMover_l206 = (axi_r_cnt == 5'h02);
  assign when_AudioDataMover_l208 = (axi_r_cnt == 5'h01);
  always @(posedge clk) begin
    if(!resetn) begin
      r_axi_awready <= 1'b1;
      r_axi_wready <= 1'b0;
      r_axi_bvalid <= 1'b0;
      r_axi_bresp <= 2'b00;
      r_axi_bid <= 12'h0;
      r_axi_arready <= 1'b1;
      r_axi_rvalid <= 1'b0;
      r_axi_rresp <= 2'b00;
      r_axi_rlast <= 1'b0;
      r_axi_rid <= 12'h0;
      axi_r_cnt <= 5'h0;
      axi_w_cnt <= 5'h0;
      r_axi_aw_req_valid <= 1'b0;
      r_axi_ar_req_valid <= 1'b0;
    end else begin
      if(when_AudioDataMover_l162) begin
        r_axi_bid <= io_axi_aw_payload_id;
        axi_w_cnt <= _zz_axi_w_cnt[4:0];
        r_axi_aw_req_valid <= axi_aw_req_valid;
        r_axi_wready <= 1'b1;
        r_axi_awready <= 1'b0;
        if(axi_aw_req_valid) begin
          r_axi_bresp <= AXI_RESP_OK;
        end else begin
          r_axi_bresp <= AXI_RESP_SLVERR;
        end
      end
      if(when_AudioDataMover_l176) begin
        if(when_AudioDataMover_l177) begin
          r_axi_wready <= 1'b0;
          r_axi_bvalid <= 1'b1;
        end
        axi_w_cnt <= (axi_w_cnt - 5'h01);
      end
      if(when_AudioDataMover_l185) begin
        r_axi_bvalid <= 1'b0;
        r_axi_awready <= 1'b1;
      end
      if(when_AudioDataMover_l191) begin
        r_axi_rid <= io_axi_ar_payload_id;
        axi_r_cnt <= _zz_axi_r_cnt[4:0];
        r_axi_ar_req_valid <= axi_ar_req_valid;
        r_axi_rvalid <= 1'b1;
        r_axi_arready <= 1'b0;
        if(axi_ar_req_valid) begin
          r_axi_rresp <= AXI_RESP_OK;
        end else begin
          r_axi_rresp <= AXI_RESP_SLVERR;
        end
      end
      if(when_AudioDataMover_l205) begin
        if(when_AudioDataMover_l206) begin
          r_axi_rlast <= 1'b1;
        end else begin
          if(when_AudioDataMover_l208) begin
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

//FIFO replaced by FIFO

module FIFO (
  input               io_w_en,
  input      [31:0]   io_w_data,
  input               io_r_en,
  output reg [31:0]   io_r_data,
  output              io_empty,
  output              io_half,
  output              io_full,
  input               clk,
  input               resetn
);
  wire       [31:0]   _zz_mem_port1;
  wire       [4:0]    _zz_io_full;
  wire       [31:0]   _zz_mem_port;
  reg                 _zz_1;
  reg        [4:0]    w_addr;
  reg        [4:0]    r_addr;
  wire       [4:0]    addr_dist;
  wire                when_FIFO_l58;
  wire                when_FIFO_l65;
  (* ram_style = "distributed" *) reg [31:0] mem [0:31];

  assign _zz_io_full = (w_addr + 5'h01);
  assign _zz_mem_port = io_w_data;
  always @(posedge clk) begin
    if(_zz_1) begin
      mem[w_addr] <= _zz_mem_port;
    end
  end

  assign _zz_mem_port1 = mem[r_addr];
  always @(*) begin
    _zz_1 = 1'b0;
    if(when_FIFO_l58) begin
      _zz_1 = 1'b1;
    end
  end

  assign io_empty = ((r_addr == w_addr) ? 1'b1 : 1'b0);
  assign io_full = ((r_addr == _zz_io_full) ? 1'b1 : 1'b0);
  assign addr_dist = (w_addr - r_addr);
  assign io_half = (addr_dist[4] ? 1'b1 : 1'b0);
  assign when_FIFO_l58 = (io_w_en && (! io_full));
  always @(*) begin
    io_r_data = 32'h0;
    if(when_FIFO_l65) begin
      io_r_data = _zz_mem_port1;
    end
  end

  assign when_FIFO_l65 = (io_r_en && (! io_empty));
  always @(posedge clk) begin
    if(!resetn) begin
      w_addr <= 5'h0;
      r_addr <= 5'h0;
    end else begin
      if(when_FIFO_l58) begin
        w_addr <= (w_addr + 5'h01);
      end
      if(when_FIFO_l65) begin
        r_addr <= (r_addr + 5'h01);
      end
    end
  end


endmodule
