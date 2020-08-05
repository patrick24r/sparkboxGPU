


INPUT rst;
INPUT clk_n;
INPUT ctrl_write_en;
INPUT pipe_read_en;
INPUT pipeline_clk;
INPUT ctrl_read_en;
INPUT pipe_layer[0];
INPUT pipe_layer[1];
INPUT pipe_layer[2];
INPUT pipe_layer[3];
INPUT ctrl_layerId[7];
INPUT ctrl_layerId[6];
INPUT ctrl_layerId[5];
INPUT ctrl_layerId[4];
INPUT ctrl_layerId[1];
INPUT ctrl_layerId[0];
INPUT ctrl_layerId[2];
INPUT ctrl_layerId[3];
INPUT pipe_addr_bytes[1];
INPUT pipe_layerId[0];
INPUT pipe_layerId[1];
INPUT pipe_layerId[2];
INPUT pipe_addr_bytes[2];
INPUT pipe_addr_bytes[3];
INPUT pipe_addr_bytes[4];
INPUT pipe_addr_bytes[5];
INPUT pipe_addr_bytes[6];
INPUT pipe_addr_bytes[7];
INPUT pipe_addr_bytes[8];
INPUT pipe_addr_bytes[9];
INPUT pipe_addr_bytes[10];
INPUT pipe_addr_bytes[11];
INPUT pipe_addr_bytes[12];
INPUT pipe_addr_bytes[13];
INPUT pipe_addr_bytes[14];
INPUT pipe_addr_bytes[15];
INPUT pipe_addr_bytes[16];
INPUT pipe_addr_bytes[17];
INPUT pipe_addr_bytes[18];
INPUT pipe_addr_bytes[19];
INPUT pipe_addr_bytes[20];
INPUT pipe_addr_bytes[21];
INPUT pipe_addr_bytes[22];
INPUT pipe_layer[4];
INPUT pipe_addr_bytes[23];
INPUT pipe_addr_bytes[24];
INOUT sdram_dq[15];
INOUT sdram_dq[14];
INOUT sdram_dq[13];
INOUT sdram_dq[12];
INOUT sdram_dq[11];
INOUT sdram_dq[10];
INOUT sdram_dq[9];
INOUT sdram_dq[8];
INOUT sdram_dq[7];
INOUT sdram_dq[6];
INOUT sdram_dq[5];
INOUT sdram_dq[4];
INOUT sdram_dq[3];
INOUT sdram_dq[2];
INOUT sdram_dq[1];
INOUT sdram_dq[0];
INPUT ctrl_write_data[0];
INPUT ctrl_write_data[1];
INPUT ctrl_write_data[2];
INPUT ctrl_write_data[3];
INPUT ctrl_write_data[4];
INPUT ctrl_write_data[5];
INPUT ctrl_write_data[6];
INPUT ctrl_write_data[7];
INPUT ctrl_write_data[8];
INPUT ctrl_write_data[9];
INPUT ctrl_write_data[10];
INPUT ctrl_write_data[11];
INPUT ctrl_write_data[12];
INPUT ctrl_write_data[13];
INPUT ctrl_write_data[14];
INPUT ctrl_write_data[15];
INPUT pipe_layer[5];
INPUT pipe_layerId[3];
INPUT pipe_layerId[4];
INPUT pipe_layerId[5];
INPUT pipe_layerId[6];
INPUT pipe_layerId[7];
INPUT pipe_addr_bytes[0];
OUTPUT rdy;
OUTPUT read_data[0];
OUTPUT read_data[1];
OUTPUT read_data[2];
OUTPUT read_data[3];
OUTPUT read_data[4];
OUTPUT read_data[5];
OUTPUT read_data[6];
OUTPUT read_data[7];
OUTPUT read_data[8];
OUTPUT read_data[9];
OUTPUT read_data[10];
OUTPUT read_data[11];
OUTPUT read_data[12];
OUTPUT read_data[13];
OUTPUT read_data[14];
OUTPUT read_data[15];
OUTPUT sdram_addr[0];
OUTPUT sdram_addr[1];
OUTPUT sdram_addr[2];
OUTPUT sdram_addr[3];
OUTPUT sdram_addr[4];
OUTPUT sdram_addr[5];
OUTPUT sdram_addr[6];
OUTPUT sdram_addr[7];
OUTPUT sdram_addr[8];
OUTPUT sdram_addr[9];
OUTPUT sdram_addr[10];
OUTPUT sdram_addr[11];
OUTPUT sdram_addr[12];
OUTPUT sdram_ba[0];
OUTPUT sdram_ba[1];
OUTPUT sdram_dqm[0];
OUTPUT sdram_dqm[1];
OUTPUT sdram_ras_n;
OUTPUT sdram_cas_n;
OUTPUT sdram_cke;
OUTPUT sdram_clk;
OUTPUT sdram_we_n;
OUTPUT sdram_cs_n;

/*Arc definitions start here*/
pos_ctrl_layerId[0]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[0] clk_n ;
pos_ctrl_layerId[1]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[1] clk_n ;
pos_ctrl_layerId[2]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[2] clk_n ;
pos_ctrl_layerId[3]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[3] clk_n ;
pos_ctrl_layerId[4]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[4] clk_n ;
pos_ctrl_layerId[5]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[5] clk_n ;
pos_ctrl_layerId[6]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[6] clk_n ;
pos_ctrl_layerId[7]__clk_n__setup:		SETUP (POSEDGE) ctrl_layerId[7] clk_n ;
pos_ctrl_read_en__clk_n__setup:		SETUP (POSEDGE) ctrl_read_en clk_n ;
pos_ctrl_read_en__clk_n__setup:		SETUP (POSEDGE) ctrl_read_en clk_n ;
pos_ctrl_write_data[0]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[0] clk_n ;
pos_ctrl_write_data[1]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[1] clk_n ;
pos_ctrl_write_data[2]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[2] clk_n ;
pos_ctrl_write_data[3]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[3] clk_n ;
pos_ctrl_write_data[4]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[4] clk_n ;
pos_ctrl_write_data[5]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[5] clk_n ;
pos_ctrl_write_data[6]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[6] clk_n ;
pos_ctrl_write_data[7]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[7] clk_n ;
pos_ctrl_write_data[8]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[8] clk_n ;
pos_ctrl_write_data[9]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[9] clk_n ;
pos_ctrl_write_data[10]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[10] clk_n ;
pos_ctrl_write_data[11]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[11] clk_n ;
pos_ctrl_write_data[12]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[12] clk_n ;
pos_ctrl_write_data[13]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[13] clk_n ;
pos_ctrl_write_data[14]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[14] clk_n ;
pos_ctrl_write_data[15]__clk_n__setup:		SETUP (POSEDGE) ctrl_write_data[15] clk_n ;
pos_ctrl_write_en__clk_n__setup:		SETUP (POSEDGE) ctrl_write_en clk_n ;
pos_ctrl_write_en__clk_n__setup:		SETUP (POSEDGE) ctrl_write_en clk_n ;
pos_pipe_addr_bytes[1]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[1] clk_n ;
pos_pipe_addr_bytes[1]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[1] clk_n ;
pos_pipe_addr_bytes[2]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[2] clk_n ;
pos_pipe_addr_bytes[2]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[2] clk_n ;
pos_pipe_addr_bytes[3]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[3] clk_n ;
pos_pipe_addr_bytes[3]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[3] clk_n ;
pos_pipe_addr_bytes[4]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[4] clk_n ;
pos_pipe_addr_bytes[4]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[4] clk_n ;
pos_pipe_addr_bytes[5]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[5] clk_n ;
pos_pipe_addr_bytes[5]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[5] clk_n ;
pos_pipe_addr_bytes[6]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[6] clk_n ;
pos_pipe_addr_bytes[6]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[6] clk_n ;
pos_pipe_addr_bytes[7]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[7] clk_n ;
pos_pipe_addr_bytes[7]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[7] clk_n ;
pos_pipe_addr_bytes[8]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[8] clk_n ;
pos_pipe_addr_bytes[8]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[8] clk_n ;
pos_pipe_addr_bytes[9]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[9] clk_n ;
pos_pipe_addr_bytes[9]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[9] clk_n ;
pos_pipe_addr_bytes[10]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[10] clk_n ;
pos_pipe_addr_bytes[10]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[10] clk_n ;
pos_pipe_addr_bytes[11]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[11] clk_n ;
pos_pipe_addr_bytes[11]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[11] clk_n ;
pos_pipe_addr_bytes[12]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[12] clk_n ;
pos_pipe_addr_bytes[12]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[12] clk_n ;
pos_pipe_addr_bytes[13]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[13] clk_n ;
pos_pipe_addr_bytes[13]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[13] clk_n ;
pos_pipe_addr_bytes[14]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[14] clk_n ;
pos_pipe_addr_bytes[14]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[14] clk_n ;
pos_pipe_addr_bytes[15]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[15] clk_n ;
pos_pipe_addr_bytes[15]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[15] clk_n ;
pos_pipe_addr_bytes[16]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[16] clk_n ;
pos_pipe_addr_bytes[16]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[16] clk_n ;
pos_pipe_addr_bytes[17]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[17] clk_n ;
pos_pipe_addr_bytes[17]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[17] clk_n ;
pos_pipe_addr_bytes[18]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[18] clk_n ;
pos_pipe_addr_bytes[18]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[18] clk_n ;
pos_pipe_addr_bytes[19]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[19] clk_n ;
pos_pipe_addr_bytes[19]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[19] clk_n ;
pos_pipe_addr_bytes[20]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[20] clk_n ;
pos_pipe_addr_bytes[20]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[20] clk_n ;
pos_pipe_addr_bytes[21]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[21] clk_n ;
pos_pipe_addr_bytes[21]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[21] clk_n ;
pos_pipe_addr_bytes[22]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[22] clk_n ;
pos_pipe_addr_bytes[22]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[22] clk_n ;
pos_pipe_addr_bytes[23]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[23] clk_n ;
pos_pipe_addr_bytes[23]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[23] clk_n ;
pos_pipe_addr_bytes[24]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[24] clk_n ;
pos_pipe_addr_bytes[24]__clk_n__setup:		SETUP (POSEDGE) pipe_addr_bytes[24] clk_n ;
pos_pipe_layer[0]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[0] clk_n ;
pos_pipe_layer[0]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[0] clk_n ;
pos_pipe_layer[1]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[1] clk_n ;
pos_pipe_layer[1]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[1] clk_n ;
pos_pipe_layer[2]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[2] clk_n ;
pos_pipe_layer[2]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[2] clk_n ;
pos_pipe_layer[3]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[3] clk_n ;
pos_pipe_layer[3]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[3] clk_n ;
pos_pipe_layer[4]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[4] clk_n ;
pos_pipe_layer[4]__clk_n__setup:		SETUP (POSEDGE) pipe_layer[4] clk_n ;
pos_pipe_layerId[0]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[0] clk_n ;
pos_pipe_layerId[0]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[0] clk_n ;
pos_pipe_layerId[1]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[1] clk_n ;
pos_pipe_layerId[1]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[1] clk_n ;
pos_pipe_layerId[2]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[2] clk_n ;
pos_pipe_layerId[2]__clk_n__setup:		SETUP (POSEDGE) pipe_layerId[2] clk_n ;
pos_pipe_read_en__clk_n__setup:		SETUP (POSEDGE) pipe_read_en clk_n ;
pos_pipe_read_en__clk_n__setup:		SETUP (POSEDGE) pipe_read_en clk_n ;
pos_pipeline_clk__clk_n__setup:		SETUP (POSEDGE) pipeline_clk clk_n ;
pos_rst__clk_n__setup:		SETUP (POSEDGE) rst clk_n ;
pos_sdram_dq[0]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[0] clk_n ;
pos_sdram_dq[1]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[1] clk_n ;
pos_sdram_dq[2]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[2] clk_n ;
pos_sdram_dq[3]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[3] clk_n ;
pos_sdram_dq[4]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[4] clk_n ;
pos_sdram_dq[5]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[5] clk_n ;
pos_sdram_dq[6]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[6] clk_n ;
pos_sdram_dq[7]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[7] clk_n ;
pos_sdram_dq[8]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[8] clk_n ;
pos_sdram_dq[9]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[9] clk_n ;
pos_sdram_dq[10]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[10] clk_n ;
pos_sdram_dq[11]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[11] clk_n ;
pos_sdram_dq[12]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[12] clk_n ;
pos_sdram_dq[13]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[13] clk_n ;
pos_sdram_dq[14]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[14] clk_n ;
pos_sdram_dq[15]__clk_n__setup:		SETUP (POSEDGE) sdram_dq[15] clk_n ;
pos_ctrl_layerId[0]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[0] clk_n ;
pos_ctrl_layerId[1]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[1] clk_n ;
pos_ctrl_layerId[2]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[2] clk_n ;
pos_ctrl_layerId[3]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[3] clk_n ;
pos_ctrl_layerId[4]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[4] clk_n ;
pos_ctrl_layerId[5]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[5] clk_n ;
pos_ctrl_layerId[6]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[6] clk_n ;
pos_ctrl_layerId[7]__clk_n__hold:		HOLD (POSEDGE) ctrl_layerId[7] clk_n ;
pos_ctrl_read_en__clk_n__hold:		HOLD (POSEDGE) ctrl_read_en clk_n ;
pos_ctrl_read_en__clk_n__hold:		HOLD (POSEDGE) ctrl_read_en clk_n ;
pos_ctrl_write_data[0]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[0] clk_n ;
pos_ctrl_write_data[1]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[1] clk_n ;
pos_ctrl_write_data[2]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[2] clk_n ;
pos_ctrl_write_data[3]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[3] clk_n ;
pos_ctrl_write_data[4]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[4] clk_n ;
pos_ctrl_write_data[5]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[5] clk_n ;
pos_ctrl_write_data[6]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[6] clk_n ;
pos_ctrl_write_data[7]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[7] clk_n ;
pos_ctrl_write_data[8]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[8] clk_n ;
pos_ctrl_write_data[9]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[9] clk_n ;
pos_ctrl_write_data[10]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[10] clk_n ;
pos_ctrl_write_data[11]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[11] clk_n ;
pos_ctrl_write_data[12]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[12] clk_n ;
pos_ctrl_write_data[13]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[13] clk_n ;
pos_ctrl_write_data[14]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[14] clk_n ;
pos_ctrl_write_data[15]__clk_n__hold:		HOLD (POSEDGE) ctrl_write_data[15] clk_n ;
pos_ctrl_write_en__clk_n__hold:		HOLD (POSEDGE) ctrl_write_en clk_n ;
pos_ctrl_write_en__clk_n__hold:		HOLD (POSEDGE) ctrl_write_en clk_n ;
pos_pipe_addr_bytes[1]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[1] clk_n ;
pos_pipe_addr_bytes[1]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[1] clk_n ;
pos_pipe_addr_bytes[2]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[2] clk_n ;
pos_pipe_addr_bytes[2]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[2] clk_n ;
pos_pipe_addr_bytes[3]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[3] clk_n ;
pos_pipe_addr_bytes[3]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[3] clk_n ;
pos_pipe_addr_bytes[4]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[4] clk_n ;
pos_pipe_addr_bytes[4]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[4] clk_n ;
pos_pipe_addr_bytes[5]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[5] clk_n ;
pos_pipe_addr_bytes[5]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[5] clk_n ;
pos_pipe_addr_bytes[6]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[6] clk_n ;
pos_pipe_addr_bytes[6]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[6] clk_n ;
pos_pipe_addr_bytes[7]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[7] clk_n ;
pos_pipe_addr_bytes[7]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[7] clk_n ;
pos_pipe_addr_bytes[8]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[8] clk_n ;
pos_pipe_addr_bytes[8]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[8] clk_n ;
pos_pipe_addr_bytes[9]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[9] clk_n ;
pos_pipe_addr_bytes[9]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[9] clk_n ;
pos_pipe_addr_bytes[10]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[10] clk_n ;
pos_pipe_addr_bytes[10]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[10] clk_n ;
pos_pipe_addr_bytes[11]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[11] clk_n ;
pos_pipe_addr_bytes[11]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[11] clk_n ;
pos_pipe_addr_bytes[12]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[12] clk_n ;
pos_pipe_addr_bytes[12]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[12] clk_n ;
pos_pipe_addr_bytes[13]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[13] clk_n ;
pos_pipe_addr_bytes[13]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[13] clk_n ;
pos_pipe_addr_bytes[14]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[14] clk_n ;
pos_pipe_addr_bytes[14]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[14] clk_n ;
pos_pipe_addr_bytes[15]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[15] clk_n ;
pos_pipe_addr_bytes[15]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[15] clk_n ;
pos_pipe_addr_bytes[16]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[16] clk_n ;
pos_pipe_addr_bytes[16]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[16] clk_n ;
pos_pipe_addr_bytes[17]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[17] clk_n ;
pos_pipe_addr_bytes[17]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[17] clk_n ;
pos_pipe_addr_bytes[18]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[18] clk_n ;
pos_pipe_addr_bytes[18]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[18] clk_n ;
pos_pipe_addr_bytes[19]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[19] clk_n ;
pos_pipe_addr_bytes[19]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[19] clk_n ;
pos_pipe_addr_bytes[20]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[20] clk_n ;
pos_pipe_addr_bytes[20]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[20] clk_n ;
pos_pipe_addr_bytes[21]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[21] clk_n ;
pos_pipe_addr_bytes[21]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[21] clk_n ;
pos_pipe_addr_bytes[22]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[22] clk_n ;
pos_pipe_addr_bytes[22]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[22] clk_n ;
pos_pipe_addr_bytes[23]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[23] clk_n ;
pos_pipe_addr_bytes[23]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[23] clk_n ;
pos_pipe_addr_bytes[24]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[24] clk_n ;
pos_pipe_addr_bytes[24]__clk_n__hold:		HOLD (POSEDGE) pipe_addr_bytes[24] clk_n ;
pos_pipe_layer[0]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[0] clk_n ;
pos_pipe_layer[0]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[0] clk_n ;
pos_pipe_layer[1]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[1] clk_n ;
pos_pipe_layer[1]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[1] clk_n ;
pos_pipe_layer[2]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[2] clk_n ;
pos_pipe_layer[2]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[2] clk_n ;
pos_pipe_layer[3]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[3] clk_n ;
pos_pipe_layer[3]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[3] clk_n ;
pos_pipe_layer[4]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[4] clk_n ;
pos_pipe_layer[4]__clk_n__hold:		HOLD (POSEDGE) pipe_layer[4] clk_n ;
pos_pipe_layerId[0]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[0] clk_n ;
pos_pipe_layerId[0]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[0] clk_n ;
pos_pipe_layerId[1]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[1] clk_n ;
pos_pipe_layerId[1]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[1] clk_n ;
pos_pipe_layerId[2]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[2] clk_n ;
pos_pipe_layerId[2]__clk_n__hold:		HOLD (POSEDGE) pipe_layerId[2] clk_n ;
pos_pipe_read_en__clk_n__hold:		HOLD (POSEDGE) pipe_read_en clk_n ;
pos_pipe_read_en__clk_n__hold:		HOLD (POSEDGE) pipe_read_en clk_n ;
pos_pipeline_clk__clk_n__hold:		HOLD (POSEDGE) pipeline_clk clk_n ;
pos_rst__clk_n__hold:		HOLD (POSEDGE) rst clk_n ;
pos_sdram_dq[0]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[0] clk_n ;
pos_sdram_dq[1]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[1] clk_n ;
pos_sdram_dq[2]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[2] clk_n ;
pos_sdram_dq[3]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[3] clk_n ;
pos_sdram_dq[4]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[4] clk_n ;
pos_sdram_dq[5]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[5] clk_n ;
pos_sdram_dq[6]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[6] clk_n ;
pos_sdram_dq[7]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[7] clk_n ;
pos_sdram_dq[8]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[8] clk_n ;
pos_sdram_dq[9]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[9] clk_n ;
pos_sdram_dq[10]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[10] clk_n ;
pos_sdram_dq[11]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[11] clk_n ;
pos_sdram_dq[12]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[12] clk_n ;
pos_sdram_dq[13]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[13] clk_n ;
pos_sdram_dq[14]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[14] clk_n ;
pos_sdram_dq[15]__clk_n__hold:		HOLD (POSEDGE) sdram_dq[15] clk_n ;
pos_clk_n__rdy__delay:		DELAY (POSEDGE) clk_n rdy ;
pos_clk_n__read_data[0]__delay:		DELAY (POSEDGE) clk_n read_data[0] ;
pos_clk_n__read_data[0]__delay:		DELAY (POSEDGE) clk_n read_data[0] ;
pos_clk_n__read_data[1]__delay:		DELAY (POSEDGE) clk_n read_data[1] ;
pos_clk_n__read_data[1]__delay:		DELAY (POSEDGE) clk_n read_data[1] ;
pos_clk_n__read_data[2]__delay:		DELAY (POSEDGE) clk_n read_data[2] ;
pos_clk_n__read_data[2]__delay:		DELAY (POSEDGE) clk_n read_data[2] ;
pos_clk_n__read_data[3]__delay:		DELAY (POSEDGE) clk_n read_data[3] ;
pos_clk_n__read_data[3]__delay:		DELAY (POSEDGE) clk_n read_data[3] ;
pos_clk_n__read_data[4]__delay:		DELAY (POSEDGE) clk_n read_data[4] ;
pos_clk_n__read_data[4]__delay:		DELAY (POSEDGE) clk_n read_data[4] ;
pos_clk_n__read_data[5]__delay:		DELAY (POSEDGE) clk_n read_data[5] ;
pos_clk_n__read_data[5]__delay:		DELAY (POSEDGE) clk_n read_data[5] ;
pos_clk_n__read_data[6]__delay:		DELAY (POSEDGE) clk_n read_data[6] ;
pos_clk_n__read_data[6]__delay:		DELAY (POSEDGE) clk_n read_data[6] ;
pos_clk_n__read_data[7]__delay:		DELAY (POSEDGE) clk_n read_data[7] ;
pos_clk_n__read_data[7]__delay:		DELAY (POSEDGE) clk_n read_data[7] ;
pos_clk_n__read_data[8]__delay:		DELAY (POSEDGE) clk_n read_data[8] ;
pos_clk_n__read_data[8]__delay:		DELAY (POSEDGE) clk_n read_data[8] ;
pos_clk_n__read_data[9]__delay:		DELAY (POSEDGE) clk_n read_data[9] ;
pos_clk_n__read_data[9]__delay:		DELAY (POSEDGE) clk_n read_data[9] ;
pos_clk_n__read_data[10]__delay:		DELAY (POSEDGE) clk_n read_data[10] ;
pos_clk_n__read_data[10]__delay:		DELAY (POSEDGE) clk_n read_data[10] ;
pos_clk_n__read_data[11]__delay:		DELAY (POSEDGE) clk_n read_data[11] ;
pos_clk_n__read_data[11]__delay:		DELAY (POSEDGE) clk_n read_data[11] ;
pos_clk_n__read_data[12]__delay:		DELAY (POSEDGE) clk_n read_data[12] ;
pos_clk_n__read_data[12]__delay:		DELAY (POSEDGE) clk_n read_data[12] ;
pos_clk_n__read_data[13]__delay:		DELAY (POSEDGE) clk_n read_data[13] ;
pos_clk_n__read_data[13]__delay:		DELAY (POSEDGE) clk_n read_data[13] ;
pos_clk_n__read_data[14]__delay:		DELAY (POSEDGE) clk_n read_data[14] ;
pos_clk_n__read_data[14]__delay:		DELAY (POSEDGE) clk_n read_data[14] ;
pos_clk_n__read_data[15]__delay:		DELAY (POSEDGE) clk_n read_data[15] ;
pos_clk_n__read_data[15]__delay:		DELAY (POSEDGE) clk_n read_data[15] ;
pos_clk_n__sdram_addr[0]__delay:		DELAY (POSEDGE) clk_n sdram_addr[0] ;
pos_clk_n__sdram_addr[1]__delay:		DELAY (POSEDGE) clk_n sdram_addr[1] ;
pos_clk_n__sdram_addr[2]__delay:		DELAY (POSEDGE) clk_n sdram_addr[2] ;
pos_clk_n__sdram_addr[3]__delay:		DELAY (POSEDGE) clk_n sdram_addr[3] ;
pos_clk_n__sdram_addr[4]__delay:		DELAY (POSEDGE) clk_n sdram_addr[4] ;
pos_clk_n__sdram_addr[5]__delay:		DELAY (POSEDGE) clk_n sdram_addr[5] ;
pos_clk_n__sdram_addr[6]__delay:		DELAY (POSEDGE) clk_n sdram_addr[6] ;
pos_clk_n__sdram_addr[7]__delay:		DELAY (POSEDGE) clk_n sdram_addr[7] ;
pos_clk_n__sdram_addr[8]__delay:		DELAY (POSEDGE) clk_n sdram_addr[8] ;
pos_clk_n__sdram_addr[9]__delay:		DELAY (POSEDGE) clk_n sdram_addr[9] ;
pos_clk_n__sdram_addr[10]__delay:		DELAY (POSEDGE) clk_n sdram_addr[10] ;
pos_clk_n__sdram_addr[11]__delay:		DELAY (POSEDGE) clk_n sdram_addr[11] ;
pos_clk_n__sdram_addr[12]__delay:		DELAY (POSEDGE) clk_n sdram_addr[12] ;
pos_clk_n__sdram_ba[0]__delay:		DELAY (POSEDGE) clk_n sdram_ba[0] ;
pos_clk_n__sdram_ba[1]__delay:		DELAY (POSEDGE) clk_n sdram_ba[1] ;
pos_clk_n__sdram_cas_n__delay:		DELAY (POSEDGE) clk_n sdram_cas_n ;
pos_clk_n__sdram_clk__delay:		DELAY (POSEDGE) clk_n sdram_clk ;
pos_clk_n__sdram_clk__delay:		DELAY (POSEDGE) clk_n sdram_clk ;
pos_clk_n__sdram_dq[0]__delay:		DELAY (POSEDGE) clk_n sdram_dq[0] ;
pos_clk_n__sdram_dq[1]__delay:		DELAY (POSEDGE) clk_n sdram_dq[1] ;
pos_clk_n__sdram_dq[2]__delay:		DELAY (POSEDGE) clk_n sdram_dq[2] ;
pos_clk_n__sdram_dq[3]__delay:		DELAY (POSEDGE) clk_n sdram_dq[3] ;
pos_clk_n__sdram_dq[4]__delay:		DELAY (POSEDGE) clk_n sdram_dq[4] ;
pos_clk_n__sdram_dq[5]__delay:		DELAY (POSEDGE) clk_n sdram_dq[5] ;
pos_clk_n__sdram_dq[6]__delay:		DELAY (POSEDGE) clk_n sdram_dq[6] ;
pos_clk_n__sdram_dq[7]__delay:		DELAY (POSEDGE) clk_n sdram_dq[7] ;
pos_clk_n__sdram_dq[8]__delay:		DELAY (POSEDGE) clk_n sdram_dq[8] ;
pos_clk_n__sdram_dq[9]__delay:		DELAY (POSEDGE) clk_n sdram_dq[9] ;
pos_clk_n__sdram_dq[10]__delay:		DELAY (POSEDGE) clk_n sdram_dq[10] ;
pos_clk_n__sdram_dq[11]__delay:		DELAY (POSEDGE) clk_n sdram_dq[11] ;
pos_clk_n__sdram_dq[12]__delay:		DELAY (POSEDGE) clk_n sdram_dq[12] ;
pos_clk_n__sdram_dq[13]__delay:		DELAY (POSEDGE) clk_n sdram_dq[13] ;
pos_clk_n__sdram_dq[14]__delay:		DELAY (POSEDGE) clk_n sdram_dq[14] ;
pos_clk_n__sdram_dq[15]__delay:		DELAY (POSEDGE) clk_n sdram_dq[15] ;
pos_clk_n__sdram_dqm[0]__delay:		DELAY (POSEDGE) clk_n sdram_dqm[0] ;
pos_clk_n__sdram_dqm[1]__delay:		DELAY (POSEDGE) clk_n sdram_dqm[1] ;
pos_clk_n__sdram_ras_n__delay:		DELAY (POSEDGE) clk_n sdram_ras_n ;
pos_clk_n__sdram_we_n__delay:		DELAY (POSEDGE) clk_n sdram_we_n ;
_5.840__5.960__delay:		DELAY 5.840 5.960 ;
_5.699__5.804__delay:		DELAY 5.699 5.804 ;
_6.568__6.694__delay:		DELAY 6.568 6.694 ;
_5.754__5.862__delay:		DELAY 5.754 5.862 ;
_5.900__6.002__delay:		DELAY 5.900 6.002 ;
_6.308__6.501__delay:		DELAY 6.308 6.501 ;
_6.354__6.535__delay:		DELAY 6.354 6.535 ;
_6.027__6.087__delay:		DELAY 6.027 6.087 ;
_5.961__6.066__delay:		DELAY 5.961 6.066 ;
_5.869__5.989__delay:		DELAY 5.869 5.989 ;
_6.392__6.573__delay:		DELAY 6.392 6.573 ;
_6.560__6.751__delay:		DELAY 6.560 6.751 ;
_5.702__5.788__delay:		DELAY 5.702 5.788 ;
_6.331__6.497__delay:		DELAY 6.331 6.497 ;
_5.935__5.997__delay:		DELAY 5.935 5.997 ;
_6.577__6.782__delay:		DELAY 6.577 6.782 ;

ENDMODEL
