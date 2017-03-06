; ModuleID = 'D:/Dropbox/DangKhoa/CEE_Cache/StarTrackingProject/ConnectedComponentLabeling_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@lbImage = global [64 x i32] zeroinitializer, align 16
@set = global [40 x i32] zeroinitializer, align 16
@status = global [40 x i1] zeroinitializer, align 16
@totalIntensity = global [40 x i32] zeroinitializer, align 16
@x_r = global [40 x i32] zeroinitializer, align 16
@y_r = global [40 x i32] zeroinitializer, align 16
@p_str1804 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1807 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str1808 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str1809 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str1810 = private unnamed_addr constant [12 x i8] c"hls_label_9\00", align 1
@p_str1813 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1814 = private unnamed_addr constant [6 x i8] c"CRTLS\00", align 1
@p_str1815 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str1816 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1949, void ()* @_GLOBAL__I_a1950]
@str = internal constant [8 x i8] c"CCLabel\00"
@mask_table1 = internal unnamed_addr constant [64 x i52] [i52 2251799813685247, i52 1125899906842623, i52 562949953421311, i52 281474976710655, i52 140737488355327, i52 70368744177663, i52 35184372088831, i52 17592186044415, i52 8796093022207, i52 4398046511103, i52 2199023255551, i52 1099511627775, i52 549755813887, i52 274877906943, i52 137438953471, i52 68719476735, i52 34359738367, i52 17179869183, i52 8589934591, i52 4294967295, i52 2147483647, i52 1073741823, i52 536870911, i52 268435455, i52 134217727, i52 67108863, i52 33554431, i52 16777215, i52 8388607, i52 4194303, i52 2097151, i52 1048575, i52 524287, i52 262143, i52 131071, i52 65535, i52 32767, i52 16383, i52 8191, i52 4095, i52 2047, i52 1023, i52 511, i52 255, i52 127, i52 63, i52 31, i52 15, i52 7, i52 3, i52 1, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 -1, i52 -1]
@one_half_table2 = internal unnamed_addr constant [64 x i53] [i53 1125899906842624, i53 562949953421312, i53 281474976710656, i53 140737488355328, i53 70368744177664, i53 35184372088832, i53 17592186044416, i53 8796093022208, i53 4398046511104, i53 2199023255552, i53 1099511627776, i53 549755813888, i53 274877906944, i53 137438953472, i53 68719476736, i53 34359738368, i53 17179869184, i53 8589934592, i53 4294967296, i53 2147483648, i53 1073741824, i53 536870912, i53 268435456, i53 134217728, i53 67108864, i53 33554432, i53 16777216, i53 8388608, i53 4194304, i53 2097152, i53 1048576, i53 524288, i53 262144, i53 131072, i53 65536, i53 32768, i53 16384, i53 8192, i53 4096, i53 2048, i53 1024, i53 512, i53 256, i53 128, i53 64, i53 32, i53 16, i53 8, i53 4, i53 2, i53 1, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 -4503599627370496, i53 2251799813685248]

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

declare void @_GLOBAL__I_a1949() nounwind

declare void @_GLOBAL__I_a1950() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define i32 @CCLabel([64 x i32]* %Image_r, [40 x i32]* %X, [40 x i32]* %Y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %Image_r) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %X) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %Y) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1813, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %X, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %Y, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([64 x i32]* %Image_r, [1 x i8]* @p_str1805, [12 x i8]* @p_str1816, [1 x i8]* @p_str1805, i32 -1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call fastcc void @CCLabel_preProcess([64 x i32]* %Image_r) nounwind
  %setCount = call fastcc i32 @CCLabel_firstPass([64 x i32]* %Image_r) nounwind
  %centroidDataCount = call fastcc i32 @CCLabel_calCentroid(i32 %setCount, [40 x i32]* %X, [40 x i32]* %Y) nounwind
  ret i32 %centroidDataCount
}

define internal fastcc i32 @CCLabel_calCentroid(i32 %setCount, [40 x i32]* %X, [40 x i32]* %Y) {
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %Y, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %X, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  %setCount_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %setCount)
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %temp_1 = phi i32 [ 1, %0 ], [ %i, %._crit_edge ]
  %tmp = icmp ult i32 %temp_1, %setCount_read
  br i1 %tmp, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %centroidDataCount = alloca i32, align 4
  store i32 0, i32* %centroidDataCount, align 4
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1809)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %tmp_s = zext i32 %temp_1 to i64
  %set_addr = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_s
  %set_load = load i32* %set_addr, align 4
  %tmp_1 = icmp eq i32 %set_load, %temp_1
  br i1 %tmp_1, label %._crit_edge, label %.preheader23

.preheader23:                                     ; preds = %2, %3
  %root = phi i32 [ %temp, %3 ], [ %temp_1, %2 ]
  %tmp_i = sext i32 %root to i64
  %set_addr_1 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_i
  %temp = load i32* %set_addr_1, align 4
  %tmp_6_i = icmp eq i32 %root, %temp
  br i1 %tmp_6_i, label %find.exit, label %3

; <label>:3                                       ; preds = %.preheader23
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1807, i32 %tmp_1_i) nounwind
  br label %.preheader23

find.exit:                                        ; preds = %.preheader23
  %totalIntensity_addr = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_s
  %totalIntensity_load = load i32* %totalIntensity_addr, align 4
  %tmp_6 = zext i32 %root to i64
  %totalIntensity_addr_1 = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_6
  %totalIntensity_load_1 = load i32* %totalIntensity_addr_1, align 4
  %tmp_7 = add i32 %totalIntensity_load_1, %totalIntensity_load
  store i32 %tmp_7, i32* %totalIntensity_addr_1, align 4
  %x_addr = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_s
  %x_load = load i32* %x_addr, align 4
  %x_addr_1 = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_6
  %x_load_1 = load i32* %x_addr_1, align 4
  %tmp_8 = add i32 %x_load_1, %x_load
  store i32 %tmp_8, i32* %x_addr_1, align 4
  %y_addr = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_s
  %y_load = load i32* %y_addr, align 4
  %y_addr_1 = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_6
  %y_load_1 = load i32* %y_addr_1, align 4
  %tmp_9 = add i32 %y_load_1, %y_load
  store i32 %tmp_9, i32* %y_addr_1, align 4
  %status_addr = getelementptr inbounds [40 x i1]* @status, i64 0, i64 %tmp_s
  store i1 false, i1* %status_addr, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %find.exit, %2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1809, i32 %tmp_2)
  %i = add i32 %temp_1, 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1
  %i_1 = phi i32 [ %i_2, %._crit_edge1 ], [ 1, %.preheader.preheader ]
  %tmp_4 = icmp ult i32 %i_1, %setCount_read
  br i1 %tmp_4, label %4, label %5

; <label>:4                                       ; preds = %.preheader
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %tmp_5 = zext i32 %i_1 to i64
  %status_addr_1 = getelementptr inbounds [40 x i1]* @status, i64 0, i64 %tmp_5
  %status_load = load i1* %status_addr_1, align 1
  br i1 %status_load, label %_ifconv, label %._crit_edge1

_ifconv:                                          ; preds = %4
  %centroidDataCount_load = load i32* %centroidDataCount, align 4
  %x_addr_2 = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_5
  %x_load_2 = load i32* %x_addr_2, align 4
  %tmp_10 = uitofp i32 %x_load_2 to float
  %totalIntensity_addr_2 = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_5
  %totalIntensity_load_2 = load i32* %totalIntensity_addr_2, align 4
  %tmp_11 = uitofp i32 %totalIntensity_load_2 to float
  %tmp_12 = fdiv float %tmp_10, %tmp_11
  %x_assign = fpext float %tmp_12 to double
  %t_V_1 = bitcast double %x_assign to i64
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %t_V_1, i32 52, i32 62) nounwind
  %tmp_i_i1 = icmp ult i11 %loc_V, 1022
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_V_1, i32 63)
  %p_Result_26 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_s, i63 0) nounwind
  %tmp_1_i_i = icmp ugt i11 %loc_V, -973
  %index_V = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %t_V_1, i32 52, i32 57) nounwind
  %tmp_2_i_i = zext i6 %index_V to i64
  %mask_table1_addr = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_2_i_i
  %mask = load i52* %mask_table1_addr, align 8
  %one_half_table2_addr = getelementptr [64 x i53]* @one_half_table2, i64 0, i64 %tmp_2_i_i
  %one_half = load i53* %one_half_table2_addr, align 8
  %one_half_i_cast = zext i53 %one_half to i64
  %p_Val2_s = add i64 %t_V_1, %one_half_i_cast
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %tmp_4_i_i = xor i52 %mask, -1
  %xs_sig_V = and i52 %loc_V_1, %tmp_4_i_i
  %tmp_13 = call i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 63) nounwind
  %p_Result_27 = call i64 @_ssdm_op_BitConcatenate.i64.i12.i52(i12 %tmp_13, i52 %xs_sig_V) nounwind
  %sel_tmp_v_i = select i1 %tmp_i_i1, i64 %p_Result_26, i64 %p_Result_27
  %sel_tmp_i = bitcast i64 %sel_tmp_v_i to double
  %sel_tmp1_i = xor i1 %tmp_i_i1, true
  %sel_tmp2_i = and i1 %tmp_1_i_i, %sel_tmp1_i
  %x_assign_1 = select i1 %sel_tmp2_i, double %x_assign, double %sel_tmp_i
  %p_Val2_7 = bitcast double %x_assign_1 to i64
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_7, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_7 to i52
  %p_Result_28 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_3) nounwind
  %tmp_i_i = zext i53 %p_Result_28 to i136
  %tmp_i_i_i_cast = zext i11 %loc_V_2 to i12
  %sh_assign = add i12 %tmp_i_i_i_cast, -1023
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_7 = sub i11 1023, %loc_V_2
  %tmp_i_i_cast = sext i11 %tmp_i_i_7 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_7_i_i = zext i32 %sh_assign_1_cast to i136
  %tmp_7_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_8_i_i = lshr i53 %p_Result_28, %tmp_7_i_i_cast
  %tmp_10_i_i = shl i136 %tmp_i_i, %tmp_7_i_i
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_8_i_i, i32 52)
  %tmp_14 = zext i1 %tmp_26 to i32
  %tmp_18 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_10_i_i, i32 52, i32 83)
  %result_V = select i1 %isNeg, i32 %tmp_14, i32 %tmp_18
  %tmp_15 = zext i32 %centroidDataCount_load to i64
  %X_addr = getelementptr [40 x i32]* %X, i64 0, i64 %tmp_15
  store i32 %result_V, i32* %X_addr, align 4
  %y_addr_2 = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_5
  %y_load_2 = load i32* %y_addr_2, align 4
  %tmp_16 = uitofp i32 %y_load_2 to float
  %tmp_17 = fdiv float %tmp_16, %tmp_11
  %x_assign_2 = fpext float %tmp_17 to double
  %t_V_4 = bitcast double %x_assign_2 to i64
  %loc_V_4 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %t_V_4, i32 52, i32 62) nounwind
  %tmp_i_i4 = icmp ult i11 %loc_V_4, 1022
  %p_Result_14 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_V_4, i32 63)
  %p_Result_29 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_14, i63 0) nounwind
  %tmp_1_i_i7 = icmp ugt i11 %loc_V_4, -973
  %index_V_1 = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %t_V_4, i32 52, i32 57) nounwind
  %tmp_2_i_i9 = zext i6 %index_V_1 to i64
  %mask_table1_addr_1 = getelementptr [64 x i52]* @mask_table1, i64 0, i64 %tmp_2_i_i9
  %mask_1 = load i52* %mask_table1_addr_1, align 8
  %one_half_table2_addr_1 = getelementptr [64 x i53]* @one_half_table2, i64 0, i64 %tmp_2_i_i9
  %one_half_1 = load i53* %one_half_table2_addr_1, align 8
  %one_half_i13_cast = zext i53 %one_half_1 to i64
  %p_Val2_17 = add i64 %t_V_4, %one_half_i13_cast
  %loc_V_5 = trunc i64 %p_Val2_17 to i52
  %tmp_4_i_i1 = xor i52 %mask_1, -1
  %xs_sig_V_1 = and i52 %loc_V_5, %tmp_4_i_i1
  %tmp_19 = call i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64 %p_Val2_17, i32 52, i32 63) nounwind
  %p_Result_30 = call i64 @_ssdm_op_BitConcatenate.i64.i12.i52(i12 %tmp_19, i52 %xs_sig_V_1) nounwind
  %sel_tmp_v_i1 = select i1 %tmp_i_i4, i64 %p_Result_29, i64 %p_Result_30
  %sel_tmp_i1 = bitcast i64 %sel_tmp_v_i1 to double
  %sel_tmp1_i1 = xor i1 %tmp_i_i4, true
  %sel_tmp2_i1 = and i1 %tmp_1_i_i7, %sel_tmp1_i1
  %x_assign_3 = select i1 %sel_tmp2_i1, double %x_assign_2, double %sel_tmp_i1
  %p_Val2_19 = bitcast double %x_assign_3 to i64
  %loc_V_6 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_19, i32 52, i32 62) nounwind
  %loc_V_7 = trunc i64 %p_Val2_19 to i52
  %p_Result_31 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_7) nounwind
  %tmp_i_i9 = zext i53 %p_Result_31 to i136
  %tmp_i_i_i1_cast = zext i11 %loc_V_6 to i12
  %sh_assign_2 = add i12 %tmp_i_i_i1_cast, -1023
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign_2, i32 11)
  %tmp_i_i1_8 = sub i11 1023, %loc_V_6
  %tmp_i_i1_cast = sext i11 %tmp_i_i1_8 to i12
  %sh_assign_3 = select i1 %isNeg_1, i12 %tmp_i_i1_cast, i12 %sh_assign_2
  %sh_assign_3_cast = sext i12 %sh_assign_3 to i32
  %tmp_7_i_i1 = zext i32 %sh_assign_3_cast to i136
  %tmp_7_i_i1_cast = zext i32 %sh_assign_3_cast to i53
  %tmp_8_i_i1 = lshr i53 %p_Result_31, %tmp_7_i_i1_cast
  %tmp_10_i_i1 = shl i136 %tmp_i_i9, %tmp_7_i_i1
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_8_i_i1, i32 52)
  %tmp_20 = zext i1 %tmp_31 to i32
  %tmp_21 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_10_i_i1, i32 52, i32 83)
  %result_V_1 = select i1 %isNeg_1, i32 %tmp_20, i32 %tmp_21
  %Y_addr = getelementptr [40 x i32]* %Y, i64 0, i64 %tmp_15
  store i32 %result_V_1, i32* %Y_addr, align 4
  %centroidDataCount_1 = add i32 %centroidDataCount_load, 1
  store i32 %centroidDataCount_1, i32* %centroidDataCount, align 4
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %_ifconv, %4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_3)
  %i_2 = add i32 %i_1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %centroidDataCount_load_1 = load i32* %centroidDataCount, align 4
  ret i32 %centroidDataCount_load_1
}

define internal fastcc i32 @CCLabel_firstPass([64 x i32]* %Image_r) {
  %label_1 = alloca i32, align 4
  %setCount_1 = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecMemCore([64 x i32]* %Image_r, [1 x i8]* @p_str1805, [12 x i8]* @p_str1816, [1 x i8]* @p_str1805, i32 -1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  store i32 1, i32* %setCount_1, align 4
  store i32 0, i32* %label_1, align 4
  br label %.preheader

.preheader:                                       ; preds = %0, %._crit_edge
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %i1 = phi i4 [ 0, %0 ], [ %i1_mid2, %._crit_edge ]
  %j2 = phi i4 [ 0, %0 ], [ %j, %._crit_edge ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %6, label %.preheader.preheader

_ifconv:                                          ; preds = %.preheader.preheader
  %tmp4 = xor i4 %j2_mid2, -8
  %tmp4_cast = sext i4 %tmp4 to i7
  %tmp_3 = add i7 %tmp4_cast, %tmp_cast
  %tmp_3_cast = sext i7 %tmp_3 to i32
  %tmp_4 = zext i32 %tmp_3_cast to i64
  %lbImage_addr_1 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_4
  %prevAbove = load i32* %lbImage_addr_1, align 4
  %tmp_5 = icmp eq i32 %prevAbove, 0
  %sel_tmp = or i1 %tmp_7, %tmp_5
  %max_2 = select i1 %sel_tmp, i32 999, i32 %prevAbove
  %tmp_6 = icmp eq i4 %j2_mid2, 0
  %tmp5 = add i4 %j2_mid2, -1
  %tmp5_cast = sext i4 %tmp5 to i7
  %tmp_10 = add i7 %tmp5_cast, %tmp_cast
  %tmp_10_cast = sext i7 %tmp_10 to i32
  %tmp_11 = zext i32 %tmp_10_cast to i64
  %lbImage_addr_2 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_11
  %prevLeft = load i32* %lbImage_addr_2, align 4
  %tmp_12 = icmp eq i32 %prevLeft, 0
  %sel_tmp2 = or i1 %tmp_6, %tmp_12
  %min = select i1 %sel_tmp2, i32 999, i32 %prevLeft
  %tmp_13 = icmp eq i32 %max_2, 999
  %tmp_14 = icmp eq i32 %min, 999
  %or_cond = and i1 %tmp_13, %tmp_14
  br i1 %or_cond, label %1, label %2

; <label>:1                                       ; preds = %_ifconv
  %label_1_load = load i32* %label_1, align 4
  %setCount_1_load = load i32* %setCount_1, align 4
  %label = add i32 %label_1_load, 1
  store i32 %label, i32* %lbImage_addr, align 4
  %tmp_15 = zext i32 %setCount_1_load to i64
  %set_addr = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_15
  store i32 %label, i32* %set_addr, align 4
  %status_addr = getelementptr inbounds [40 x i1]* @status, i64 0, i64 %tmp_15
  store i1 true, i1* %status_addr, align 1
  %Image_addr = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_s
  %Image_load = load i32* %Image_addr, align 4
  %totalIntensity_addr = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_15
  store i32 %Image_load, i32* %totalIntensity_addr, align 4
  %tmp_16 = mul i32 %Image_load, %i1_cast9
  %x_addr = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_15
  store i32 %tmp_16, i32* %x_addr, align 4
  %tmp_17 = mul i32 %Image_load, %j2_cast7
  %y_addr = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_15
  store i32 %tmp_17, i32* %y_addr, align 4
  %setCount = add i32 %setCount_1_load, 1
  store i32 %setCount, i32* %setCount_1, align 4
  store i32 %label, i32* %label_1, align 4
  br label %._crit_edge

; <label>:2                                       ; preds = %_ifconv
  %tmp_18 = icmp ult i32 %max_2, %min
  %temp_4 = select i1 %tmp_18, i32 %max_2, i32 %min
  %tmp_19 = icmp ugt i32 %max_2, %min
  %max_1 = select i1 %tmp_19, i32 %max_2, i32 %min
  %tmp_20 = icmp eq i32 %max_1, 999
  br i1 %tmp_20, label %.preheader11, label %.preheader12

.preheader12:                                     ; preds = %2, %3
  %temp_i = phi i32 [ %temp_3, %3 ], [ %temp_4, %2 ]
  %tmp_i = sext i32 %temp_i to i64
  %set_addr_4 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_i
  %temp_3 = load i32* %set_addr_4, align 4
  %tmp_6_i = icmp eq i32 %temp_i, %temp_3
  br i1 %tmp_6_i, label %find.exit, label %3

; <label>:3                                       ; preds = %.preheader12
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1807, i32 %tmp_1_i) nounwind
  br label %.preheader12

find.exit:                                        ; preds = %.preheader12
  %tmp_23 = zext i32 %max_1 to i64
  %set_addr_2 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_23
  store i32 %temp_i, i32* %set_addr_2, align 4
  br label %5

.preheader11:                                     ; preds = %2, %4
  %temp_i4 = phi i32 [ %temp, %4 ], [ %temp_4, %2 ]
  %tmp_i5 = sext i32 %temp_i4 to i64
  %set_addr_3 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_i5
  %temp = load i32* %set_addr_3, align 4
  %tmp_6_i8 = icmp eq i32 %temp_i4, %temp
  br i1 %tmp_6_i8, label %find.exit10, label %4

; <label>:4                                       ; preds = %.preheader11
  %tmp_1_i9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1807, i32 %tmp_1_i9) nounwind
  br label %.preheader11

find.exit10:                                      ; preds = %.preheader11
  %tmp_22 = zext i32 %temp_4 to i64
  %set_addr_1 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_22
  store i32 %temp_i4, i32* %set_addr_1, align 4
  br label %5

; <label>:5                                       ; preds = %find.exit10, %find.exit
  store i32 %temp_4, i32* %lbImage_addr, align 4
  %Image_addr_1 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_s
  %Image_load_1 = load i32* %Image_addr_1, align 4
  %tmp_24 = zext i32 %temp_4 to i64
  %totalIntensity_addr_1 = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_24
  %totalIntensity_load = load i32* %totalIntensity_addr_1, align 4
  %tmp_25 = add i32 %totalIntensity_load, %Image_load_1
  store i32 %tmp_25, i32* %totalIntensity_addr_1, align 4
  %tmp_26 = mul i32 %Image_load_1, %i1_cast9
  %x_addr_1 = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_24
  %x_load = load i32* %x_addr_1, align 4
  %tmp_27 = add i32 %x_load, %tmp_26
  store i32 %tmp_27, i32* %x_addr_1, align 4
  %tmp_28 = mul i32 %Image_load_1, %j2_cast7
  %y_addr_1 = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_24
  %y_load = load i32* %y_addr_1, align 4
  %tmp_29 = add i32 %y_load, %tmp_28
  store i32 %tmp_29, i32* %y_addr_1, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %1, %.preheader.preheader
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1808, i32 %tmp_21)
  %j = add i4 %j2_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %j2, -8
  %j2_mid2 = select i1 %exitcond4, i4 0, i4 %j2
  %i2 = add i4 %i1, 1
  %i1_mid2 = select i1 %exitcond4, i4 %i2, i4 %i1
  %i1_cast9 = zext i4 %i1_mid2 to i32
  %tmp_32 = trunc i4 %i1_mid2 to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_32, i3 0)
  %tmp_cast = zext i6 %tmp to i7
  %tmp_7 = icmp eq i4 %i1_mid2, 0
  %j2_cast7 = zext i4 %j2_mid2 to i32
  %j2_cast6 = zext i4 %j2_mid2 to i6
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %tmp_9 = add i6 %j2_cast6, %tmp
  %tmp_s = zext i6 %tmp_9 to i64
  %lbImage_addr = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_s
  %lbImage_load = load i32* %lbImage_addr, align 4
  %tmp_1 = icmp eq i32 %lbImage_load, 0
  br i1 %tmp_1, label %._crit_edge, label %_ifconv

; <label>:6                                       ; preds = %.preheader
  %setCount_1_load_1 = load i32* %setCount_1, align 4
  ret i32 %setCount_1_load_1
}

define internal fastcc void @CCLabel_preProcess([64 x i32]* %Image_r) {
  call void (...)* @_ssdm_op_SpecMemCore([64 x i32]* %Image_r, [1 x i8]* @p_str1805, [12 x i8]* @p_str1816, [1 x i8]* @p_str1805, i32 -1, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str1815, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1814, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond1 = icmp eq i4 %i, -8
  %i_1 = add i4 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1804)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1805) nounwind
  %tmp_33 = trunc i4 %i to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_33, i3 0)
  %tmp_3 = zext i6 %tmp to i64
  %Image_addr = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3
  %Image_load = load i32* %Image_addr, align 4
  %tmp_4 = icmp ult i32 %Image_load, 70
  %lbImage_addr = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3
  %p_cast = select i1 %tmp_4, i32 0, i32 1
  store i32 %p_cast, i32* %lbImage_addr, align 16
  %tmp_2_s = or i6 %tmp, 1
  %tmp_3_1 = zext i6 %tmp_2_s to i64
  %Image_addr_2 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_1
  %Image_load_1 = load i32* %Image_addr_2, align 4
  %tmp_4_1 = icmp ult i32 %Image_load_1, 70
  %lbImage_addr_8 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_1
  %p_8_cast = select i1 %tmp_4_1, i32 0, i32 1
  store i32 %p_8_cast, i32* %lbImage_addr_8, align 4
  %tmp_2_1 = or i6 %tmp, 2
  %tmp_3_2 = zext i6 %tmp_2_1 to i64
  %Image_addr_3 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_2
  %Image_load_2 = load i32* %Image_addr_3, align 4
  %tmp_4_2 = icmp ult i32 %Image_load_2, 70
  %lbImage_addr_2 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_2
  %p_9_cast = select i1 %tmp_4_2, i32 0, i32 1
  store i32 %p_9_cast, i32* %lbImage_addr_2, align 8
  %tmp_2_2 = or i6 %tmp, 3
  %tmp_3_3 = zext i6 %tmp_2_2 to i64
  %Image_addr_4 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_3
  %Image_load_3 = load i32* %Image_addr_4, align 4
  %tmp_4_3 = icmp ult i32 %Image_load_3, 70
  %lbImage_addr_3 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_3
  %p_10_cast = select i1 %tmp_4_3, i32 0, i32 1
  store i32 %p_10_cast, i32* %lbImage_addr_3, align 4
  %tmp_2_3 = or i6 %tmp, 4
  %tmp_3_4 = zext i6 %tmp_2_3 to i64
  %Image_addr_5 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_4
  %Image_load_4 = load i32* %Image_addr_5, align 4
  %tmp_4_4 = icmp ult i32 %Image_load_4, 70
  %lbImage_addr_4 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_4
  %p_11_cast = select i1 %tmp_4_4, i32 0, i32 1
  store i32 %p_11_cast, i32* %lbImage_addr_4, align 16
  %tmp_2_4 = or i6 %tmp, 5
  %tmp_3_5 = zext i6 %tmp_2_4 to i64
  %Image_addr_6 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_5
  %Image_load_5 = load i32* %Image_addr_6, align 4
  %tmp_4_5 = icmp ult i32 %Image_load_5, 70
  %lbImage_addr_5 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_5
  %p_12_cast = select i1 %tmp_4_5, i32 0, i32 1
  store i32 %p_12_cast, i32* %lbImage_addr_5, align 4
  %tmp_2_5 = or i6 %tmp, 6
  %tmp_3_6 = zext i6 %tmp_2_5 to i64
  %Image_addr_7 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_6
  %Image_load_6 = load i32* %Image_addr_7, align 4
  %tmp_4_6 = icmp ult i32 %Image_load_6, 70
  %lbImage_addr_6 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_6
  %p_13_cast = select i1 %tmp_4_6, i32 0, i32 1
  store i32 %p_13_cast, i32* %lbImage_addr_6, align 8
  %tmp_2_6 = or i6 %tmp, 7
  %tmp_3_7 = zext i6 %tmp_2_6 to i64
  %Image_addr_8 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3_7
  %Image_load_7 = load i32* %Image_addr_8, align 4
  %tmp_4_7 = icmp ult i32 %Image_load_7, 70
  %lbImage_addr_7 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3_7
  %p_14_cast = select i1 %tmp_4_7, i32 0, i32 1
  store i32 %p_14_cast, i32* %lbImage_addr_7, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1804, i32 %tmp_s)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_14 = trunc i64 %empty to i11
  ret i11 %empty_14
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_15 = trunc i64 %empty to i6
  ret i6 %empty_15
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_16 = zext i52 %1 to i53
  %empty_17 = shl i53 %empty, 52
  %empty_18 = or i53 %empty_17, %empty_16
  ret i53 %empty_18
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_19 = zext i63 %1 to i64
  %empty_20 = shl i64 %empty, 63
  %empty_21 = or i64 %empty_20, %empty_19
  ret i64 %empty_21
}

define weak i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_22 = trunc i64 %empty to i12
  ret i12 %empty_22
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i12.i52(i12, i52) nounwind readnone {
entry:
  %empty = zext i12 %0 to i64
  %empty_23 = zext i52 %1 to i64
  %empty_24 = shl i64 %empty, 52
  %empty_25 = or i64 %empty_24, %empty_23
  ret i64 %empty_25
}

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_26 = trunc i136 %empty to i32
  ret i32 %empty_26
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_27 = zext i3 %1 to i6
  %empty_28 = shl i6 %empty, 3
  %empty_29 = or i6 %empty_28, %empty_27
  ret i6 %empty_29
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_30 = shl i64 1, %empty
  %empty_31 = and i64 %0, %empty_30
  %empty_32 = icmp ne i64 %empty_31, 0
  ret i1 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_33 = shl i12 1, %empty
  %empty_34 = and i12 %0, %empty_33
  %empty_35 = icmp ne i12 %empty_34, 0
  ret i1 %empty_35
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_36 = shl i53 1, %empty
  %empty_37 = and i53 %0, %empty_36
  %empty_38 = icmp ne i53 %empty_37, 0
  ret i1 %empty_38
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7, !14, !19, !24, !29, !34}

!0 = metadata !{metadata !1, [64 x i32]* @lbImage}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"lbImage", metadata !5, metadata !"unsigned int", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 63, i32 1}
!7 = metadata !{metadata !8, [40 x i32]* @set}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"set", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 39, i32 1}
!14 = metadata !{metadata !15, [40 x i1]* @status}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"status", metadata !12, metadata !"bool", i32 0, i32 0}
!19 = metadata !{metadata !20, [40 x i32]* @totalIntensity}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"totalIntensity", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!24 = metadata !{metadata !25, [40 x i32]* @x_r}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"x", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!29 = metadata !{metadata !30, [40 x i32]* @y_r}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"y", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!34 = metadata !{metadata !35, [3 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 2, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"Image", metadata !5, metadata !"unsigned int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"X", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"Y", metadata !12, metadata !"unsigned int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"return", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, i32 0}
