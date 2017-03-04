; ModuleID = 'D:/Dropbox/DangKhoa/CEE_Cache/StarTrackingProject/ConnectedComponentLabeling_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@lbImage = global [64 x i32] zeroinitializer, align 16
@set = global [40 x i32] zeroinitializer, align 16
@status = global [40 x i1] zeroinitializer, align 16
@totalIntensity = global [40 x i32] zeroinitializer, align 16
@x_r = global [40 x i32] zeroinitializer, align 16
@y_r = global [40 x i32] zeroinitializer, align 16
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str6 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"CRTLS\00", align 1
@p_str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a27]
@str = internal constant [8 x i8] c"CCLabel\00"

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

declare void @_GLOBAL__I_a27() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define i32 @CCLabel([64 x i32]* %Image_r, [40 x i32]* %X, [40 x i32]* %Y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %Image_r) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %X) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([40 x i32]* %Y) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str6, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %X, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %Y, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @CCLabel_preProcess([64 x i32]* %Image_r) nounwind
  %setCount = call fastcc i32 @CCLabel_firstPass([64 x i32]* %Image_r) nounwind
  %centroidDataCount = call fastcc i32 @CCLabel_calCentroid(i32 %setCount, [40 x i32]* %X, [40 x i32]* %Y) nounwind
  ret i32 %centroidDataCount
}

define internal fastcc i32 @CCLabel_calCentroid(i32 %setCount, [40 x i32]* %X, [40 x i32]* %Y) {
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %Y, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([40 x i32]* %X, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
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
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i32 %temp_1 to i64
  %set_addr = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_s
  %set_load = load i32* %set_addr, align 4
  %tmp_7 = icmp eq i32 %set_load, %temp_1
  br i1 %tmp_7, label %._crit_edge, label %.preheader23

.preheader23:                                     ; preds = %2, %3
  %root = phi i32 [ %temp, %3 ], [ %temp_1, %2 ]
  %tmp_i = sext i32 %root to i64
  %set_addr_1 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_i
  %temp = load i32* %set_addr_1, align 4
  %tmp_6_i = icmp eq i32 %root, %temp
  br i1 %tmp_6_i, label %find.exit, label %3

; <label>:3                                       ; preds = %.preheader23
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_1_i) nounwind
  br label %.preheader23

find.exit:                                        ; preds = %.preheader23
  %totalIntensity_addr = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_s
  %totalIntensity_load = load i32* %totalIntensity_addr, align 4
  %tmp_9 = zext i32 %root to i64
  %totalIntensity_addr_1 = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_9
  %totalIntensity_load_1 = load i32* %totalIntensity_addr_1, align 4
  %tmp_4 = add i32 %totalIntensity_load_1, %totalIntensity_load
  store i32 %tmp_4, i32* %totalIntensity_addr_1, align 4
  %x_addr = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_s
  %x_load = load i32* %x_addr, align 4
  %x_addr_1 = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_9
  %x_load_1 = load i32* %x_addr_1, align 4
  %tmp_5 = add i32 %x_load_1, %x_load
  store i32 %tmp_5, i32* %x_addr_1, align 4
  %y_addr = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_s
  %y_load = load i32* %y_addr, align 4
  %y_addr_1 = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_9
  %y_load_1 = load i32* %y_addr_1, align 4
  %tmp_6 = add i32 %y_load_1, %y_load
  store i32 %tmp_6, i32* %y_addr_1, align 4
  %status_addr = getelementptr inbounds [40 x i1]* @status, i64 0, i64 %tmp_s
  store i1 false, i1* %status_addr, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %find.exit, %2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_2)
  %i = add i32 %temp_1, 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1
  %i_1 = phi i32 [ %i_2, %._crit_edge1 ], [ 1, %.preheader.preheader ]
  %tmp_8 = icmp ult i32 %i_1, %setCount_read
  br i1 %tmp_8, label %4, label %5

; <label>:4                                       ; preds = %.preheader
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_1 = zext i32 %i_1 to i64
  %status_addr_1 = getelementptr inbounds [40 x i1]* @status, i64 0, i64 %tmp_1
  %status_load = load i1* %status_addr_1, align 1
  br i1 %status_load, label %_ifconv, label %._crit_edge1

_ifconv:                                          ; preds = %4
  %centroidDataCount_load = load i32* %centroidDataCount, align 4
  %x_addr_2 = getelementptr inbounds [40 x i32]* @x_r, i64 0, i64 %tmp_1
  %x_load_2 = load i32* %x_addr_2, align 4
  %tmp_10 = uitofp i32 %x_load_2 to float
  %totalIntensity_addr_2 = getelementptr inbounds [40 x i32]* @totalIntensity, i64 0, i64 %tmp_1
  %totalIntensity_load_2 = load i32* %totalIntensity_addr_2, align 4
  %tmp_11 = uitofp i32 %totalIntensity_load_2 to float
  %x_assign = fdiv float %tmp_10, %tmp_11
  %p_Val2_s = bitcast float %x_assign to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_s to i78
  %tmp_i_i_i_cast2 = zext i8 %loc_V to i9
  %sh_assign = add i9 %tmp_i_i_i_cast2, -127
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_i_cast = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_2_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_3_i_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_2_i_i
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_12 = zext i1 %tmp_18 to i32
  %tmp_15 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %result_V = select i1 %isNeg, i32 %tmp_12, i32 %tmp_15
  %tmp_13 = zext i32 %centroidDataCount_load to i64
  %X_addr = getelementptr [40 x i32]* %X, i64 0, i64 %tmp_13
  store i32 %result_V, i32* %X_addr, align 4
  %y_addr_2 = getelementptr inbounds [40 x i32]* @y_r, i64 0, i64 %tmp_1
  %y_load_2 = load i32* %y_addr_2, align 4
  %tmp_14 = uitofp i32 %y_load_2 to float
  %x_assign_1 = fdiv float %tmp_14, %tmp_11
  %p_Val2_4 = bitcast float %x_assign_1 to i32
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_4, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_4 to i23
  %p_Result_4 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_i_i9 = zext i24 %p_Result_4 to i78
  %tmp_i_i_i1_cast1 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 %tmp_i_i_i1_cast1, -127
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_1_i_i1 = sub i8 127, %loc_V_2
  %tmp_1_i_i1_cast = sext i8 %tmp_1_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_1_i_i1_cast, i9 %sh_assign_2
  %sh_assign_3_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_3_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_2_i_i1 = zext i32 %sh_assign_3_cast to i78
  %tmp_3_i_i1 = lshr i24 %p_Result_4, %sh_assign_3_cast_cast
  %tmp_5_i_i1 = shl i78 %tmp_i_i9, %tmp_2_i_i1
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i1, i32 23)
  %tmp_16 = zext i1 %tmp_23 to i32
  %tmp_17 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i1, i32 23, i32 54)
  %result_V_1 = select i1 %isNeg_1, i32 %tmp_16, i32 %tmp_17
  %Y_addr = getelementptr [40 x i32]* %Y, i64 0, i64 %tmp_13
  store i32 %result_V_1, i32* %Y_addr, align 4
  %centroidDataCount_1 = add i32 %centroidDataCount_load, 1
  store i32 %centroidDataCount_1, i32* %centroidDataCount, align 4
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %_ifconv, %4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3)
  %i_2 = add i32 %i_1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %centroidDataCount_load_1 = load i32* %centroidDataCount, align 4
  ret i32 %centroidDataCount_load_1
}

define internal fastcc i32 @CCLabel_firstPass([64 x i32]* %Image_r) {
  %label_1 = alloca i32, align 4
  %setCount_1 = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
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
  %lbImage_load_1 = load i32* %lbImage_addr_1, align 4
  %tmp_5 = icmp eq i32 %lbImage_load_1, 0
  %sel_tmp = or i1 %tmp_7, %tmp_5
  %prevAbove = select i1 %sel_tmp, i32 999, i32 %lbImage_load_1
  %tmp_6 = icmp eq i4 %j2_mid2, 0
  %tmp5 = add i4 %j2_mid2, -1
  %tmp5_cast = sext i4 %tmp5 to i7
  %tmp_10 = add i7 %tmp5_cast, %tmp_cast
  %tmp_10_cast = sext i7 %tmp_10 to i32
  %tmp_11 = zext i32 %tmp_10_cast to i64
  %lbImage_addr_2 = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_11
  %lbImage_load_2 = load i32* %lbImage_addr_2, align 4
  %tmp_12 = icmp eq i32 %lbImage_load_2, 0
  %sel_tmp2 = or i1 %tmp_6, %tmp_12
  %prevLeft = select i1 %sel_tmp2, i32 999, i32 %lbImage_load_2
  %tmp_13 = icmp eq i32 %prevAbove, 999
  %tmp_14 = icmp eq i32 %prevLeft, 999
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
  %tmp_18 = icmp ult i32 %prevAbove, %prevLeft
  %temp_4 = select i1 %tmp_18, i32 %prevAbove, i32 %prevLeft
  %tmp_19 = icmp ugt i32 %prevAbove, %prevLeft
  %max = select i1 %tmp_19, i32 %prevAbove, i32 %prevLeft
  %tmp_20 = icmp eq i32 %max, 999
  br i1 %tmp_20, label %.preheader11, label %.preheader12

.preheader12:                                     ; preds = %2, %3
  %temp_i = phi i32 [ %temp_3, %3 ], [ %temp_4, %2 ]
  %tmp_i = sext i32 %temp_i to i64
  %set_addr_4 = getelementptr inbounds [40 x i32]* @set, i64 0, i64 %tmp_i
  %temp_3 = load i32* %set_addr_4, align 4
  %tmp_6_i = icmp eq i32 %temp_i, %temp_3
  br i1 %tmp_6_i, label %find.exit, label %3

; <label>:3                                       ; preds = %.preheader12
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_1_i) nounwind
  br label %.preheader12

find.exit:                                        ; preds = %.preheader12
  %tmp_23 = zext i32 %max to i64
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
  %tmp_1_i9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_1_i9) nounwind
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
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_21)
  %j = add i4 %j2_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %j2, -8
  %j2_mid2 = select i1 %exitcond4, i4 0, i4 %j2
  %i2 = add i4 %i1, 1
  %i1_mid2 = select i1 %exitcond4, i4 %i2, i4 %i1
  %i1_cast9 = zext i4 %i1_mid2 to i32
  %tmp_30 = trunc i4 %i1_mid2 to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_30, i3 0)
  %tmp_cast = zext i6 %tmp to i7
  %tmp_7 = icmp eq i4 %i1_mid2, 0
  %j2_cast7 = zext i4 %j2_mid2 to i32
  %j2_cast6 = zext i4 %j2_mid2 to i6
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
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
  call void (...)* @_ssdm_op_SpecInterface([64 x i32]* %Image_r, [5 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str7, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %.preheader ]
  %exitcond1 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_1 = add i4 %i, 1
  br i1 %exitcond1, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_31 = trunc i4 %i to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_31, i3 0)
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %j = phi i4 [ %j_1, %1 ], [ 0, %.preheader.preheader ]
  %j_cast1 = zext i4 %j to i6
  %exitcond = icmp eq i4 %j, -8
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_1 = add i4 %j, 1
  br i1 %exitcond, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_2 = add i6 %j_cast1, %tmp
  %tmp_3 = zext i6 %tmp_2 to i64
  %Image_addr = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_3
  %Image_load = load i32* %Image_addr, align 4
  %tmp_4 = icmp ult i32 %Image_load, 70
  %lbImage_addr = getelementptr inbounds [64 x i32]* @lbImage, i64 0, i64 %tmp_3
  %p_cast = select i1 %tmp_4, i32 0, i32 1
  store i32 %p_cast, i32* %lbImage_addr, align 4
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i8
  ret i8 %empty_12
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_13 = zext i23 %1 to i24
  %empty_14 = shl i24 %empty, 23
  %empty_15 = or i24 %empty_14, %empty_13
  ret i24 %empty_15
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_16 = trunc i78 %empty to i32
  ret i32 %empty_16
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_17 = zext i3 %1 to i6
  %empty_18 = shl i6 %empty, 3
  %empty_19 = or i6 %empty_18, %empty_17
  ret i6 %empty_19
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_20 = shl i9 1, %empty
  %empty_21 = and i9 %0, %empty_20
  %empty_22 = icmp ne i9 %empty_21, 0
  ret i1 %empty_22
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_23 = shl i24 1, %empty
  %empty_24 = and i24 %0, %empty_23
  %empty_25 = icmp ne i24 %empty_24, 0
  ret i1 %empty_25
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

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
!34 = metadata !{metadata !35, [2 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 1, i32 1}
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
