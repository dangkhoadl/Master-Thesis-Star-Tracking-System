// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "CCLabel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic CCLabel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic CCLabel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> CCLabel::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> CCLabel::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> CCLabel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> CCLabel::ap_const_lv1_1 = "1";
const sc_lv<32> CCLabel::ap_const_lv32_1 = "1";

CCLabel::CCLabel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_CCLabel_preProcess_fu_13 = new CCLabel_preProcess("grp_CCLabel_preProcess_fu_13");
    grp_CCLabel_preProcess_fu_13->ap_clk(ap_clk);
    grp_CCLabel_preProcess_fu_13->ap_rst(ap_rst);
    grp_CCLabel_preProcess_fu_13->ap_start(grp_CCLabel_preProcess_fu_13_ap_start);
    grp_CCLabel_preProcess_fu_13->ap_done(grp_CCLabel_preProcess_fu_13_ap_done);
    grp_CCLabel_preProcess_fu_13->ap_idle(grp_CCLabel_preProcess_fu_13_ap_idle);
    grp_CCLabel_preProcess_fu_13->ap_ready(grp_CCLabel_preProcess_fu_13_ap_ready);
    grp_CCLabel_preProcess_fu_13->Image_r_address0(grp_CCLabel_preProcess_fu_13_Image_r_address0);
    grp_CCLabel_preProcess_fu_13->Image_r_ce0(grp_CCLabel_preProcess_fu_13_Image_r_ce0);
    grp_CCLabel_preProcess_fu_13->Image_r_q0(grp_CCLabel_preProcess_fu_13_Image_r_q0);
    grp_CCLabel_preProcess_fu_13->Image_r_address1(grp_CCLabel_preProcess_fu_13_Image_r_address1);
    grp_CCLabel_preProcess_fu_13->Image_r_ce1(grp_CCLabel_preProcess_fu_13_Image_r_ce1);
    grp_CCLabel_preProcess_fu_13->Image_r_q1(grp_CCLabel_preProcess_fu_13_Image_r_q1);
    grp_CCLabel_preProcess_fu_13->lbImage_address0(grp_CCLabel_preProcess_fu_13_lbImage_address0);
    grp_CCLabel_preProcess_fu_13->lbImage_ce0(grp_CCLabel_preProcess_fu_13_lbImage_ce0);
    grp_CCLabel_preProcess_fu_13->lbImage_we0(grp_CCLabel_preProcess_fu_13_lbImage_we0);
    grp_CCLabel_preProcess_fu_13->lbImage_d0(grp_CCLabel_preProcess_fu_13_lbImage_d0);
    grp_CCLabel_preProcess_fu_13->lbImage_address1(grp_CCLabel_preProcess_fu_13_lbImage_address1);
    grp_CCLabel_preProcess_fu_13->lbImage_ce1(grp_CCLabel_preProcess_fu_13_lbImage_ce1);
    grp_CCLabel_preProcess_fu_13->lbImage_we1(grp_CCLabel_preProcess_fu_13_lbImage_we1);
    grp_CCLabel_preProcess_fu_13->lbImage_d1(grp_CCLabel_preProcess_fu_13_lbImage_d1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Image_r_address0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_Image_r_address0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_Image_r_address1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_Image_r_address1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_Image_r_ce0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_Image_r_ce0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_Image_r_ce1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_Image_r_ce1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_CCLabel_preProcess_fu_13_ap_done );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_CCLabel_preProcess_fu_13_ap_done );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_sig_bdd_18);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_75);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_18 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_75 );

    SC_METHOD(thread_grp_CCLabel_preProcess_fu_13_Image_r_q0);
    sensitive << ( Image_r_q0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_CCLabel_preProcess_fu_13_Image_r_q1);
    sensitive << ( Image_r_q1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_CCLabel_preProcess_fu_13_ap_start);
    sensitive << ( grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg );

    SC_METHOD(thread_lbImage_address0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_address0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_address1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_address1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_ce0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_ce0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_ce1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_ce1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_d0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_d0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_d1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_d1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_we0);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_we0 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_lbImage_we1);
    sensitive << ( grp_CCLabel_preProcess_fu_13_lbImage_we1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_CCLabel_preProcess_fu_13_ap_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "CCLabel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, Image_r_address0, "(port)Image_r_address0");
    sc_trace(mVcdFile, Image_r_ce0, "(port)Image_r_ce0");
    sc_trace(mVcdFile, Image_r_q0, "(port)Image_r_q0");
    sc_trace(mVcdFile, Image_r_address1, "(port)Image_r_address1");
    sc_trace(mVcdFile, Image_r_ce1, "(port)Image_r_ce1");
    sc_trace(mVcdFile, Image_r_q1, "(port)Image_r_q1");
    sc_trace(mVcdFile, lbImage_address0, "(port)lbImage_address0");
    sc_trace(mVcdFile, lbImage_ce0, "(port)lbImage_ce0");
    sc_trace(mVcdFile, lbImage_we0, "(port)lbImage_we0");
    sc_trace(mVcdFile, lbImage_d0, "(port)lbImage_d0");
    sc_trace(mVcdFile, lbImage_address1, "(port)lbImage_address1");
    sc_trace(mVcdFile, lbImage_ce1, "(port)lbImage_ce1");
    sc_trace(mVcdFile, lbImage_we1, "(port)lbImage_we1");
    sc_trace(mVcdFile, lbImage_d1, "(port)lbImage_d1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_18, "ap_sig_bdd_18");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_ap_start, "grp_CCLabel_preProcess_fu_13_ap_start");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_ap_done, "grp_CCLabel_preProcess_fu_13_ap_done");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_ap_idle, "grp_CCLabel_preProcess_fu_13_ap_idle");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_ap_ready, "grp_CCLabel_preProcess_fu_13_ap_ready");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_address0, "grp_CCLabel_preProcess_fu_13_Image_r_address0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_ce0, "grp_CCLabel_preProcess_fu_13_Image_r_ce0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_q0, "grp_CCLabel_preProcess_fu_13_Image_r_q0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_address1, "grp_CCLabel_preProcess_fu_13_Image_r_address1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_ce1, "grp_CCLabel_preProcess_fu_13_Image_r_ce1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_Image_r_q1, "grp_CCLabel_preProcess_fu_13_Image_r_q1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_address0, "grp_CCLabel_preProcess_fu_13_lbImage_address0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_ce0, "grp_CCLabel_preProcess_fu_13_lbImage_ce0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_we0, "grp_CCLabel_preProcess_fu_13_lbImage_we0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_d0, "grp_CCLabel_preProcess_fu_13_lbImage_d0");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_address1, "grp_CCLabel_preProcess_fu_13_lbImage_address1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_ce1, "grp_CCLabel_preProcess_fu_13_lbImage_ce1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_we1, "grp_CCLabel_preProcess_fu_13_lbImage_we1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_lbImage_d1, "grp_CCLabel_preProcess_fu_13_lbImage_d1");
    sc_trace(mVcdFile, grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg, "grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_75, "ap_sig_bdd_75");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("CCLabel.hdltvin.dat");
    mHdltvoutHandle.open("CCLabel.hdltvout.dat");
}

CCLabel::~CCLabel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_CCLabel_preProcess_fu_13;
}

void CCLabel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
            grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_CCLabel_preProcess_fu_13_ap_ready.read())) {
            grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
}

void CCLabel::thread_Image_r_address0() {
    Image_r_address0 = grp_CCLabel_preProcess_fu_13_Image_r_address0.read();
}

void CCLabel::thread_Image_r_address1() {
    Image_r_address1 = grp_CCLabel_preProcess_fu_13_Image_r_address1.read();
}

void CCLabel::thread_Image_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        Image_r_ce0 = grp_CCLabel_preProcess_fu_13_Image_r_ce0.read();
    } else {
        Image_r_ce0 = ap_const_logic_0;
    }
}

void CCLabel::thread_Image_r_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        Image_r_ce1 = grp_CCLabel_preProcess_fu_13_Image_r_ce1.read();
    } else {
        Image_r_ce1 = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_CCLabel_preProcess_fu_13_ap_done.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_CCLabel_preProcess_fu_13_ap_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_sig_bdd_18() {
    ap_sig_bdd_18 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void CCLabel::thread_ap_sig_bdd_75() {
    ap_sig_bdd_75 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void CCLabel::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_18.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_75.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void CCLabel::thread_grp_CCLabel_preProcess_fu_13_Image_r_q0() {
    grp_CCLabel_preProcess_fu_13_Image_r_q0 = Image_r_q0.read();
}

void CCLabel::thread_grp_CCLabel_preProcess_fu_13_Image_r_q1() {
    grp_CCLabel_preProcess_fu_13_Image_r_q1 = Image_r_q1.read();
}

void CCLabel::thread_grp_CCLabel_preProcess_fu_13_ap_start() {
    grp_CCLabel_preProcess_fu_13_ap_start = grp_CCLabel_preProcess_fu_13_ap_start_ap_start_reg.read();
}

void CCLabel::thread_lbImage_address0() {
    lbImage_address0 = grp_CCLabel_preProcess_fu_13_lbImage_address0.read();
}

void CCLabel::thread_lbImage_address1() {
    lbImage_address1 = grp_CCLabel_preProcess_fu_13_lbImage_address1.read();
}

void CCLabel::thread_lbImage_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        lbImage_ce0 = grp_CCLabel_preProcess_fu_13_lbImage_ce0.read();
    } else {
        lbImage_ce0 = ap_const_logic_0;
    }
}

void CCLabel::thread_lbImage_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        lbImage_ce1 = grp_CCLabel_preProcess_fu_13_lbImage_ce1.read();
    } else {
        lbImage_ce1 = ap_const_logic_0;
    }
}

void CCLabel::thread_lbImage_d0() {
    lbImage_d0 = grp_CCLabel_preProcess_fu_13_lbImage_d0.read();
}

void CCLabel::thread_lbImage_d1() {
    lbImage_d1 = grp_CCLabel_preProcess_fu_13_lbImage_d1.read();
}

void CCLabel::thread_lbImage_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        lbImage_we0 = grp_CCLabel_preProcess_fu_13_lbImage_we0.read();
    } else {
        lbImage_we0 = ap_const_logic_0;
    }
}

void CCLabel::thread_lbImage_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        lbImage_we1 = grp_CCLabel_preProcess_fu_13_lbImage_we1.read();
    } else {
        lbImage_we1 = ap_const_logic_0;
    }
}

void CCLabel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_CCLabel_preProcess_fu_13_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void CCLabel::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Image_r_address0\" :  \"" << Image_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Image_r_ce0\" :  \"" << Image_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"Image_r_q0\" :  \"" << Image_r_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Image_r_address1\" :  \"" << Image_r_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"Image_r_ce1\" :  \"" << Image_r_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"Image_r_q1\" :  \"" << Image_r_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_address0\" :  \"" << lbImage_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_ce0\" :  \"" << lbImage_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_we0\" :  \"" << lbImage_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_d0\" :  \"" << lbImage_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_address1\" :  \"" << lbImage_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_ce1\" :  \"" << lbImage_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_we1\" :  \"" << lbImage_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"lbImage_d1\" :  \"" << lbImage_d1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

