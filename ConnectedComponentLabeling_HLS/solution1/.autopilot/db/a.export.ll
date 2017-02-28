; ModuleID = 'D:/Dropbox/DangKhoa/CEE_Cache/StarTrackingProject/ConnectedComponentLabeling_HLS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [8 x i8] c"CCLabel\00"

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define i32 @CCLabel([64 x i32]* %Image_r, [64 x i32]* %lbImage, [30 x i1]* %starData_status, [30 x i32]* %starData_totalIntensity, [30 x i32]* %starData_x, [30 x i32]* %starData_y, [30 x i32]* %set, [30 x i32]* %centroidData_root, [30 x float]* %centroidData_x, [30 x float]* %centroidData_y) {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %Image_r), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %lbImage), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i1]* %starData_status), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i32]* %starData_totalIntensity), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i32]* %starData_x), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i32]* %starData_y), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i32]* %set), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([30 x i32]* %centroidData_root), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([30 x float]* %centroidData_x), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([30 x float]* %centroidData_y), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call fastcc void @CCLabel_preProcess([64 x i32]* %Image_r, [64 x i32]* %lbImage)
  %setCount = call fastcc i32 @CCLabel_firstPass([64 x i32]* nocapture %Image_r, [64 x i32]* nocapture %lbImage, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %set)
  %centroidDataCount = call fastcc i32 @CCLabel_calCentroid([30 x i32]* %set, [30 x i1]* %starData_status, [30 x i32]* %starData_totalIntensity, [30 x i32]* %starData_x, [30 x i32]* %starData_y, [30 x i32]* %centroidData_root, [30 x float]* %centroidData_x, [30 x float]* %centroidData_y, i32 %setCount)
  ret i32 %centroidDataCount
}

define internal fastcc i32 @CCLabel_calCentroid([30 x i32]* nocapture %set, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %centroidData_root, [30 x float]* nocapture %centroidData_x, [30 x float]* nocapture %centroidData_y, i32 %setCount) {
  %setCount_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %setCount)
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %temp_1 = phi i32 [ 1, %0 ], [ %i_1, %._crit_edge ]
  %tmp = icmp ult i32 %temp_1, %setCount_read
  br i1 %tmp, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %centroidDataCount = alloca i32, align 4
  store i32 0, i32* %centroidDataCount, align 4
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_s = zext i32 %temp_1 to i64
  %set_addr = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_s
  %set_load = load i32* %set_addr, align 4
  %tmp_2 = icmp eq i32 %set_load, %temp_1
  br i1 %tmp_2, label %._crit_edge, label %.preheader37

.preheader37:                                     ; preds = %2, %.preheader37
  %root = phi i32 [ %temp, %.preheader37 ], [ %temp_1, %2 ]
  %tmp_i = zext i32 %root to i64
  %set_addr_1 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i
  %temp = load i32* %set_addr_1, align 4
  %tmp_1_i = icmp eq i32 %root, %temp
  br i1 %tmp_1_i, label %find.exit, label %.preheader37

find.exit:                                        ; preds = %.preheader37
  %starData_totalIntensity_addr = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_s
  %starData_totalIntensity_load = load i32* %starData_totalIntensity_addr, align 4
  %starData_totalIntensity_addr_1 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_i
  %starData_totalIntensity_load_1 = load i32* %starData_totalIntensity_addr_1, align 4
  %tmp_5 = add i32 %starData_totalIntensity_load_1, %starData_totalIntensity_load
  store i32 %tmp_5, i32* %starData_totalIntensity_addr_1, align 4
  %starData_x_addr = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_s
  %starData_x_load = load i32* %starData_x_addr, align 4
  %starData_x_addr_1 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_i
  %starData_x_load_1 = load i32* %starData_x_addr_1, align 4
  %tmp_6 = add i32 %starData_x_load_1, %starData_x_load
  store i32 %tmp_6, i32* %starData_x_addr_1, align 4
  %starData_y_addr = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_s
  %starData_y_load = load i32* %starData_y_addr, align 4
  %starData_y_addr_1 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_i
  %starData_y_load_1 = load i32* %starData_y_addr_1, align 4
  %tmp_7 = add i32 %starData_y_load_1, %starData_y_load
  store i32 %tmp_7, i32* %starData_y_addr_1, align 4
  %starData_status_addr = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_s
  store i1 false, i1* %starData_status_addr, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %find.exit, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_1)
  %i_1 = add i32 %temp_1, 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1
  %temp_root = phi i32 [ %i, %._crit_edge1 ], [ 1, %.preheader.preheader ]
  %tmp_3 = icmp ult i32 %temp_root, %setCount_read
  br i1 %tmp_3, label %3, label %5

; <label>:3                                       ; preds = %.preheader
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_9 = zext i32 %temp_root to i64
  %starData_status_addr_1 = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_9
  %starData_status_load = load i1* %starData_status_addr_1, align 1
  br i1 %starData_status_load, label %4, label %._crit_edge1

; <label>:4                                       ; preds = %3
  %centroidDataCount_load = load i32* %centroidDataCount, align 4
  %starData_x_addr_2 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_9
  %starData_x_load_2 = load i32* %starData_x_addr_2, align 4
  %tmp_4 = uitofp i32 %starData_x_load_2 to float
  %starData_totalIntensity_addr_2 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_9
  %starData_totalIntensity_load_2 = load i32* %starData_totalIntensity_addr_2, align 4
  %tmp_10 = uitofp i32 %starData_totalIntensity_load_2 to float
  %temp_x = fdiv float %tmp_4, %tmp_10
  %starData_y_addr_2 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_9
  %starData_y_load_2 = load i32* %starData_y_addr_2, align 4
  %tmp_11 = uitofp i32 %starData_y_load_2 to float
  %temp_y = fdiv float %tmp_11, %tmp_10
  %tmp_12 = zext i32 %centroidDataCount_load to i64
  %centroidData_root_addr = getelementptr [30 x i32]* %centroidData_root, i64 0, i64 %tmp_12
  store i32 %temp_root, i32* %centroidData_root_addr, align 4
  %centroidData_x_addr = getelementptr [30 x float]* %centroidData_x, i64 0, i64 %tmp_12
  store float %temp_x, float* %centroidData_x_addr, align 4
  %centroidData_y_addr = getelementptr [30 x float]* %centroidData_y, i64 0, i64 %tmp_12
  store float %temp_y, float* %centroidData_y_addr, align 4
  %centroidDataCount_1 = add i32 %centroidDataCount_load, 1
  store i32 %centroidDataCount_1, i32* %centroidDataCount, align 4
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %4, %3
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_8)
  %i = add i32 %temp_root, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %centroidDataCount_load_1 = load i32* %centroidDataCount, align 4
  ret i32 %centroidDataCount_load_1
}

define internal fastcc i32 @CCLabel_firstPass([64 x i32]* nocapture %Image_r, [64 x i32]* nocapture %lbImage, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %set) {
  %setCount_1 = alloca i32, align 4
  %label_1 = alloca i32, align 4
  store i32 0, i32* %label_1, align 4
  store i32 1, i32* %setCount_1, align 4
  br label %.preheader

.preheader:                                       ; preds = %0, %._crit_edge
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %i = phi i4 [ 0, %0 ], [ %i_mid2, %._crit_edge ]
  %j = phi i4 [ 0, %0 ], [ %j_1, %._crit_edge ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %5, label %.preheader.preheader

_ifconv:                                          ; preds = %.preheader.preheader
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_7, i3 0)
  %p_addr2_cast = sext i7 %tmp_8 to i8
  %p_addr3 = add i8 %p_addr2_cast, %j_cast4_cast
  %tmp_16 = sext i8 %p_addr3 to i64
  %lbImage_addr_1 = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_16
  %lbImage_load_1 = load i32* %lbImage_addr_1, align 4
  %tmp_2 = icmp eq i32 %lbImage_load_1, 0
  %sel_tmp = or i1 %tmp_6, %tmp_2
  %prevAbove = select i1 %sel_tmp, i32 999, i32 %lbImage_load_1
  %tmp_3 = icmp eq i4 %j_mid2, 0
  %tmp_4 = add i4 %j_mid2, -1
  %tmp_4_cast_cast = sext i4 %tmp_4 to i9
  %p_addr8 = add i9 %p_addr_cast1, %tmp_4_cast_cast
  %tmp_25 = sext i9 %p_addr8 to i64
  %lbImage_addr_2 = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_25
  %lbImage_load_2 = load i32* %lbImage_addr_2, align 4
  %tmp_9 = icmp eq i32 %lbImage_load_2, 0
  %sel_tmp2 = or i1 %tmp_3, %tmp_9
  %prevLeft = select i1 %sel_tmp2, i32 999, i32 %lbImage_load_2
  %tmp_10 = icmp eq i32 %prevAbove, 999
  %tmp_11 = icmp eq i32 %prevLeft, 999
  %or_cond = and i1 %tmp_10, %tmp_11
  br i1 %or_cond, label %1, label %2

; <label>:1                                       ; preds = %_ifconv
  %setCount_1_load = load i32* %setCount_1, align 4
  %label_1_load = load i32* %label_1, align 4
  %label = add i32 %label_1_load, 1
  store i32 %label, i32* %lbImage_addr, align 4
  %tmp_12 = zext i32 %setCount_1_load to i64
  %set_addr = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_12
  store i32 %label, i32* %set_addr, align 4
  %Image_addr = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_5
  %temp_totalIntensity = load i32* %Image_addr, align 4
  %temp_x = mul i32 %temp_totalIntensity, %i_cast5
  %temp_y = mul i32 %temp_totalIntensity, %j_cast4
  %starData_status_addr = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_12
  store i1 true, i1* %starData_status_addr, align 1
  %starData_totalIntensity_addr = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_12
  store i32 %temp_totalIntensity, i32* %starData_totalIntensity_addr, align 4
  %starData_x_addr21 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_12
  store i32 %temp_x, i32* %starData_x_addr21, align 4
  %starData_y_addr = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_12
  store i32 %temp_y, i32* %starData_y_addr, align 4
  %setCount = add i32 %setCount_1_load, 1
  store i32 %label, i32* %label_1, align 4
  store i32 %setCount, i32* %setCount_1, align 4
  br label %4

; <label>:2                                       ; preds = %_ifconv
  %tmp_13 = icmp ult i32 %prevAbove, %prevLeft
  %temp_4 = select i1 %tmp_13, i32 %prevAbove, i32 %prevLeft
  %tmp_14 = icmp ugt i32 %prevAbove, %prevLeft
  %max = select i1 %tmp_14, i32 %prevAbove, i32 %prevLeft
  %tmp_15 = icmp eq i32 %max, 999
  br i1 %tmp_15, label %.preheader42, label %.preheader43

.preheader43:                                     ; preds = %2, %.preheader43
  %temp_i = phi i32 [ %temp_3, %.preheader43 ], [ %temp_4, %2 ]
  %tmp_i = zext i32 %temp_i to i64
  %set_addr_4 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i
  %temp_3 = load i32* %set_addr_4, align 4
  %tmp_1_i = icmp eq i32 %temp_i, %temp_3
  br i1 %tmp_1_i, label %find.exit, label %.preheader43

find.exit:                                        ; preds = %.preheader43
  %tmp_18 = zext i32 %max to i64
  %set_addr_2 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_18
  store i32 %temp_i, i32* %set_addr_2, align 4
  br label %3

.preheader42:                                     ; preds = %2, %.preheader42
  %temp_i1 = phi i32 [ %temp, %.preheader42 ], [ %temp_4, %2 ]
  %tmp_i1 = zext i32 %temp_i1 to i64
  %set_addr_3 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i1
  %temp = load i32* %set_addr_3, align 4
  %tmp_1_i1 = icmp eq i32 %temp_i1, %temp
  br i1 %tmp_1_i1, label %find.exit41, label %.preheader42

find.exit41:                                      ; preds = %.preheader42
  %tmp_17 = zext i32 %temp_4 to i64
  %set_addr_1 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_17
  store i32 %temp_i1, i32* %set_addr_1, align 4
  br label %3

; <label>:3                                       ; preds = %find.exit41, %find.exit
  store i32 %temp_4, i32* %lbImage_addr, align 4
  %Image_addr_1 = getelementptr [64 x i32]* %Image_r, i64 0, i64 %tmp_5
  %Image_load = load i32* %Image_addr_1, align 4
  %tmp_19 = zext i32 %temp_4 to i64
  %starData_totalIntensity_addr_3 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_19
  %starData_totalIntensity_load = load i32* %starData_totalIntensity_addr_3, align 4
  %tmp_20 = add i32 %starData_totalIntensity_load, %Image_load
  store i32 %tmp_20, i32* %starData_totalIntensity_addr_3, align 4
  %tmp_21 = mul i32 %Image_load, %i_cast5
  %starData_x_addr = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_19
  %starData_x_load = load i32* %starData_x_addr, align 4
  %tmp_22 = add i32 %starData_x_load, %tmp_21
  store i32 %tmp_22, i32* %starData_x_addr, align 4
  %tmp_23 = mul i32 %Image_load, %j_cast4
  %starData_y_addr_3 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_19
  %starData_y_load = load i32* %starData_y_addr_3, align 4
  %tmp_24 = add i32 %starData_y_load, %tmp_23
  store i32 %tmp_24, i32* %starData_y_addr_3, align 4
  br label %4

; <label>:4                                       ; preds = %3, %1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_s)
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %.preheader.preheader
  %j_1 = add i4 %j_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %j, -8
  %j_mid2 = select i1 %exitcond, i4 0, i4 %j
  %i_s = add i4 %i, 1
  %i_mid2 = select i1 %exitcond, i4 %i_s, i4 %i
  %i_cast5 = zext i4 %i_mid2 to i32
  %tmp_6 = icmp eq i4 %i_mid2, 0
  %tmp_7 = add i4 %i_mid2, -1
  %j_cast4 = zext i4 %j_mid2 to i32
  %j_cast4_cast = zext i4 %j_mid2 to i8
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_mid2, i3 0)
  %p_addr_cast1 = zext i7 %tmp to i9
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %p_addr_cast, %j_cast4_cast
  %tmp_5 = zext i8 %p_addr1 to i64
  %lbImage_addr = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_5
  %lbImage_load = load i32* %lbImage_addr, align 4
  %tmp_1 = icmp eq i32 %lbImage_load, 0
  br i1 %tmp_1, label %._crit_edge, label %_ifconv

; <label>:5                                       ; preds = %.preheader
  %setCount_1_load_1 = load i32* %setCount_1, align 4
  ret i32 %setCount_1_load_1
}

define internal fastcc void @CCLabel_preProcess([64 x i32]* %Image_r, [64 x i32]* %lbImage) {
.preheader.preheader.0:
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %Image_addr = getelementptr [64 x i32]* %Image_r, i64 0, i64 0
  %Image_load = load i32* %Image_addr, align 4
  %tmp_4 = icmp ult i32 %Image_load, 70
  %lbImage_addr = getelementptr [64 x i32]* %lbImage, i64 0, i64 0
  %p_cast = select i1 %tmp_4, i32 0, i32 1
  store i32 %p_cast, i32* %lbImage_addr, align 4
  %Image_addr_2 = getelementptr [64 x i32]* %Image_r, i64 0, i64 1
  %Image_load_2 = load i32* %Image_addr_2, align 4
  %tmp_4_0_1 = icmp ult i32 %Image_load_2, 70
  %lbImage_addr_3 = getelementptr [64 x i32]* %lbImage, i64 0, i64 1
  %p_423_cast = select i1 %tmp_4_0_1, i32 0, i32 1
  store i32 %p_423_cast, i32* %lbImage_addr_3, align 4
  %Image_addr_3 = getelementptr [64 x i32]* %Image_r, i64 0, i64 2
  %Image_load_3 = load i32* %Image_addr_3, align 4
  %tmp_4_0_2 = icmp ult i32 %Image_load_3, 70
  %lbImage_addr_4 = getelementptr [64 x i32]* %lbImage, i64 0, i64 2
  %p_424_cast = select i1 %tmp_4_0_2, i32 0, i32 1
  store i32 %p_424_cast, i32* %lbImage_addr_4, align 4
  %Image_addr_4 = getelementptr [64 x i32]* %Image_r, i64 0, i64 3
  %Image_load_4 = load i32* %Image_addr_4, align 4
  %tmp_4_0_3 = icmp ult i32 %Image_load_4, 70
  %lbImage_addr_5 = getelementptr [64 x i32]* %lbImage, i64 0, i64 3
  %p_425_cast = select i1 %tmp_4_0_3, i32 0, i32 1
  store i32 %p_425_cast, i32* %lbImage_addr_5, align 4
  %Image_addr_5 = getelementptr [64 x i32]* %Image_r, i64 0, i64 4
  %Image_load_5 = load i32* %Image_addr_5, align 4
  %tmp_4_0_4 = icmp ult i32 %Image_load_5, 70
  %lbImage_addr_6 = getelementptr [64 x i32]* %lbImage, i64 0, i64 4
  %p_426_cast = select i1 %tmp_4_0_4, i32 0, i32 1
  store i32 %p_426_cast, i32* %lbImage_addr_6, align 4
  %Image_addr_6 = getelementptr [64 x i32]* %Image_r, i64 0, i64 5
  %Image_load_6 = load i32* %Image_addr_6, align 4
  %tmp_4_0_5 = icmp ult i32 %Image_load_6, 70
  %lbImage_addr_7 = getelementptr [64 x i32]* %lbImage, i64 0, i64 5
  %p_427_cast = select i1 %tmp_4_0_5, i32 0, i32 1
  store i32 %p_427_cast, i32* %lbImage_addr_7, align 4
  %Image_addr_7 = getelementptr [64 x i32]* %Image_r, i64 0, i64 6
  %Image_load_7 = load i32* %Image_addr_7, align 4
  %tmp_4_0_6 = icmp ult i32 %Image_load_7, 70
  %lbImage_addr_8 = getelementptr [64 x i32]* %lbImage, i64 0, i64 6
  %p_428_cast = select i1 %tmp_4_0_6, i32 0, i32 1
  store i32 %p_428_cast, i32* %lbImage_addr_8, align 4
  %Image_addr_8 = getelementptr [64 x i32]* %Image_r, i64 0, i64 7
  %Image_load_8 = load i32* %Image_addr_8, align 4
  %tmp_4_0_7 = icmp ult i32 %Image_load_8, 70
  %lbImage_addr_9 = getelementptr [64 x i32]* %lbImage, i64 0, i64 7
  %p_429_cast = select i1 %tmp_4_0_7, i32 0, i32 1
  store i32 %p_429_cast, i32* %lbImage_addr_9, align 4
  %Image_addr_9 = getelementptr [64 x i32]* %Image_r, i64 0, i64 8
  %Image_load_9 = load i32* %Image_addr_9, align 4
  %tmp_4_1 = icmp ult i32 %Image_load_9, 70
  %lbImage_addr_10 = getelementptr [64 x i32]* %lbImage, i64 0, i64 8
  %p_430_cast = select i1 %tmp_4_1, i32 0, i32 1
  store i32 %p_430_cast, i32* %lbImage_addr_10, align 4
  %Image_addr_10 = getelementptr [64 x i32]* %Image_r, i64 0, i64 9
  %Image_load_10 = load i32* %Image_addr_10, align 4
  %tmp_4_1_1 = icmp ult i32 %Image_load_10, 70
  %lbImage_addr_11 = getelementptr [64 x i32]* %lbImage, i64 0, i64 9
  %p_431_cast = select i1 %tmp_4_1_1, i32 0, i32 1
  store i32 %p_431_cast, i32* %lbImage_addr_11, align 4
  %Image_addr_11 = getelementptr [64 x i32]* %Image_r, i64 0, i64 10
  %Image_load_11 = load i32* %Image_addr_11, align 4
  %tmp_4_1_2 = icmp ult i32 %Image_load_11, 70
  %lbImage_addr_12 = getelementptr [64 x i32]* %lbImage, i64 0, i64 10
  %p_432_cast = select i1 %tmp_4_1_2, i32 0, i32 1
  store i32 %p_432_cast, i32* %lbImage_addr_12, align 4
  %Image_addr_12 = getelementptr [64 x i32]* %Image_r, i64 0, i64 11
  %Image_load_12 = load i32* %Image_addr_12, align 4
  %tmp_4_1_3 = icmp ult i32 %Image_load_12, 70
  %lbImage_addr_13 = getelementptr [64 x i32]* %lbImage, i64 0, i64 11
  %p_433_cast = select i1 %tmp_4_1_3, i32 0, i32 1
  store i32 %p_433_cast, i32* %lbImage_addr_13, align 4
  %Image_addr_13 = getelementptr [64 x i32]* %Image_r, i64 0, i64 12
  %Image_load_13 = load i32* %Image_addr_13, align 4
  %tmp_4_1_4 = icmp ult i32 %Image_load_13, 70
  %lbImage_addr_14 = getelementptr [64 x i32]* %lbImage, i64 0, i64 12
  %p_434_cast = select i1 %tmp_4_1_4, i32 0, i32 1
  store i32 %p_434_cast, i32* %lbImage_addr_14, align 4
  %Image_addr_14 = getelementptr [64 x i32]* %Image_r, i64 0, i64 13
  %Image_load_14 = load i32* %Image_addr_14, align 4
  %tmp_4_1_5 = icmp ult i32 %Image_load_14, 70
  %lbImage_addr_15 = getelementptr [64 x i32]* %lbImage, i64 0, i64 13
  %p_435_cast = select i1 %tmp_4_1_5, i32 0, i32 1
  store i32 %p_435_cast, i32* %lbImage_addr_15, align 4
  %Image_addr_15 = getelementptr [64 x i32]* %Image_r, i64 0, i64 14
  %Image_load_15 = load i32* %Image_addr_15, align 4
  %tmp_4_1_6 = icmp ult i32 %Image_load_15, 70
  %lbImage_addr_16 = getelementptr [64 x i32]* %lbImage, i64 0, i64 14
  %p_436_cast = select i1 %tmp_4_1_6, i32 0, i32 1
  store i32 %p_436_cast, i32* %lbImage_addr_16, align 4
  %Image_addr_16 = getelementptr [64 x i32]* %Image_r, i64 0, i64 15
  %Image_load_16 = load i32* %Image_addr_16, align 4
  %tmp_4_1_7 = icmp ult i32 %Image_load_16, 70
  %lbImage_addr_17 = getelementptr [64 x i32]* %lbImage, i64 0, i64 15
  %p_437_cast = select i1 %tmp_4_1_7, i32 0, i32 1
  store i32 %p_437_cast, i32* %lbImage_addr_17, align 4
  %Image_addr_17 = getelementptr [64 x i32]* %Image_r, i64 0, i64 16
  %Image_load_17 = load i32* %Image_addr_17, align 4
  %tmp_4_2 = icmp ult i32 %Image_load_17, 70
  %lbImage_addr_18 = getelementptr [64 x i32]* %lbImage, i64 0, i64 16
  %p_438_cast = select i1 %tmp_4_2, i32 0, i32 1
  store i32 %p_438_cast, i32* %lbImage_addr_18, align 4
  %Image_addr_18 = getelementptr [64 x i32]* %Image_r, i64 0, i64 17
  %Image_load_18 = load i32* %Image_addr_18, align 4
  %tmp_4_2_1 = icmp ult i32 %Image_load_18, 70
  %lbImage_addr_19 = getelementptr [64 x i32]* %lbImage, i64 0, i64 17
  %p_439_cast = select i1 %tmp_4_2_1, i32 0, i32 1
  store i32 %p_439_cast, i32* %lbImage_addr_19, align 4
  %Image_addr_19 = getelementptr [64 x i32]* %Image_r, i64 0, i64 18
  %Image_load_19 = load i32* %Image_addr_19, align 4
  %tmp_4_2_2 = icmp ult i32 %Image_load_19, 70
  %lbImage_addr_20 = getelementptr [64 x i32]* %lbImage, i64 0, i64 18
  %p_440_cast = select i1 %tmp_4_2_2, i32 0, i32 1
  store i32 %p_440_cast, i32* %lbImage_addr_20, align 4
  %Image_addr_20 = getelementptr [64 x i32]* %Image_r, i64 0, i64 19
  %Image_load_20 = load i32* %Image_addr_20, align 4
  %tmp_4_2_3 = icmp ult i32 %Image_load_20, 70
  %lbImage_addr_21 = getelementptr [64 x i32]* %lbImage, i64 0, i64 19
  %p_441_cast = select i1 %tmp_4_2_3, i32 0, i32 1
  store i32 %p_441_cast, i32* %lbImage_addr_21, align 4
  %Image_addr_21 = getelementptr [64 x i32]* %Image_r, i64 0, i64 20
  %Image_load_21 = load i32* %Image_addr_21, align 4
  %tmp_4_2_4 = icmp ult i32 %Image_load_21, 70
  %lbImage_addr_22 = getelementptr [64 x i32]* %lbImage, i64 0, i64 20
  %p_442_cast = select i1 %tmp_4_2_4, i32 0, i32 1
  store i32 %p_442_cast, i32* %lbImage_addr_22, align 4
  %Image_addr_22 = getelementptr [64 x i32]* %Image_r, i64 0, i64 21
  %Image_load_22 = load i32* %Image_addr_22, align 4
  %tmp_4_2_5 = icmp ult i32 %Image_load_22, 70
  %lbImage_addr_23 = getelementptr [64 x i32]* %lbImage, i64 0, i64 21
  %p_443_cast = select i1 %tmp_4_2_5, i32 0, i32 1
  store i32 %p_443_cast, i32* %lbImage_addr_23, align 4
  %Image_addr_23 = getelementptr [64 x i32]* %Image_r, i64 0, i64 22
  %Image_load_23 = load i32* %Image_addr_23, align 4
  %tmp_4_2_6 = icmp ult i32 %Image_load_23, 70
  %lbImage_addr_24 = getelementptr [64 x i32]* %lbImage, i64 0, i64 22
  %p_444_cast = select i1 %tmp_4_2_6, i32 0, i32 1
  store i32 %p_444_cast, i32* %lbImage_addr_24, align 4
  %Image_addr_24 = getelementptr [64 x i32]* %Image_r, i64 0, i64 23
  %Image_load_24 = load i32* %Image_addr_24, align 4
  %tmp_4_2_7 = icmp ult i32 %Image_load_24, 70
  %lbImage_addr_25 = getelementptr [64 x i32]* %lbImage, i64 0, i64 23
  %p_445_cast = select i1 %tmp_4_2_7, i32 0, i32 1
  store i32 %p_445_cast, i32* %lbImage_addr_25, align 4
  %Image_addr_25 = getelementptr [64 x i32]* %Image_r, i64 0, i64 24
  %Image_load_25 = load i32* %Image_addr_25, align 4
  %tmp_4_3 = icmp ult i32 %Image_load_25, 70
  %lbImage_addr_26 = getelementptr [64 x i32]* %lbImage, i64 0, i64 24
  %p_446_cast = select i1 %tmp_4_3, i32 0, i32 1
  store i32 %p_446_cast, i32* %lbImage_addr_26, align 4
  %Image_addr_26 = getelementptr [64 x i32]* %Image_r, i64 0, i64 25
  %Image_load_26 = load i32* %Image_addr_26, align 4
  %tmp_4_3_1 = icmp ult i32 %Image_load_26, 70
  %lbImage_addr_27 = getelementptr [64 x i32]* %lbImage, i64 0, i64 25
  %p_447_cast = select i1 %tmp_4_3_1, i32 0, i32 1
  store i32 %p_447_cast, i32* %lbImage_addr_27, align 4
  %Image_addr_27 = getelementptr [64 x i32]* %Image_r, i64 0, i64 26
  %Image_load_27 = load i32* %Image_addr_27, align 4
  %tmp_4_3_2 = icmp ult i32 %Image_load_27, 70
  %lbImage_addr_28 = getelementptr [64 x i32]* %lbImage, i64 0, i64 26
  %p_448_cast = select i1 %tmp_4_3_2, i32 0, i32 1
  store i32 %p_448_cast, i32* %lbImage_addr_28, align 4
  %Image_addr_28 = getelementptr [64 x i32]* %Image_r, i64 0, i64 27
  %Image_load_28 = load i32* %Image_addr_28, align 4
  %tmp_4_3_3 = icmp ult i32 %Image_load_28, 70
  %lbImage_addr_29 = getelementptr [64 x i32]* %lbImage, i64 0, i64 27
  %p_449_cast = select i1 %tmp_4_3_3, i32 0, i32 1
  store i32 %p_449_cast, i32* %lbImage_addr_29, align 4
  %Image_addr_29 = getelementptr [64 x i32]* %Image_r, i64 0, i64 28
  %Image_load_29 = load i32* %Image_addr_29, align 4
  %tmp_4_3_4 = icmp ult i32 %Image_load_29, 70
  %lbImage_addr_30 = getelementptr [64 x i32]* %lbImage, i64 0, i64 28
  %p_450_cast = select i1 %tmp_4_3_4, i32 0, i32 1
  store i32 %p_450_cast, i32* %lbImage_addr_30, align 4
  %Image_addr_30 = getelementptr [64 x i32]* %Image_r, i64 0, i64 29
  %Image_load_30 = load i32* %Image_addr_30, align 4
  %tmp_4_3_5 = icmp ult i32 %Image_load_30, 70
  %lbImage_addr_31 = getelementptr [64 x i32]* %lbImage, i64 0, i64 29
  %p_451_cast = select i1 %tmp_4_3_5, i32 0, i32 1
  store i32 %p_451_cast, i32* %lbImage_addr_31, align 4
  %Image_addr_31 = getelementptr [64 x i32]* %Image_r, i64 0, i64 30
  %Image_load_31 = load i32* %Image_addr_31, align 4
  %tmp_4_3_6 = icmp ult i32 %Image_load_31, 70
  %lbImage_addr_32 = getelementptr [64 x i32]* %lbImage, i64 0, i64 30
  %p_452_cast = select i1 %tmp_4_3_6, i32 0, i32 1
  store i32 %p_452_cast, i32* %lbImage_addr_32, align 4
  %Image_addr_32 = getelementptr [64 x i32]* %Image_r, i64 0, i64 31
  %Image_load_32 = load i32* %Image_addr_32, align 4
  %tmp_4_3_7 = icmp ult i32 %Image_load_32, 70
  %lbImage_addr_33 = getelementptr [64 x i32]* %lbImage, i64 0, i64 31
  %p_453_cast = select i1 %tmp_4_3_7, i32 0, i32 1
  store i32 %p_453_cast, i32* %lbImage_addr_33, align 4
  %Image_addr_33 = getelementptr [64 x i32]* %Image_r, i64 0, i64 32
  %Image_load_33 = load i32* %Image_addr_33, align 4
  %tmp_4_4 = icmp ult i32 %Image_load_33, 70
  %lbImage_addr_34 = getelementptr [64 x i32]* %lbImage, i64 0, i64 32
  %p_454_cast = select i1 %tmp_4_4, i32 0, i32 1
  store i32 %p_454_cast, i32* %lbImage_addr_34, align 4
  %Image_addr_34 = getelementptr [64 x i32]* %Image_r, i64 0, i64 33
  %Image_load_34 = load i32* %Image_addr_34, align 4
  %tmp_4_4_1 = icmp ult i32 %Image_load_34, 70
  %lbImage_addr_35 = getelementptr [64 x i32]* %lbImage, i64 0, i64 33
  %p_455_cast = select i1 %tmp_4_4_1, i32 0, i32 1
  store i32 %p_455_cast, i32* %lbImage_addr_35, align 4
  %Image_addr_35 = getelementptr [64 x i32]* %Image_r, i64 0, i64 34
  %Image_load_35 = load i32* %Image_addr_35, align 4
  %tmp_4_4_2 = icmp ult i32 %Image_load_35, 70
  %lbImage_addr_36 = getelementptr [64 x i32]* %lbImage, i64 0, i64 34
  %p_456_cast = select i1 %tmp_4_4_2, i32 0, i32 1
  store i32 %p_456_cast, i32* %lbImage_addr_36, align 4
  %Image_addr_36 = getelementptr [64 x i32]* %Image_r, i64 0, i64 35
  %Image_load_36 = load i32* %Image_addr_36, align 4
  %tmp_4_4_3 = icmp ult i32 %Image_load_36, 70
  %lbImage_addr_37 = getelementptr [64 x i32]* %lbImage, i64 0, i64 35
  %p_457_cast = select i1 %tmp_4_4_3, i32 0, i32 1
  store i32 %p_457_cast, i32* %lbImage_addr_37, align 4
  %Image_addr_37 = getelementptr [64 x i32]* %Image_r, i64 0, i64 36
  %Image_load_37 = load i32* %Image_addr_37, align 4
  %tmp_4_4_4 = icmp ult i32 %Image_load_37, 70
  %lbImage_addr_38 = getelementptr [64 x i32]* %lbImage, i64 0, i64 36
  %p_458_cast = select i1 %tmp_4_4_4, i32 0, i32 1
  store i32 %p_458_cast, i32* %lbImage_addr_38, align 4
  %Image_addr_38 = getelementptr [64 x i32]* %Image_r, i64 0, i64 37
  %Image_load_38 = load i32* %Image_addr_38, align 4
  %tmp_4_4_5 = icmp ult i32 %Image_load_38, 70
  %lbImage_addr_39 = getelementptr [64 x i32]* %lbImage, i64 0, i64 37
  %p_459_cast = select i1 %tmp_4_4_5, i32 0, i32 1
  store i32 %p_459_cast, i32* %lbImage_addr_39, align 4
  %Image_addr_39 = getelementptr [64 x i32]* %Image_r, i64 0, i64 38
  %Image_load_39 = load i32* %Image_addr_39, align 4
  %tmp_4_4_6 = icmp ult i32 %Image_load_39, 70
  %lbImage_addr_40 = getelementptr [64 x i32]* %lbImage, i64 0, i64 38
  %p_460_cast = select i1 %tmp_4_4_6, i32 0, i32 1
  store i32 %p_460_cast, i32* %lbImage_addr_40, align 4
  %Image_addr_40 = getelementptr [64 x i32]* %Image_r, i64 0, i64 39
  %Image_load_40 = load i32* %Image_addr_40, align 4
  %tmp_4_4_7 = icmp ult i32 %Image_load_40, 70
  %lbImage_addr_41 = getelementptr [64 x i32]* %lbImage, i64 0, i64 39
  %p_461_cast = select i1 %tmp_4_4_7, i32 0, i32 1
  store i32 %p_461_cast, i32* %lbImage_addr_41, align 4
  %Image_addr_41 = getelementptr [64 x i32]* %Image_r, i64 0, i64 40
  %Image_load_41 = load i32* %Image_addr_41, align 4
  %tmp_4_5 = icmp ult i32 %Image_load_41, 70
  %lbImage_addr_42 = getelementptr [64 x i32]* %lbImage, i64 0, i64 40
  %p_462_cast = select i1 %tmp_4_5, i32 0, i32 1
  store i32 %p_462_cast, i32* %lbImage_addr_42, align 4
  %Image_addr_42 = getelementptr [64 x i32]* %Image_r, i64 0, i64 41
  %Image_load_42 = load i32* %Image_addr_42, align 4
  %tmp_4_5_1 = icmp ult i32 %Image_load_42, 70
  %lbImage_addr_43 = getelementptr [64 x i32]* %lbImage, i64 0, i64 41
  %p_463_cast = select i1 %tmp_4_5_1, i32 0, i32 1
  store i32 %p_463_cast, i32* %lbImage_addr_43, align 4
  %Image_addr_43 = getelementptr [64 x i32]* %Image_r, i64 0, i64 42
  %Image_load_43 = load i32* %Image_addr_43, align 4
  %tmp_4_5_2 = icmp ult i32 %Image_load_43, 70
  %lbImage_addr_44 = getelementptr [64 x i32]* %lbImage, i64 0, i64 42
  %p_464_cast = select i1 %tmp_4_5_2, i32 0, i32 1
  store i32 %p_464_cast, i32* %lbImage_addr_44, align 4
  %Image_addr_44 = getelementptr [64 x i32]* %Image_r, i64 0, i64 43
  %Image_load_44 = load i32* %Image_addr_44, align 4
  %tmp_4_5_3 = icmp ult i32 %Image_load_44, 70
  %lbImage_addr_45 = getelementptr [64 x i32]* %lbImage, i64 0, i64 43
  %p_465_cast = select i1 %tmp_4_5_3, i32 0, i32 1
  store i32 %p_465_cast, i32* %lbImage_addr_45, align 4
  %Image_addr_45 = getelementptr [64 x i32]* %Image_r, i64 0, i64 44
  %Image_load_45 = load i32* %Image_addr_45, align 4
  %tmp_4_5_4 = icmp ult i32 %Image_load_45, 70
  %lbImage_addr_46 = getelementptr [64 x i32]* %lbImage, i64 0, i64 44
  %p_466_cast = select i1 %tmp_4_5_4, i32 0, i32 1
  store i32 %p_466_cast, i32* %lbImage_addr_46, align 4
  %Image_addr_46 = getelementptr [64 x i32]* %Image_r, i64 0, i64 45
  %Image_load_46 = load i32* %Image_addr_46, align 4
  %tmp_4_5_5 = icmp ult i32 %Image_load_46, 70
  %lbImage_addr_47 = getelementptr [64 x i32]* %lbImage, i64 0, i64 45
  %p_467_cast = select i1 %tmp_4_5_5, i32 0, i32 1
  store i32 %p_467_cast, i32* %lbImage_addr_47, align 4
  %Image_addr_47 = getelementptr [64 x i32]* %Image_r, i64 0, i64 46
  %Image_load_47 = load i32* %Image_addr_47, align 4
  %tmp_4_5_6 = icmp ult i32 %Image_load_47, 70
  %lbImage_addr_48 = getelementptr [64 x i32]* %lbImage, i64 0, i64 46
  %p_468_cast = select i1 %tmp_4_5_6, i32 0, i32 1
  store i32 %p_468_cast, i32* %lbImage_addr_48, align 4
  %Image_addr_48 = getelementptr [64 x i32]* %Image_r, i64 0, i64 47
  %Image_load_48 = load i32* %Image_addr_48, align 4
  %tmp_4_5_7 = icmp ult i32 %Image_load_48, 70
  %lbImage_addr_49 = getelementptr [64 x i32]* %lbImage, i64 0, i64 47
  %p_469_cast = select i1 %tmp_4_5_7, i32 0, i32 1
  store i32 %p_469_cast, i32* %lbImage_addr_49, align 4
  %Image_addr_49 = getelementptr [64 x i32]* %Image_r, i64 0, i64 48
  %Image_load_49 = load i32* %Image_addr_49, align 4
  %tmp_4_6 = icmp ult i32 %Image_load_49, 70
  %lbImage_addr_50 = getelementptr [64 x i32]* %lbImage, i64 0, i64 48
  %p_470_cast = select i1 %tmp_4_6, i32 0, i32 1
  store i32 %p_470_cast, i32* %lbImage_addr_50, align 4
  %Image_addr_50 = getelementptr [64 x i32]* %Image_r, i64 0, i64 49
  %Image_load_50 = load i32* %Image_addr_50, align 4
  %tmp_4_6_1 = icmp ult i32 %Image_load_50, 70
  %lbImage_addr_51 = getelementptr [64 x i32]* %lbImage, i64 0, i64 49
  %p_471_cast = select i1 %tmp_4_6_1, i32 0, i32 1
  store i32 %p_471_cast, i32* %lbImage_addr_51, align 4
  %Image_addr_51 = getelementptr [64 x i32]* %Image_r, i64 0, i64 50
  %Image_load_51 = load i32* %Image_addr_51, align 4
  %tmp_4_6_2 = icmp ult i32 %Image_load_51, 70
  %lbImage_addr_52 = getelementptr [64 x i32]* %lbImage, i64 0, i64 50
  %p_472_cast = select i1 %tmp_4_6_2, i32 0, i32 1
  store i32 %p_472_cast, i32* %lbImage_addr_52, align 4
  %Image_addr_52 = getelementptr [64 x i32]* %Image_r, i64 0, i64 51
  %Image_load_52 = load i32* %Image_addr_52, align 4
  %tmp_4_6_3 = icmp ult i32 %Image_load_52, 70
  %lbImage_addr_53 = getelementptr [64 x i32]* %lbImage, i64 0, i64 51
  %p_473_cast = select i1 %tmp_4_6_3, i32 0, i32 1
  store i32 %p_473_cast, i32* %lbImage_addr_53, align 4
  %Image_addr_53 = getelementptr [64 x i32]* %Image_r, i64 0, i64 52
  %Image_load_53 = load i32* %Image_addr_53, align 4
  %tmp_4_6_4 = icmp ult i32 %Image_load_53, 70
  %lbImage_addr_54 = getelementptr [64 x i32]* %lbImage, i64 0, i64 52
  %p_474_cast = select i1 %tmp_4_6_4, i32 0, i32 1
  store i32 %p_474_cast, i32* %lbImage_addr_54, align 4
  %Image_addr_54 = getelementptr [64 x i32]* %Image_r, i64 0, i64 53
  %Image_load_54 = load i32* %Image_addr_54, align 4
  %tmp_4_6_5 = icmp ult i32 %Image_load_54, 70
  %lbImage_addr_55 = getelementptr [64 x i32]* %lbImage, i64 0, i64 53
  %p_475_cast = select i1 %tmp_4_6_5, i32 0, i32 1
  store i32 %p_475_cast, i32* %lbImage_addr_55, align 4
  %Image_addr_55 = getelementptr [64 x i32]* %Image_r, i64 0, i64 54
  %Image_load_55 = load i32* %Image_addr_55, align 4
  %tmp_4_6_6 = icmp ult i32 %Image_load_55, 70
  %lbImage_addr_56 = getelementptr [64 x i32]* %lbImage, i64 0, i64 54
  %p_476_cast = select i1 %tmp_4_6_6, i32 0, i32 1
  store i32 %p_476_cast, i32* %lbImage_addr_56, align 4
  %Image_addr_56 = getelementptr [64 x i32]* %Image_r, i64 0, i64 55
  %Image_load_56 = load i32* %Image_addr_56, align 4
  %tmp_4_6_7 = icmp ult i32 %Image_load_56, 70
  %lbImage_addr_57 = getelementptr [64 x i32]* %lbImage, i64 0, i64 55
  %p_477_cast = select i1 %tmp_4_6_7, i32 0, i32 1
  store i32 %p_477_cast, i32* %lbImage_addr_57, align 4
  %Image_addr_57 = getelementptr [64 x i32]* %Image_r, i64 0, i64 56
  %Image_load_57 = load i32* %Image_addr_57, align 4
  %tmp_4_7 = icmp ult i32 %Image_load_57, 70
  %lbImage_addr_58 = getelementptr [64 x i32]* %lbImage, i64 0, i64 56
  %p_478_cast = select i1 %tmp_4_7, i32 0, i32 1
  store i32 %p_478_cast, i32* %lbImage_addr_58, align 4
  %Image_addr_58 = getelementptr [64 x i32]* %Image_r, i64 0, i64 57
  %Image_load_58 = load i32* %Image_addr_58, align 4
  %tmp_4_7_1 = icmp ult i32 %Image_load_58, 70
  %lbImage_addr_59 = getelementptr [64 x i32]* %lbImage, i64 0, i64 57
  %p_479_cast = select i1 %tmp_4_7_1, i32 0, i32 1
  store i32 %p_479_cast, i32* %lbImage_addr_59, align 4
  %Image_addr_59 = getelementptr [64 x i32]* %Image_r, i64 0, i64 58
  %Image_load_59 = load i32* %Image_addr_59, align 4
  %tmp_4_7_2 = icmp ult i32 %Image_load_59, 70
  %lbImage_addr_60 = getelementptr [64 x i32]* %lbImage, i64 0, i64 58
  %p_480_cast = select i1 %tmp_4_7_2, i32 0, i32 1
  store i32 %p_480_cast, i32* %lbImage_addr_60, align 4
  %Image_addr_60 = getelementptr [64 x i32]* %Image_r, i64 0, i64 59
  %Image_load_60 = load i32* %Image_addr_60, align 4
  %tmp_4_7_3 = icmp ult i32 %Image_load_60, 70
  %lbImage_addr_61 = getelementptr [64 x i32]* %lbImage, i64 0, i64 59
  %p_481_cast = select i1 %tmp_4_7_3, i32 0, i32 1
  store i32 %p_481_cast, i32* %lbImage_addr_61, align 4
  %Image_addr_61 = getelementptr [64 x i32]* %Image_r, i64 0, i64 60
  %Image_load_61 = load i32* %Image_addr_61, align 4
  %tmp_4_7_4 = icmp ult i32 %Image_load_61, 70
  %lbImage_addr_62 = getelementptr [64 x i32]* %lbImage, i64 0, i64 60
  %p_482_cast = select i1 %tmp_4_7_4, i32 0, i32 1
  store i32 %p_482_cast, i32* %lbImage_addr_62, align 4
  %Image_addr_62 = getelementptr [64 x i32]* %Image_r, i64 0, i64 61
  %Image_load_62 = load i32* %Image_addr_62, align 4
  %tmp_4_7_5 = icmp ult i32 %Image_load_62, 70
  %lbImage_addr_63 = getelementptr [64 x i32]* %lbImage, i64 0, i64 61
  %p_483_cast = select i1 %tmp_4_7_5, i32 0, i32 1
  store i32 %p_483_cast, i32* %lbImage_addr_63, align 4
  %Image_addr_63 = getelementptr [64 x i32]* %Image_r, i64 0, i64 62
  %Image_load_63 = load i32* %Image_addr_63, align 4
  %tmp_4_7_6 = icmp ult i32 %Image_load_63, 70
  %lbImage_addr_64 = getelementptr [64 x i32]* %lbImage, i64 0, i64 62
  %p_484_cast = select i1 %tmp_4_7_6, i32 0, i32 1
  store i32 %p_484_cast, i32* %lbImage_addr_64, align 4
  %Image_addr_64 = getelementptr [64 x i32]* %Image_r, i64 0, i64 63
  %Image_load_64 = load i32* %Image_addr_64, align 4
  %tmp_4_7_7 = icmp ult i32 %Image_load_64, 70
  %lbImage_addr_65 = getelementptr [64 x i32]* %lbImage, i64 0, i64 63
  %p_485_cast = select i1 %tmp_4_7_7, i32 0, i32 1
  store i32 %p_485_cast, i32* %lbImage_addr_65, align 4
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_4 = zext i3 %1 to i7
  %empty_5 = shl i7 %empty, 3
  %empty_6 = or i7 %empty_5, %empty_4
  ret i7 %empty_6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"Image", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 7, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"lbImage", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"starData.status", metadata !21, metadata !"bool", i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 29, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"starData.totalIntensity", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"starData.x", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"starData.y", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"set", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"centroidData.root", metadata !21, metadata !"unsigned int", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"centroidData.x", metadata !21, metadata !"float", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"centroidData.y", metadata !21, metadata !"float", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"return", metadata !55, metadata !"unsigned int", i32 0, i32 31}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 1, i32 0}
