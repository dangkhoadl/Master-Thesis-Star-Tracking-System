-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.4
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CCLabel_preProcess is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    Image_r_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    Image_r_EN_A : OUT STD_LOGIC;
    Image_r_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    Image_r_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    Image_r_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    lbImage_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    lbImage_ce0 : OUT STD_LOGIC;
    lbImage_we0 : OUT STD_LOGIC;
    lbImage_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of CCLabel_preProcess is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_pp0_stg0_fsm_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_pp0_stg1_fsm_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_pp0_stg2_fsm_3 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_pp0_stg3_fsm_4 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_pp0_stg4_fsm_5 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_pp0_stg5_fsm_6 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_pp0_stg6_fsm_7 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_pp0_stg7_fsm_8 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_st11_fsm_9 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv6_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_const_lv6_7 : STD_LOGIC_VECTOR (5 downto 0) := "000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_28 : BOOLEAN;
    signal i_reg_198 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond1_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond1_reg_324 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_56 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal i_1_fu_231_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_1_reg_328 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_241_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_reg_333 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_249_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_reg_344 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_1_fu_259_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_1_reg_354 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg1_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_81 : BOOLEAN;
    signal tmp_3_2_fu_269_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_2_reg_364 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg2_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_94 : BOOLEAN;
    signal tmp_3_3_fu_279_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_3_reg_374 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg3_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_106 : BOOLEAN;
    signal tmp_3_4_fu_289_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_4_reg_384 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg4_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_118 : BOOLEAN;
    signal tmp_3_5_fu_299_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_5_reg_394 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg5_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_130 : BOOLEAN;
    signal tmp_3_6_fu_309_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_6_reg_404 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg6_fsm_7 : STD_LOGIC;
    signal ap_sig_bdd_142 : BOOLEAN;
    signal tmp_3_7_fu_319_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_7_reg_414 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_pp0_stg7_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_154 : BOOLEAN;
    signal i_phi_fu_202_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal Image_r_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_33_fu_237_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_s_fu_254_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_1_fu_264_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_2_fu_274_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_3_fu_284_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_4_fu_294_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_5_fu_304_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_6_fu_314_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_9 : STD_LOGIC;
    signal ap_sig_bdd_298 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not((exitcond1_fu_225_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8) and not((exitcond1_reg_324 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- i_reg_198 assign process. --
    i_reg_198_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond1_reg_324 = ap_const_lv1_0))) then 
                i_reg_198 <= i_1_reg_328;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_198 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1)) then
                exitcond1_reg_324 <= exitcond1_fu_225_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) then
                i_1_reg_328 <= i_1_fu_231_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2) and (exitcond1_reg_324 = ap_const_lv1_0))) then
                tmp_3_1_reg_354(3) <= tmp_3_1_fu_259_p1(3);
    tmp_3_1_reg_354(4) <= tmp_3_1_fu_259_p1(4);
    tmp_3_1_reg_354(5) <= tmp_3_1_fu_259_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3))) then
                tmp_3_2_reg_364(3) <= tmp_3_2_fu_269_p1(3);
    tmp_3_2_reg_364(4) <= tmp_3_2_fu_269_p1(4);
    tmp_3_2_reg_364(5) <= tmp_3_2_fu_269_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4))) then
                tmp_3_3_reg_374(3) <= tmp_3_3_fu_279_p1(3);
    tmp_3_3_reg_374(4) <= tmp_3_3_fu_279_p1(4);
    tmp_3_3_reg_374(5) <= tmp_3_3_fu_279_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5))) then
                tmp_3_4_reg_384(3) <= tmp_3_4_fu_289_p1(3);
    tmp_3_4_reg_384(4) <= tmp_3_4_fu_289_p1(4);
    tmp_3_4_reg_384(5) <= tmp_3_4_fu_289_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6))) then
                tmp_3_5_reg_394(3) <= tmp_3_5_fu_299_p1(3);
    tmp_3_5_reg_394(4) <= tmp_3_5_fu_299_p1(4);
    tmp_3_5_reg_394(5) <= tmp_3_5_fu_299_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7))) then
                tmp_3_6_reg_404(3) <= tmp_3_6_fu_309_p1(3);
    tmp_3_6_reg_404(4) <= tmp_3_6_fu_309_p1(4);
    tmp_3_6_reg_404(5) <= tmp_3_6_fu_309_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8))) then
                tmp_3_7_reg_414(3) <= tmp_3_7_fu_319_p1(3);
    tmp_3_7_reg_414(4) <= tmp_3_7_fu_319_p1(4);
    tmp_3_7_reg_414(5) <= tmp_3_7_fu_319_p1(5);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond1_fu_225_p2 = ap_const_lv1_0))) then
                tmp_3_reg_344(3) <= tmp_3_fu_249_p1(3);
    tmp_3_reg_344(4) <= tmp_3_fu_249_p1(4);
    tmp_3_reg_344(5) <= tmp_3_fu_249_p1(5);
                tmp_reg_333(3) <= tmp_fu_241_p3(3);
    tmp_reg_333(4) <= tmp_fu_241_p3(4);
    tmp_reg_333(5) <= tmp_fu_241_p3(5);
            end if;
        end if;
    end process;
    tmp_reg_333(2 downto 0) <= "000";
    tmp_3_reg_344(2 downto 0) <= "000";
    tmp_3_reg_344(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_1_reg_354(2 downto 0) <= "001";
    tmp_3_1_reg_354(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_2_reg_364(2 downto 0) <= "010";
    tmp_3_2_reg_364(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_3_reg_374(2 downto 0) <= "011";
    tmp_3_3_reg_374(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_4_reg_384(2 downto 0) <= "100";
    tmp_3_4_reg_384(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_5_reg_394(2 downto 0) <= "101";
    tmp_3_5_reg_394(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_6_reg_404(2 downto 0) <= "110";
    tmp_3_6_reg_404(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_3_7_reg_414(2 downto 0) <= "111";
    tmp_3_7_reg_414(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond1_fu_225_p2, ap_reg_ppiten_pp0_it0)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_pp0_stg0_fsm_1 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((exitcond1_fu_225_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg1_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st11_fsm_9;
                end if;
            when ap_ST_pp0_stg1_fsm_2 => 
                ap_NS_fsm <= ap_ST_pp0_stg2_fsm_3;
            when ap_ST_pp0_stg2_fsm_3 => 
                ap_NS_fsm <= ap_ST_pp0_stg3_fsm_4;
            when ap_ST_pp0_stg3_fsm_4 => 
                ap_NS_fsm <= ap_ST_pp0_stg4_fsm_5;
            when ap_ST_pp0_stg4_fsm_5 => 
                ap_NS_fsm <= ap_ST_pp0_stg5_fsm_6;
            when ap_ST_pp0_stg5_fsm_6 => 
                ap_NS_fsm <= ap_ST_pp0_stg6_fsm_7;
            when ap_ST_pp0_stg6_fsm_7 => 
                ap_NS_fsm <= ap_ST_pp0_stg7_fsm_8;
            when ap_ST_pp0_stg7_fsm_8 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
            when ap_ST_st11_fsm_9 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    Image_r_Addr_A <= std_logic_vector(shift_left(unsigned(Image_r_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));

    -- Image_r_Addr_A_orig assign process. --
    Image_r_Addr_A_orig_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0, tmp_3_fu_249_p1, tmp_3_1_fu_259_p1, ap_sig_cseq_ST_pp0_stg1_fsm_2, tmp_3_2_fu_269_p1, ap_sig_cseq_ST_pp0_stg2_fsm_3, tmp_3_3_fu_279_p1, ap_sig_cseq_ST_pp0_stg3_fsm_4, tmp_3_4_fu_289_p1, ap_sig_cseq_ST_pp0_stg4_fsm_5, tmp_3_5_fu_299_p1, ap_sig_cseq_ST_pp0_stg5_fsm_6, tmp_3_6_fu_309_p1, ap_sig_cseq_ST_pp0_stg6_fsm_7, tmp_3_7_fu_319_p1, ap_sig_cseq_ST_pp0_stg7_fsm_8)
    begin
        if ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8)) then 
                Image_r_Addr_A_orig <= tmp_3_7_fu_319_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7)) then 
                Image_r_Addr_A_orig <= tmp_3_6_fu_309_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6)) then 
                Image_r_Addr_A_orig <= tmp_3_5_fu_299_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5)) then 
                Image_r_Addr_A_orig <= tmp_3_4_fu_289_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4)) then 
                Image_r_Addr_A_orig <= tmp_3_3_fu_279_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3)) then 
                Image_r_Addr_A_orig <= tmp_3_2_fu_269_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2)) then 
                Image_r_Addr_A_orig <= tmp_3_1_fu_259_p1(32 - 1 downto 0);
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1)) then 
                Image_r_Addr_A_orig <= tmp_3_fu_249_p1(32 - 1 downto 0);
            else 
                Image_r_Addr_A_orig <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            Image_r_Addr_A_orig <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    Image_r_Din_A <= ap_const_lv32_0;

    -- Image_r_EN_A assign process. --
    Image_r_EN_A_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0, ap_sig_cseq_ST_pp0_stg1_fsm_2, ap_sig_cseq_ST_pp0_stg2_fsm_3, ap_sig_cseq_ST_pp0_stg3_fsm_4, ap_sig_cseq_ST_pp0_stg4_fsm_5, ap_sig_cseq_ST_pp0_stg5_fsm_6, ap_sig_cseq_ST_pp0_stg6_fsm_7, ap_sig_cseq_ST_pp0_stg7_fsm_8)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8)))) then 
            Image_r_EN_A <= ap_const_logic_1;
        else 
            Image_r_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    Image_r_WEN_A <= ap_const_lv4_0;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st11_fsm_9)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or (ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_9))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st11_fsm_9)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_9)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_106 assign process. --
    ap_sig_bdd_106_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_106 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_118 assign process. --
    ap_sig_bdd_118_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_118 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_130 assign process. --
    ap_sig_bdd_130_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_130 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_142 assign process. --
    ap_sig_bdd_142_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_142 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    -- ap_sig_bdd_154 assign process. --
    ap_sig_bdd_154_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_154 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_28 assign process. --
    ap_sig_bdd_28_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_28 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_298 assign process. --
    ap_sig_bdd_298_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_298 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    -- ap_sig_bdd_56 assign process. --
    ap_sig_bdd_56_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_56 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_81 assign process. --
    ap_sig_bdd_81_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_81 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_94 assign process. --
    ap_sig_bdd_94_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_94 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_1_assign_proc : process(ap_sig_bdd_56)
    begin
        if (ap_sig_bdd_56) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg1_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg1_fsm_2_assign_proc : process(ap_sig_bdd_81)
    begin
        if (ap_sig_bdd_81) then 
            ap_sig_cseq_ST_pp0_stg1_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg1_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg2_fsm_3 assign process. --
    ap_sig_cseq_ST_pp0_stg2_fsm_3_assign_proc : process(ap_sig_bdd_94)
    begin
        if (ap_sig_bdd_94) then 
            ap_sig_cseq_ST_pp0_stg2_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg2_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg3_fsm_4 assign process. --
    ap_sig_cseq_ST_pp0_stg3_fsm_4_assign_proc : process(ap_sig_bdd_106)
    begin
        if (ap_sig_bdd_106) then 
            ap_sig_cseq_ST_pp0_stg3_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg3_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg4_fsm_5 assign process. --
    ap_sig_cseq_ST_pp0_stg4_fsm_5_assign_proc : process(ap_sig_bdd_118)
    begin
        if (ap_sig_bdd_118) then 
            ap_sig_cseq_ST_pp0_stg4_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg4_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg5_fsm_6 assign process. --
    ap_sig_cseq_ST_pp0_stg5_fsm_6_assign_proc : process(ap_sig_bdd_130)
    begin
        if (ap_sig_bdd_130) then 
            ap_sig_cseq_ST_pp0_stg5_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg5_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg6_fsm_7 assign process. --
    ap_sig_cseq_ST_pp0_stg6_fsm_7_assign_proc : process(ap_sig_bdd_142)
    begin
        if (ap_sig_bdd_142) then 
            ap_sig_cseq_ST_pp0_stg6_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg6_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp0_stg7_fsm_8 assign process. --
    ap_sig_cseq_ST_pp0_stg7_fsm_8_assign_proc : process(ap_sig_bdd_154)
    begin
        if (ap_sig_bdd_154) then 
            ap_sig_cseq_ST_pp0_stg7_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg7_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st11_fsm_9 assign process. --
    ap_sig_cseq_ST_st11_fsm_9_assign_proc : process(ap_sig_bdd_298)
    begin
        if (ap_sig_bdd_298) then 
            ap_sig_cseq_ST_st11_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_28)
    begin
        if (ap_sig_bdd_28) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_225_p2 <= "1" when (i_phi_fu_202_p4 = ap_const_lv4_8) else "0";
    grp_fu_210_p2 <= "1" when (unsigned(Image_r_Dout_A) < unsigned(ap_const_lv32_46)) else "0";
    i_1_fu_231_p2 <= std_logic_vector(unsigned(i_phi_fu_202_p4) + unsigned(ap_const_lv4_1));

    -- i_phi_fu_202_p4 assign process. --
    i_phi_fu_202_p4_assign_proc : process(i_reg_198, exitcond1_reg_324, ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it1, i_1_reg_328)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond1_reg_324 = ap_const_lv1_0))) then 
            i_phi_fu_202_p4 <= i_1_reg_328;
        else 
            i_phi_fu_202_p4 <= i_reg_198;
        end if; 
    end process;


    -- lbImage_address0 assign process. --
    lbImage_address0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, tmp_3_reg_344, tmp_3_1_reg_354, ap_sig_cseq_ST_pp0_stg1_fsm_2, tmp_3_2_reg_364, ap_sig_cseq_ST_pp0_stg2_fsm_3, tmp_3_3_reg_374, ap_sig_cseq_ST_pp0_stg3_fsm_4, tmp_3_4_reg_384, ap_sig_cseq_ST_pp0_stg4_fsm_5, tmp_3_5_reg_394, ap_sig_cseq_ST_pp0_stg5_fsm_6, tmp_3_6_reg_404, ap_sig_cseq_ST_pp0_stg6_fsm_7, tmp_3_7_reg_414, ap_sig_cseq_ST_pp0_stg7_fsm_8)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) then 
            lbImage_address0 <= tmp_3_7_reg_414(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8))) then 
            lbImage_address0 <= tmp_3_6_reg_404(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7))) then 
            lbImage_address0 <= tmp_3_5_reg_394(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6))) then 
            lbImage_address0 <= tmp_3_4_reg_384(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5))) then 
            lbImage_address0 <= tmp_3_3_reg_374(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4))) then 
            lbImage_address0 <= tmp_3_2_reg_364(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3))) then 
            lbImage_address0 <= tmp_3_1_reg_354(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2))) then 
            lbImage_address0 <= tmp_3_reg_344(6 - 1 downto 0);
        else 
            lbImage_address0 <= "XXXXXX";
        end if; 
    end process;


    -- lbImage_ce0 assign process. --
    lbImage_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_cseq_ST_pp0_stg1_fsm_2, ap_sig_cseq_ST_pp0_stg2_fsm_3, ap_sig_cseq_ST_pp0_stg3_fsm_4, ap_sig_cseq_ST_pp0_stg4_fsm_5, ap_sig_cseq_ST_pp0_stg5_fsm_6, ap_sig_cseq_ST_pp0_stg6_fsm_7, ap_sig_cseq_ST_pp0_stg7_fsm_8)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8)))) then 
            lbImage_ce0 <= ap_const_logic_1;
        else 
            lbImage_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    lbImage_d0 <= 
        ap_const_lv32_0 when (grp_fu_210_p2(0) = '1') else 
        ap_const_lv32_1;

    -- lbImage_we0 assign process. --
    lbImage_we0_assign_proc : process(exitcond1_reg_324, ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_sig_cseq_ST_pp0_stg1_fsm_2, ap_sig_cseq_ST_pp0_stg2_fsm_3, ap_sig_cseq_ST_pp0_stg3_fsm_4, ap_sig_cseq_ST_pp0_stg4_fsm_5, ap_sig_cseq_ST_pp0_stg5_fsm_6, ap_sig_cseq_ST_pp0_stg6_fsm_7, ap_sig_cseq_ST_pp0_stg7_fsm_8)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond1_reg_324 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg1_fsm_2) and (exitcond1_reg_324 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg2_fsm_3)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg3_fsm_4)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg4_fsm_5)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg5_fsm_6)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg6_fsm_7)) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond1_reg_324 = ap_const_lv1_0) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg7_fsm_8)))) then 
            lbImage_we0 <= ap_const_logic_1;
        else 
            lbImage_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_1_fu_264_p2 <= (tmp_reg_333 or ap_const_lv6_2);
    tmp_2_2_fu_274_p2 <= (tmp_reg_333 or ap_const_lv6_3);
    tmp_2_3_fu_284_p2 <= (tmp_reg_333 or ap_const_lv6_4);
    tmp_2_4_fu_294_p2 <= (tmp_reg_333 or ap_const_lv6_5);
    tmp_2_5_fu_304_p2 <= (tmp_reg_333 or ap_const_lv6_6);
    tmp_2_6_fu_314_p2 <= (tmp_reg_333 or ap_const_lv6_7);
    tmp_2_s_fu_254_p2 <= (tmp_reg_333 or ap_const_lv6_1);
    tmp_33_fu_237_p1 <= i_phi_fu_202_p4(3 - 1 downto 0);
    tmp_3_1_fu_259_p1 <= std_logic_vector(resize(unsigned(tmp_2_s_fu_254_p2),64));
    tmp_3_2_fu_269_p1 <= std_logic_vector(resize(unsigned(tmp_2_1_fu_264_p2),64));
    tmp_3_3_fu_279_p1 <= std_logic_vector(resize(unsigned(tmp_2_2_fu_274_p2),64));
    tmp_3_4_fu_289_p1 <= std_logic_vector(resize(unsigned(tmp_2_3_fu_284_p2),64));
    tmp_3_5_fu_299_p1 <= std_logic_vector(resize(unsigned(tmp_2_4_fu_294_p2),64));
    tmp_3_6_fu_309_p1 <= std_logic_vector(resize(unsigned(tmp_2_5_fu_304_p2),64));
    tmp_3_7_fu_319_p1 <= std_logic_vector(resize(unsigned(tmp_2_6_fu_314_p2),64));
    tmp_3_fu_249_p1 <= std_logic_vector(resize(unsigned(tmp_fu_241_p3),64));
    tmp_fu_241_p3 <= (tmp_33_fu_237_p1 & ap_const_lv3_0);
end behav;