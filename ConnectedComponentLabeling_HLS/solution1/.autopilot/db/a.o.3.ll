; ModuleID = 'D:/Dropbox/DangKhoa/CEE_Cache/StarTrackingProject/ConnectedComponentLabeling_HLS/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [8 x i8] c"CCLabel\00"   ; [#uses=1 type=[8 x i8]*]

; [#uses=4]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=62]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=11]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=0]
define i32 @CCLabel([64 x i32]* %Image, [64 x i32]* %lbImage, [30 x i1]* %starData_status, [30 x i32]* %starData_totalIntensity, [30 x i32]* %starData_x, [30 x i32]* %starData_y, [30 x i32]* %set, [30 x i32]* %centroidData_root, [30 x float]* %centroidData_x, [30 x float]* %centroidData_y) {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i32]* %Image), !map !7
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
  call void @llvm.dbg.value(metadata !{[64 x i32]* %Image}, i64 0, metadata !57), !dbg !107 ; [debug line = 137:27] [debug variable = Image]
  call void @llvm.dbg.value(metadata !{[64 x i32]* %lbImage}, i64 0, metadata !108), !dbg !109 ; [debug line = 137:49] [debug variable = lbImage]
  call void @llvm.dbg.value(metadata !{[30 x i1]* %starData_status}, i64 0, metadata !110), !dbg !117 ; [debug line = 137:75] [debug variable = starData.status]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_totalIntensity}, i64 0, metadata !118), !dbg !117 ; [debug line = 137:75] [debug variable = starData.totalIntensity]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_x}, i64 0, metadata !122), !dbg !117 ; [debug line = 137:75] [debug variable = starData.x]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_y}, i64 0, metadata !126), !dbg !117 ; [debug line = 137:75] [debug variable = starData.y]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %set}, i64 0, metadata !130), !dbg !132 ; [debug line = 137:98] [debug variable = set]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %centroidData_root}, i64 0, metadata !133), !dbg !138 ; [debug line = 137:116] [debug variable = centroidData.root]
  call void @llvm.dbg.value(metadata !{[30 x float]* %centroidData_x}, i64 0, metadata !139), !dbg !138 ; [debug line = 137:116] [debug variable = centroidData.x]
  call void @llvm.dbg.value(metadata !{[30 x float]* %centroidData_y}, i64 0, metadata !143), !dbg !138 ; [debug line = 137:116] [debug variable = centroidData.y]
  call fastcc void @CCLabel_preProcess([64 x i32]* %Image, [64 x i32]* %lbImage), !dbg !147 ; [debug line = 138:2]
  %setCount = call fastcc i32 @CCLabel_firstPass([64 x i32]* nocapture %Image, [64 x i32]* nocapture %lbImage, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %set), !dbg !149 ; [#uses=1 type=i32] [debug line = 139:22]
  call void @llvm.dbg.value(metadata !{i32 %setCount}, i64 0, metadata !150), !dbg !149 ; [debug line = 139:22] [debug variable = setCount]
  %centroidDataCount = call fastcc i32 @CCLabel_calCentroid([30 x i32]* %set, [30 x i1]* %starData_status, [30 x i32]* %starData_totalIntensity, [30 x i32]* %starData_x, [30 x i32]* %starData_y, [30 x i32]* %centroidData_root, [30 x float]* %centroidData_x, [30 x float]* %centroidData_y, i32 %setCount), !dbg !151 ; [#uses=1 type=i32] [debug line = 140:31]
  call void @llvm.dbg.value(metadata !{i32 %centroidDataCount}, i64 0, metadata !152), !dbg !151 ; [debug line = 140:31] [debug variable = centroidDataCount]
  ret i32 %centroidDataCount, !dbg !153           ; [debug line = 142:2]
}

; [#uses=1]
define internal fastcc i32 @CCLabel_calCentroid([30 x i32]* nocapture %set, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %centroidData_root, [30 x float]* nocapture %centroidData_x, [30 x float]* nocapture %centroidData_y, i32 %setCount) {
  %setCount_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %setCount) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %setCount_read}, i64 0, metadata !154), !dbg !158 ; [debug line = 106:101] [debug variable = setCount]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %set}, i64 0, metadata !159), !dbg !160 ; [debug line = 106:31] [debug variable = set]
  call void @llvm.dbg.value(metadata !{[30 x i1]* %starData_status}, i64 0, metadata !161), !dbg !163 ; [debug line = 106:51] [debug variable = starData.status]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_totalIntensity}, i64 0, metadata !164), !dbg !163 ; [debug line = 106:51] [debug variable = starData.totalIntensity]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_x}, i64 0, metadata !165), !dbg !163 ; [debug line = 106:51] [debug variable = starData.x]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_y}, i64 0, metadata !166), !dbg !163 ; [debug line = 106:51] [debug variable = starData.y]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %centroidData_root}, i64 0, metadata !167), !dbg !169 ; [debug line = 106:74] [debug variable = centroidData.root]
  call void @llvm.dbg.value(metadata !{[30 x float]* %centroidData_x}, i64 0, metadata !170), !dbg !169 ; [debug line = 106:74] [debug variable = centroidData.x]
  call void @llvm.dbg.value(metadata !{[30 x float]* %centroidData_y}, i64 0, metadata !171), !dbg !169 ; [debug line = 106:74] [debug variable = centroidData.y]
  call void @llvm.dbg.value(metadata !{i32 %setCount}, i64 0, metadata !154), !dbg !158 ; [debug line = 106:101] [debug variable = setCount]
  br label %1, !dbg !172                          ; [debug line = 111:6]

; <label>:1                                       ; preds = %._crit_edge, %0
  %temp_1 = phi i32 [ 1, %0 ], [ %i_1, %._crit_edge ] ; [#uses=5 type=i32]
  %tmp = icmp ult i32 %temp_1, %setCount_read, !dbg !172 ; [#uses=1 type=i1] [debug line = 111:6]
  br i1 %tmp, label %2, label %.preheader.preheader, !dbg !172 ; [debug line = 111:6]

.preheader.preheader:                             ; preds = %1
  %centroidDataCount = alloca i32, align 4        ; [#uses=4 type=i32*]
  store i32 0, i32* %centroidDataCount, align 4
  br label %.preheader, !dbg !175                 ; [debug line = 123:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32 %temp_1}, i64 0, metadata !177), !dbg !185 ; [debug line = 28:19@114:11] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{i32 %temp_1}, i64 0, metadata !186), !dbg !187 ; [debug line = 27:24@114:11] [debug variable = i]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2), !dbg !188 ; [#uses=1 type=i32] [debug line = 111:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !189 ; [debug line = 112:1]
  %tmp_s = zext i32 %temp_1 to i64, !dbg !190     ; [#uses=5 type=i64] [debug line = 113:2]
  %set_addr = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_s, !dbg !190 ; [#uses=1 type=i32*] [debug line = 113:2]
  %set_load = load i32* %set_addr, align 4, !dbg !190 ; [#uses=1 type=i32] [debug line = 113:2]
  %tmp_2 = icmp eq i32 %set_load, %temp_1, !dbg !190 ; [#uses=1 type=i1] [debug line = 113:2]
  br i1 %tmp_2, label %._crit_edge, label %.preheader37, !dbg !190 ; [debug line = 113:2]

.preheader37:                                     ; preds = %.preheader37, %2
  %root = phi i32 [ %temp, %.preheader37 ], [ %temp_1, %2 ] ; [#uses=2 type=i32]
  %tmp_i = zext i32 %root to i64, !dbg !191       ; [#uses=4 type=i64] [debug line = 29:2@114:11]
  %set_addr_1 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i, !dbg !191 ; [#uses=1 type=i32*] [debug line = 29:2@114:11]
  %temp = load i32* %set_addr_1, align 4, !dbg !191 ; [#uses=2 type=i32] [debug line = 29:2@114:11]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !177), !dbg !192 ; [debug line = 30:3@114:11] [debug variable = temp]
  %tmp_1_i = icmp eq i32 %root, %temp, !dbg !191  ; [#uses=1 type=i1] [debug line = 29:2@114:11]
  br i1 %tmp_1_i, label %find.exit, label %.preheader37, !dbg !191 ; [debug line = 29:2@114:11]

find.exit:                                        ; preds = %.preheader37
  call void @llvm.dbg.value(metadata !{i32 %root}, i64 0, metadata !194), !dbg !182 ; [debug line = 114:11] [debug variable = root]
  %starData_totalIntensity_addr = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_s, !dbg !195 ; [#uses=1 type=i32*] [debug line = 115:4]
  %starData_totalIntensity_load = load i32* %starData_totalIntensity_addr, align 4, !dbg !195 ; [#uses=1 type=i32] [debug line = 115:4]
  %starData_totalIntensity_addr_1 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_i, !dbg !195 ; [#uses=2 type=i32*] [debug line = 115:4]
  %starData_totalIntensity_load_1 = load i32* %starData_totalIntensity_addr_1, align 4, !dbg !195 ; [#uses=1 type=i32] [debug line = 115:4]
  %tmp_5 = add i32 %starData_totalIntensity_load_1, %starData_totalIntensity_load, !dbg !195 ; [#uses=1 type=i32] [debug line = 115:4]
  store i32 %tmp_5, i32* %starData_totalIntensity_addr_1, align 4, !dbg !195 ; [debug line = 115:4]
  %starData_x_addr = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_s, !dbg !196 ; [#uses=1 type=i32*] [debug line = 116:4]
  %starData_x_load = load i32* %starData_x_addr, align 4, !dbg !196 ; [#uses=1 type=i32] [debug line = 116:4]
  %starData_x_addr_1 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_i, !dbg !196 ; [#uses=2 type=i32*] [debug line = 116:4]
  %starData_x_load_1 = load i32* %starData_x_addr_1, align 4, !dbg !196 ; [#uses=1 type=i32] [debug line = 116:4]
  %tmp_6 = add i32 %starData_x_load_1, %starData_x_load, !dbg !196 ; [#uses=1 type=i32] [debug line = 116:4]
  store i32 %tmp_6, i32* %starData_x_addr_1, align 4, !dbg !196 ; [debug line = 116:4]
  %starData_y_addr = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_s, !dbg !197 ; [#uses=1 type=i32*] [debug line = 117:4]
  %starData_y_load = load i32* %starData_y_addr, align 4, !dbg !197 ; [#uses=1 type=i32] [debug line = 117:4]
  %starData_y_addr_1 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_i, !dbg !197 ; [#uses=2 type=i32*] [debug line = 117:4]
  %starData_y_load_1 = load i32* %starData_y_addr_1, align 4, !dbg !197 ; [#uses=1 type=i32] [debug line = 117:4]
  %tmp_7 = add i32 %starData_y_load_1, %starData_y_load, !dbg !197 ; [#uses=1 type=i32] [debug line = 117:4]
  store i32 %tmp_7, i32* %starData_y_addr_1, align 4, !dbg !197 ; [debug line = 117:4]
  %starData_status_addr = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_s, !dbg !198 ; [#uses=1 type=i1*] [debug line = 118:4]
  store i1 false, i1* %starData_status_addr, align 1, !dbg !198 ; [debug line = 118:4]
  br label %._crit_edge, !dbg !199                ; [debug line = 119:3]

._crit_edge:                                      ; preds = %find.exit, %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_1), !dbg !200 ; [#uses=0 type=i32] [debug line = 120:2]
  %i_1 = add i32 %temp_1, 1, !dbg !201            ; [#uses=1 type=i32] [debug line = 111:27]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !202), !dbg !201 ; [debug line = 111:27] [debug variable = i]
  br label %1, !dbg !201                          ; [debug line = 111:27]

.preheader:                                       ; preds = %._crit_edge1, %.preheader.preheader
  %temp_root = phi i32 [ %i, %._crit_edge1 ], [ 1, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp_3 = icmp ult i32 %temp_root, %setCount_read, !dbg !175 ; [#uses=1 type=i1] [debug line = 123:6]
  br i1 %tmp_3, label %3, label %5, !dbg !175     ; [debug line = 123:6]

; <label>:3                                       ; preds = %.preheader
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3), !dbg !203 ; [#uses=1 type=i32] [debug line = 123:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !205 ; [debug line = 124:1]
  %tmp_9 = zext i32 %temp_root to i64, !dbg !206  ; [#uses=4 type=i64] [debug line = 125:2]
  %starData_status_addr_1 = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_9, !dbg !206 ; [#uses=1 type=i1*] [debug line = 125:2]
  %starData_status_load = load i1* %starData_status_addr_1, align 1, !dbg !206 ; [#uses=1 type=i1] [debug line = 125:2]
  br i1 %starData_status_load, label %4, label %._crit_edge1, !dbg !206 ; [debug line = 125:2]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32* %centroidDataCount}, i64 0, metadata !207), !dbg !208 ; [debug line = 131:4] [debug variable = centroidDataCount]
  %centroidDataCount_load = load i32* %centroidDataCount, align 4, !dbg !208 ; [#uses=2 type=i32] [debug line = 131:4]
  call void @llvm.dbg.value(metadata !{i32 %temp_root}, i64 0, metadata !210), !dbg !212 ; [debug line = 126:4] [debug variable = temp.root]
  %starData_x_addr_2 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_9, !dbg !213 ; [#uses=1 type=i32*] [debug line = 127:4]
  %starData_x_load_2 = load i32* %starData_x_addr_2, align 4, !dbg !213 ; [#uses=1 type=i32] [debug line = 127:4]
  %tmp_4 = uitofp i32 %starData_x_load_2 to float, !dbg !213 ; [#uses=1 type=float] [debug line = 127:4]
  %starData_totalIntensity_addr_2 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_9, !dbg !213 ; [#uses=1 type=i32*] [debug line = 127:4]
  %starData_totalIntensity_load_2 = load i32* %starData_totalIntensity_addr_2, align 4, !dbg !213 ; [#uses=1 type=i32] [debug line = 127:4]
  %tmp_10 = uitofp i32 %starData_totalIntensity_load_2 to float, !dbg !213 ; [#uses=2 type=float] [debug line = 127:4]
  %temp_x = fdiv float %tmp_4, %tmp_10, !dbg !213 ; [#uses=1 type=float] [debug line = 127:4]
  call void @llvm.dbg.value(metadata !{float %temp_x}, i64 0, metadata !214), !dbg !213 ; [debug line = 127:4] [debug variable = temp.x]
  %starData_y_addr_2 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_9, !dbg !215 ; [#uses=1 type=i32*] [debug line = 128:4]
  %starData_y_load_2 = load i32* %starData_y_addr_2, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 128:4]
  %tmp_11 = uitofp i32 %starData_y_load_2 to float, !dbg !215 ; [#uses=1 type=float] [debug line = 128:4]
  %temp_y = fdiv float %tmp_11, %tmp_10, !dbg !215 ; [#uses=1 type=float] [debug line = 128:4]
  call void @llvm.dbg.value(metadata !{float %temp_y}, i64 0, metadata !216), !dbg !215 ; [debug line = 128:4] [debug variable = temp.y]
  %tmp_12 = zext i32 %centroidDataCount_load to i64, !dbg !217 ; [#uses=3 type=i64] [debug line = 130:4]
  %centroidData_root_addr = getelementptr [30 x i32]* %centroidData_root, i64 0, i64 %tmp_12, !dbg !217 ; [#uses=1 type=i32*] [debug line = 130:4]
  store i32 %temp_root, i32* %centroidData_root_addr, align 4, !dbg !217 ; [debug line = 130:4]
  %centroidData_x_addr = getelementptr [30 x float]* %centroidData_x, i64 0, i64 %tmp_12, !dbg !217 ; [#uses=1 type=float*] [debug line = 130:4]
  store float %temp_x, float* %centroidData_x_addr, align 4, !dbg !217 ; [debug line = 130:4]
  %centroidData_y_addr = getelementptr [30 x float]* %centroidData_y, i64 0, i64 %tmp_12, !dbg !217 ; [#uses=1 type=float*] [debug line = 130:4]
  store float %temp_y, float* %centroidData_y_addr, align 4, !dbg !217 ; [debug line = 130:4]
  %centroidDataCount_1 = add i32 %centroidDataCount_load, 1, !dbg !208 ; [#uses=1 type=i32] [debug line = 131:4]
  call void @llvm.dbg.value(metadata !{i32 %centroidDataCount_1}, i64 0, metadata !207), !dbg !208 ; [debug line = 131:4] [debug variable = centroidDataCount]
  store i32 %centroidDataCount_1, i32* %centroidDataCount, align 4, !dbg !208 ; [debug line = 131:4]
  br label %._crit_edge1, !dbg !218               ; [debug line = 132:3]

._crit_edge1:                                     ; preds = %4, %3
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_8), !dbg !219 ; [#uses=0 type=i32] [debug line = 133:2]
  %i = add i32 %temp_root, 1, !dbg !220           ; [#uses=1 type=i32] [debug line = 123:27]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !202), !dbg !220 ; [debug line = 123:27] [debug variable = i]
  br label %.preheader, !dbg !220                 ; [debug line = 123:27]

; <label>:5                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i32* %centroidDataCount}, i64 0, metadata !207), !dbg !221 ; [debug line = 134:2] [debug variable = centroidDataCount]
  %centroidDataCount_load_1 = load i32* %centroidDataCount, align 4, !dbg !221 ; [#uses=1 type=i32] [debug line = 134:2]
  ret i32 %centroidDataCount_load_1, !dbg !221    ; [debug line = 134:2]
}

; [#uses=1]
define internal fastcc i32 @CCLabel_firstPass([64 x i32]* nocapture %Image, [64 x i32]* nocapture %lbImage, [30 x i1]* nocapture %starData_status, [30 x i32]* nocapture %starData_totalIntensity, [30 x i32]* nocapture %starData_x, [30 x i32]* nocapture %starData_y, [30 x i32]* nocapture %set) {
  %setCount_1 = alloca i32, align 4               ; [#uses=4 type=i32*]
  %label_1 = alloca i32, align 4                  ; [#uses=3 type=i32*]
  call void @llvm.dbg.value(metadata !{[64 x i32]* %Image}, i64 0, metadata !222), !dbg !226 ; [debug line = 49:30] [debug variable = Image]
  call void @llvm.dbg.value(metadata !{[64 x i32]* %lbImage}, i64 0, metadata !227), !dbg !228 ; [debug line = 50:15] [debug variable = lbImage]
  call void @llvm.dbg.value(metadata !{[30 x i1]* %starData_status}, i64 0, metadata !229), !dbg !231 ; [debug line = 51:17] [debug variable = starData.status]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_totalIntensity}, i64 0, metadata !232), !dbg !231 ; [debug line = 51:17] [debug variable = starData.totalIntensity]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_x}, i64 0, metadata !233), !dbg !231 ; [debug line = 51:17] [debug variable = starData.x]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %starData_y}, i64 0, metadata !234), !dbg !231 ; [debug line = 51:17] [debug variable = starData.y]
  call void @llvm.dbg.value(metadata !{[30 x i32]* %set}, i64 0, metadata !235), !dbg !236 ; [debug line = 52:15] [debug variable = set]
  store i32 0, i32* %label_1, align 4
  store i32 1, i32* %setCount_1, align 4
  br label %.preheader, !dbg !237                 ; [debug line = 61:6]

.preheader:                                       ; preds = %._crit_edge, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ] ; [#uses=2 type=i7]
  %i = phi i4 [ 0, %0 ], [ %i_mid2, %._crit_edge ] ; [#uses=2 type=i4]
  %j = phi i4 [ 0, %0 ], [ %j_1, %._crit_edge ]   ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %5, label %.preheader.preheader

_ifconv:                                          ; preds = %.preheader.preheader
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_7, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = sext i7 %tmp_8 to i8, !dbg !240 ; [#uses=1 type=i8] [debug line = 68:4]
  %p_addr3 = add i8 %p_addr2_cast, %j_cast4_cast, !dbg !240 ; [#uses=1 type=i8] [debug line = 68:4]
  %tmp_16 = sext i8 %p_addr3 to i64, !dbg !240    ; [#uses=1 type=i64] [debug line = 68:4]
  %lbImage_addr_1 = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_16, !dbg !240 ; [#uses=1 type=i32*] [debug line = 68:4]
  %lbImage_load_1 = load i32* %lbImage_addr_1, align 4, !dbg !240 ; [#uses=2 type=i32] [debug line = 68:4]
  %tmp_2 = icmp eq i32 %lbImage_load_1, 0, !dbg !240 ; [#uses=1 type=i1] [debug line = 68:4]
  %sel_tmp = or i1 %tmp_6, %tmp_2                 ; [#uses=1 type=i1]
  %prevAbove = select i1 %sel_tmp, i32 999, i32 %lbImage_load_1, !dbg !240 ; [#uses=5 type=i32] [debug line = 68:4]
  call void @llvm.dbg.value(metadata !{i32 %prevAbove}, i64 0, metadata !244), !dbg !240 ; [debug line = 68:4] [debug variable = prevAbove]
  %tmp_3 = icmp eq i4 %j_mid2, 0, !dbg !245       ; [#uses=1 type=i1] [debug line = 69:4]
  %tmp_4 = add i4 %j_mid2, -1, !dbg !245          ; [#uses=1 type=i4] [debug line = 69:4]
  %tmp_4_cast_cast = sext i4 %tmp_4 to i9, !dbg !245 ; [#uses=1 type=i9] [debug line = 69:4]
  %p_addr8 = add i9 %p_addr_cast1, %tmp_4_cast_cast, !dbg !245 ; [#uses=1 type=i9] [debug line = 69:4]
  %tmp_25 = sext i9 %p_addr8 to i64, !dbg !245    ; [#uses=1 type=i64] [debug line = 69:4]
  %lbImage_addr_2 = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_25, !dbg !245 ; [#uses=1 type=i32*] [debug line = 69:4]
  %lbImage_load_2 = load i32* %lbImage_addr_2, align 4, !dbg !245 ; [#uses=2 type=i32] [debug line = 69:4]
  %tmp_9 = icmp eq i32 %lbImage_load_2, 0, !dbg !245 ; [#uses=1 type=i1] [debug line = 69:4]
  %sel_tmp2 = or i1 %tmp_3, %tmp_9                ; [#uses=1 type=i1]
  %prevLeft = select i1 %sel_tmp2, i32 999, i32 %lbImage_load_2, !dbg !245 ; [#uses=5 type=i32] [debug line = 69:4]
  call void @llvm.dbg.value(metadata !{i32 %prevLeft}, i64 0, metadata !246), !dbg !245 ; [debug line = 69:4] [debug variable = prevLeft]
  %tmp_10 = icmp eq i32 %prevAbove, 999, !dbg !247 ; [#uses=1 type=i1] [debug line = 71:4]
  %tmp_11 = icmp eq i32 %prevLeft, 999, !dbg !247 ; [#uses=1 type=i1] [debug line = 71:4]
  %or_cond = and i1 %tmp_10, %tmp_11, !dbg !247   ; [#uses=1 type=i1] [debug line = 71:4]
  br i1 %or_cond, label %1, label %2, !dbg !247   ; [debug line = 71:4]

; <label>:1                                       ; preds = %_ifconv
  call void @llvm.dbg.value(metadata !{i32* %setCount_1}, i64 0, metadata !248), !dbg !249 ; [debug line = 82:5] [debug variable = setCount]
  %setCount_1_load = load i32* %setCount_1, align 4, !dbg !249 ; [#uses=2 type=i32] [debug line = 82:5]
  call void @llvm.dbg.value(metadata !{i32* %label_1}, i64 0, metadata !251), !dbg !252 ; [debug line = 72:5] [debug variable = label]
  %label_1_load = load i32* %label_1, align 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 72:5]
  %label = add i32 %label_1_load, 1, !dbg !252    ; [#uses=3 type=i32] [debug line = 72:5]
  call void @llvm.dbg.value(metadata !{i32 %label}, i64 0, metadata !251), !dbg !252 ; [debug line = 72:5] [debug variable = label]
  store i32 %label, i32* %lbImage_addr, align 4, !dbg !252 ; [debug line = 72:5]
  %tmp_12 = zext i32 %setCount_1_load to i64, !dbg !253 ; [#uses=5 type=i64] [debug line = 73:5]
  %set_addr = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_12, !dbg !253 ; [#uses=1 type=i32*] [debug line = 73:5]
  store i32 %label, i32* %set_addr, align 4, !dbg !253 ; [debug line = 73:5]
  %Image_addr = getelementptr [64 x i32]* %Image, i64 0, i64 %tmp_5, !dbg !254 ; [#uses=1 type=i32*] [debug line = 77:5]
  %temp_totalIntensity = load i32* %Image_addr, align 4, !dbg !254 ; [#uses=3 type=i32] [debug line = 77:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_totalIntensity}, i64 0, metadata !255), !dbg !254 ; [debug line = 77:5] [debug variable = temp.totalIntensity]
  %temp_x = mul i32 %temp_totalIntensity, %i_cast5, !dbg !257 ; [#uses=1 type=i32] [debug line = 78:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_x}, i64 0, metadata !258), !dbg !257 ; [debug line = 78:5] [debug variable = temp.x]
  %temp_y = mul i32 %temp_totalIntensity, %j_cast4, !dbg !259 ; [#uses=1 type=i32] [debug line = 79:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_y}, i64 0, metadata !260), !dbg !259 ; [debug line = 79:5] [debug variable = temp.y]
  %starData_status_addr = getelementptr [30 x i1]* %starData_status, i64 0, i64 %tmp_12, !dbg !261 ; [#uses=1 type=i1*] [debug line = 80:5]
  store i1 true, i1* %starData_status_addr, align 1, !dbg !261 ; [debug line = 80:5]
  %starData_totalIntensity_addr = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_12, !dbg !261 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 %temp_totalIntensity, i32* %starData_totalIntensity_addr, align 4, !dbg !261 ; [debug line = 80:5]
  %starData_x_addr21 = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_12, !dbg !261 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 %temp_x, i32* %starData_x_addr21, align 4, !dbg !261 ; [debug line = 80:5]
  %starData_y_addr = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_12, !dbg !261 ; [#uses=1 type=i32*] [debug line = 80:5]
  store i32 %temp_y, i32* %starData_y_addr, align 4, !dbg !261 ; [debug line = 80:5]
  %setCount = add i32 %setCount_1_load, 1, !dbg !249 ; [#uses=1 type=i32] [debug line = 82:5]
  call void @llvm.dbg.value(metadata !{i32 %setCount}, i64 0, metadata !248), !dbg !249 ; [debug line = 82:5] [debug variable = setCount]
  store i32 %label, i32* %label_1, align 4, !dbg !252 ; [debug line = 72:5]
  store i32 %setCount, i32* %setCount_1, align 4, !dbg !249 ; [debug line = 82:5]
  br label %4, !dbg !262                          ; [debug line = 83:4]

; <label>:2                                       ; preds = %_ifconv
  %tmp_13 = icmp ult i32 %prevAbove, %prevLeft, !dbg !263 ; [#uses=1 type=i1] [debug line = 86:5]
  %temp_4 = select i1 %tmp_13, i32 %prevAbove, i32 %prevLeft, !dbg !263 ; [#uses=5 type=i32] [debug line = 86:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_4}, i64 0, metadata !265), !dbg !268 ; [debug line = 28:19@92:17] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{i32 %temp_4}, i64 0, metadata !269), !dbg !270 ; [debug line = 27:24@92:17] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %temp_4}, i64 0, metadata !271), !dbg !274 ; [debug line = 28:19@89:17] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{i32 %temp_4}, i64 0, metadata !275), !dbg !276 ; [debug line = 27:24@89:17] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %temp_4}, i64 0, metadata !277), !dbg !263 ; [debug line = 86:5] [debug variable = min]
  %tmp_14 = icmp ugt i32 %prevAbove, %prevLeft, !dbg !278 ; [#uses=1 type=i1] [debug line = 87:5]
  %max = select i1 %tmp_14, i32 %prevAbove, i32 %prevLeft, !dbg !278 ; [#uses=2 type=i32] [debug line = 87:5]
  call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !279), !dbg !278 ; [debug line = 87:5] [debug variable = max]
  %tmp_15 = icmp eq i32 %max, 999, !dbg !280      ; [#uses=1 type=i1] [debug line = 88:5]
  br i1 %tmp_15, label %.preheader42, label %.preheader43, !dbg !280 ; [debug line = 88:5]

.preheader43:                                     ; preds = %.preheader43, %2
  %temp_i = phi i32 [ %temp_3, %.preheader43 ], [ %temp_4, %2 ] ; [#uses=3 type=i32]
  %tmp_i = zext i32 %temp_i to i64, !dbg !281     ; [#uses=1 type=i64] [debug line = 29:2@89:17]
  %set_addr_4 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i, !dbg !281 ; [#uses=1 type=i32*] [debug line = 29:2@89:17]
  %temp_3 = load i32* %set_addr_4, align 4, !dbg !281 ; [#uses=2 type=i32] [debug line = 29:2@89:17]
  call void @llvm.dbg.value(metadata !{i32 %temp_3}, i64 0, metadata !271), !dbg !282 ; [debug line = 30:3@89:17] [debug variable = temp]
  %tmp_1_i = icmp eq i32 %temp_i, %temp_3, !dbg !281 ; [#uses=1 type=i1] [debug line = 29:2@89:17]
  br i1 %tmp_1_i, label %find.exit, label %.preheader43, !dbg !281 ; [debug line = 29:2@89:17]

find.exit:                                        ; preds = %.preheader43
  %tmp_18 = zext i32 %max to i64, !dbg !272       ; [#uses=1 type=i64] [debug line = 89:17]
  %set_addr_2 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_18, !dbg !272 ; [#uses=1 type=i32*] [debug line = 89:17]
  store i32 %temp_i, i32* %set_addr_2, align 4, !dbg !272 ; [debug line = 89:17]
  br label %3, !dbg !283                          ; [debug line = 90:5]

.preheader42:                                     ; preds = %.preheader42, %2
  %temp_i1 = phi i32 [ %temp, %.preheader42 ], [ %temp_4, %2 ] ; [#uses=3 type=i32]
  %tmp_i1 = zext i32 %temp_i1 to i64, !dbg !284   ; [#uses=1 type=i64] [debug line = 29:2@92:17]
  %set_addr_3 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_i1, !dbg !284 ; [#uses=1 type=i32*] [debug line = 29:2@92:17]
  %temp = load i32* %set_addr_3, align 4, !dbg !284 ; [#uses=2 type=i32] [debug line = 29:2@92:17]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !265), !dbg !285 ; [debug line = 30:3@92:17] [debug variable = temp]
  %tmp_1_i1 = icmp eq i32 %temp_i1, %temp, !dbg !284 ; [#uses=1 type=i1] [debug line = 29:2@92:17]
  br i1 %tmp_1_i1, label %find.exit41, label %.preheader42, !dbg !284 ; [debug line = 29:2@92:17]

find.exit41:                                      ; preds = %.preheader42
  %tmp_17 = zext i32 %temp_4 to i64, !dbg !266    ; [#uses=1 type=i64] [debug line = 92:17]
  %set_addr_1 = getelementptr [30 x i32]* %set, i64 0, i64 %tmp_17, !dbg !266 ; [#uses=1 type=i32*] [debug line = 92:17]
  store i32 %temp_i1, i32* %set_addr_1, align 4, !dbg !266 ; [debug line = 92:17]
  br label %3

; <label>:3                                       ; preds = %find.exit41, %find.exit
  store i32 %temp_4, i32* %lbImage_addr, align 4, !dbg !286 ; [debug line = 94:5]
  %Image_addr_1 = getelementptr [64 x i32]* %Image, i64 0, i64 %tmp_5, !dbg !287 ; [#uses=1 type=i32*] [debug line = 97:5]
  %Image_load = load i32* %Image_addr_1, align 4, !dbg !287 ; [#uses=3 type=i32] [debug line = 97:5]
  %tmp_19 = zext i32 %temp_4 to i64, !dbg !287    ; [#uses=3 type=i64] [debug line = 97:5]
  %starData_totalIntensity_addr_3 = getelementptr [30 x i32]* %starData_totalIntensity, i64 0, i64 %tmp_19, !dbg !287 ; [#uses=2 type=i32*] [debug line = 97:5]
  %starData_totalIntensity_load = load i32* %starData_totalIntensity_addr_3, align 4, !dbg !287 ; [#uses=1 type=i32] [debug line = 97:5]
  %tmp_20 = add i32 %starData_totalIntensity_load, %Image_load, !dbg !287 ; [#uses=1 type=i32] [debug line = 97:5]
  store i32 %tmp_20, i32* %starData_totalIntensity_addr_3, align 4, !dbg !287 ; [debug line = 97:5]
  %tmp_21 = mul i32 %Image_load, %i_cast5, !dbg !288 ; [#uses=1 type=i32] [debug line = 98:5]
  %starData_x_addr = getelementptr [30 x i32]* %starData_x, i64 0, i64 %tmp_19, !dbg !288 ; [#uses=2 type=i32*] [debug line = 98:5]
  %starData_x_load = load i32* %starData_x_addr, align 4, !dbg !288 ; [#uses=1 type=i32] [debug line = 98:5]
  %tmp_22 = add i32 %starData_x_load, %tmp_21, !dbg !288 ; [#uses=1 type=i32] [debug line = 98:5]
  store i32 %tmp_22, i32* %starData_x_addr, align 4, !dbg !288 ; [debug line = 98:5]
  %tmp_23 = mul i32 %Image_load, %j_cast4, !dbg !289 ; [#uses=1 type=i32] [debug line = 99:5]
  %starData_y_addr_3 = getelementptr [30 x i32]* %starData_y, i64 0, i64 %tmp_19, !dbg !289 ; [#uses=2 type=i32*] [debug line = 99:5]
  %starData_y_load = load i32* %starData_y_addr_3, align 4, !dbg !289 ; [#uses=1 type=i32] [debug line = 99:5]
  %tmp_24 = add i32 %starData_y_load, %tmp_23, !dbg !289 ; [#uses=1 type=i32] [debug line = 99:5]
  store i32 %tmp_24, i32* %starData_y_addr_3, align 4, !dbg !289 ; [debug line = 99:5]
  br label %4

; <label>:4                                       ; preds = %3, %1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_s), !dbg !290 ; [#uses=0 type=i32] [debug line = 101:3]
  br label %._crit_edge, !dbg !291                ; [debug line = 101:34]

._crit_edge:                                      ; preds = %.preheader.preheader, %4
  %j_1 = add i4 %j_mid2, 1, !dbg !292             ; [#uses=1 type=i4] [debug line = 62:21]
  call void @llvm.dbg.value(metadata !{i4 %j_1}, i64 0, metadata !293), !dbg !292 ; [debug line = 62:21] [debug variable = j]
  br label %.preheader, !dbg !292                 ; [debug line = 62:21]

.preheader.preheader:                             ; preds = %.preheader
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %j, -8, !dbg !294        ; [#uses=2 type=i1] [debug line = 62:7]
  %j_mid2 = select i1 %exitcond, i4 0, i4 %j      ; [#uses=5 type=i4]
  %i_s = add i4 %i, 1, !dbg !295                  ; [#uses=1 type=i4] [debug line = 61:20]
  %i_mid2 = select i1 %exitcond, i4 %i_s, i4 %i   ; [#uses=5 type=i4]
  %i_cast5 = zext i4 %i_mid2 to i32, !dbg !237    ; [#uses=2 type=i32] [debug line = 61:6]
  %tmp_6 = icmp eq i4 %i_mid2, 0, !dbg !240       ; [#uses=1 type=i1] [debug line = 68:4]
  %tmp_7 = add i4 %i_mid2, -1, !dbg !240          ; [#uses=1 type=i4] [debug line = 68:4]
  %j_cast4 = zext i4 %j_mid2 to i32, !dbg !294    ; [#uses=2 type=i32] [debug line = 62:7]
  %j_cast4_cast = zext i4 %j_mid2 to i8, !dbg !296 ; [#uses=2 type=i8] [debug line = 62:27]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1), !dbg !296 ; [#uses=1 type=i32] [debug line = 62:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !297 ; [debug line = 63:1]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_mid2, i3 0) ; [#uses=2 type=i7]
  %p_addr_cast1 = zext i7 %tmp to i9, !dbg !298   ; [#uses=1 type=i9] [debug line = 64:2]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !298    ; [#uses=1 type=i8] [debug line = 64:2]
  %p_addr1 = add i8 %p_addr_cast, %j_cast4_cast, !dbg !298 ; [#uses=1 type=i8] [debug line = 64:2]
  %tmp_5 = zext i8 %p_addr1 to i64, !dbg !298     ; [#uses=3 type=i64] [debug line = 64:2]
  %lbImage_addr = getelementptr [64 x i32]* %lbImage, i64 0, i64 %tmp_5, !dbg !298 ; [#uses=3 type=i32*] [debug line = 64:2]
  %lbImage_load = load i32* %lbImage_addr, align 4, !dbg !298 ; [#uses=1 type=i32] [debug line = 64:2]
  %tmp_1 = icmp eq i32 %lbImage_load, 0, !dbg !298 ; [#uses=1 type=i1] [debug line = 64:2]
  br i1 %tmp_1, label %._crit_edge, label %_ifconv, !dbg !298 ; [debug line = 64:2]

; <label>:5                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i32* %setCount_1}, i64 0, metadata !248), !dbg !299 ; [debug line = 103:2] [debug variable = setCount]
  %setCount_1_load_1 = load i32* %setCount_1, align 4, !dbg !299 ; [#uses=1 type=i32] [debug line = 103:2]
  ret i32 %setCount_1_load_1, !dbg !299           ; [debug line = 103:2]
}

; [#uses=1]
define internal fastcc void @CCLabel_preProcess([64 x i32]* %Image, [64 x i32]* %lbImage) {
.preheader.preheader.0:
  call void @llvm.dbg.value(metadata !{[64 x i32]* %Image}, i64 0, metadata !300), !dbg !304 ; [debug line = 35:26] [debug variable = Image]
  call void @llvm.dbg.value(metadata !{[64 x i32]* %lbImage}, i64 0, metadata !305), !dbg !306 ; [debug line = 35:48] [debug variable = lbImage]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !307 ; [debug line = 37:1]
  %Image_addr = getelementptr [64 x i32]* %Image, i64 0, i64 0, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load = load i32* %Image_addr, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4 = icmp ult i32 %Image_load, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr = getelementptr [64 x i32]* %lbImage, i64 0, i64 0, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_cast = select i1 %tmp_4, i32 0, i32 1        ; [#uses=1 type=i32]
  store i32 %p_cast, i32* %lbImage_addr, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_2 = getelementptr [64 x i32]* %Image, i64 0, i64 1, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_2 = load i32* %Image_addr_2, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_1 = icmp ult i32 %Image_load_2, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_3 = getelementptr [64 x i32]* %lbImage, i64 0, i64 1, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_423_cast = select i1 %tmp_4_0_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_423_cast, i32* %lbImage_addr_3, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_3 = getelementptr [64 x i32]* %Image, i64 0, i64 2, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_3 = load i32* %Image_addr_3, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_2 = icmp ult i32 %Image_load_3, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_4 = getelementptr [64 x i32]* %lbImage, i64 0, i64 2, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_424_cast = select i1 %tmp_4_0_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_424_cast, i32* %lbImage_addr_4, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_4 = getelementptr [64 x i32]* %Image, i64 0, i64 3, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_4 = load i32* %Image_addr_4, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_3 = icmp ult i32 %Image_load_4, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_5 = getelementptr [64 x i32]* %lbImage, i64 0, i64 3, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_425_cast = select i1 %tmp_4_0_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_425_cast, i32* %lbImage_addr_5, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_5 = getelementptr [64 x i32]* %Image, i64 0, i64 4, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_5 = load i32* %Image_addr_5, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_4 = icmp ult i32 %Image_load_5, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_6 = getelementptr [64 x i32]* %lbImage, i64 0, i64 4, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_426_cast = select i1 %tmp_4_0_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_426_cast, i32* %lbImage_addr_6, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_6 = getelementptr [64 x i32]* %Image, i64 0, i64 5, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_6 = load i32* %Image_addr_6, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_5 = icmp ult i32 %Image_load_6, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_7 = getelementptr [64 x i32]* %lbImage, i64 0, i64 5, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_427_cast = select i1 %tmp_4_0_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_427_cast, i32* %lbImage_addr_7, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_7 = getelementptr [64 x i32]* %Image, i64 0, i64 6, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_7 = load i32* %Image_addr_7, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_6 = icmp ult i32 %Image_load_7, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_8 = getelementptr [64 x i32]* %lbImage, i64 0, i64 6, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_428_cast = select i1 %tmp_4_0_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_428_cast, i32* %lbImage_addr_8, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_8 = getelementptr [64 x i32]* %Image, i64 0, i64 7, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_8 = load i32* %Image_addr_8, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_0_7 = icmp ult i32 %Image_load_8, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_9 = getelementptr [64 x i32]* %lbImage, i64 0, i64 7, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_429_cast = select i1 %tmp_4_0_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_429_cast, i32* %lbImage_addr_9, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_9 = getelementptr [64 x i32]* %Image, i64 0, i64 8, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_9 = load i32* %Image_addr_9, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1 = icmp ult i32 %Image_load_9, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_10 = getelementptr [64 x i32]* %lbImage, i64 0, i64 8, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_430_cast = select i1 %tmp_4_1, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_430_cast, i32* %lbImage_addr_10, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_10 = getelementptr [64 x i32]* %Image, i64 0, i64 9, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_10 = load i32* %Image_addr_10, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_1 = icmp ult i32 %Image_load_10, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_11 = getelementptr [64 x i32]* %lbImage, i64 0, i64 9, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_431_cast = select i1 %tmp_4_1_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_431_cast, i32* %lbImage_addr_11, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_11 = getelementptr [64 x i32]* %Image, i64 0, i64 10, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_11 = load i32* %Image_addr_11, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_2 = icmp ult i32 %Image_load_11, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_12 = getelementptr [64 x i32]* %lbImage, i64 0, i64 10, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_432_cast = select i1 %tmp_4_1_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_432_cast, i32* %lbImage_addr_12, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_12 = getelementptr [64 x i32]* %Image, i64 0, i64 11, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_12 = load i32* %Image_addr_12, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_3 = icmp ult i32 %Image_load_12, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_13 = getelementptr [64 x i32]* %lbImage, i64 0, i64 11, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_433_cast = select i1 %tmp_4_1_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_433_cast, i32* %lbImage_addr_13, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_13 = getelementptr [64 x i32]* %Image, i64 0, i64 12, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_13 = load i32* %Image_addr_13, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_4 = icmp ult i32 %Image_load_13, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_14 = getelementptr [64 x i32]* %lbImage, i64 0, i64 12, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_434_cast = select i1 %tmp_4_1_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_434_cast, i32* %lbImage_addr_14, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_14 = getelementptr [64 x i32]* %Image, i64 0, i64 13, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_14 = load i32* %Image_addr_14, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_5 = icmp ult i32 %Image_load_14, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_15 = getelementptr [64 x i32]* %lbImage, i64 0, i64 13, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_435_cast = select i1 %tmp_4_1_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_435_cast, i32* %lbImage_addr_15, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_15 = getelementptr [64 x i32]* %Image, i64 0, i64 14, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_15 = load i32* %Image_addr_15, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_6 = icmp ult i32 %Image_load_15, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_16 = getelementptr [64 x i32]* %lbImage, i64 0, i64 14, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_436_cast = select i1 %tmp_4_1_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_436_cast, i32* %lbImage_addr_16, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_16 = getelementptr [64 x i32]* %Image, i64 0, i64 15, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_16 = load i32* %Image_addr_16, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_1_7 = icmp ult i32 %Image_load_16, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_17 = getelementptr [64 x i32]* %lbImage, i64 0, i64 15, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_437_cast = select i1 %tmp_4_1_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_437_cast, i32* %lbImage_addr_17, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_17 = getelementptr [64 x i32]* %Image, i64 0, i64 16, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_17 = load i32* %Image_addr_17, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2 = icmp ult i32 %Image_load_17, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_18 = getelementptr [64 x i32]* %lbImage, i64 0, i64 16, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_438_cast = select i1 %tmp_4_2, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_438_cast, i32* %lbImage_addr_18, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_18 = getelementptr [64 x i32]* %Image, i64 0, i64 17, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_18 = load i32* %Image_addr_18, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_1 = icmp ult i32 %Image_load_18, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_19 = getelementptr [64 x i32]* %lbImage, i64 0, i64 17, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_439_cast = select i1 %tmp_4_2_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_439_cast, i32* %lbImage_addr_19, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_19 = getelementptr [64 x i32]* %Image, i64 0, i64 18, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_19 = load i32* %Image_addr_19, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_2 = icmp ult i32 %Image_load_19, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_20 = getelementptr [64 x i32]* %lbImage, i64 0, i64 18, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_440_cast = select i1 %tmp_4_2_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_440_cast, i32* %lbImage_addr_20, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_20 = getelementptr [64 x i32]* %Image, i64 0, i64 19, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_20 = load i32* %Image_addr_20, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_3 = icmp ult i32 %Image_load_20, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_21 = getelementptr [64 x i32]* %lbImage, i64 0, i64 19, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_441_cast = select i1 %tmp_4_2_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_441_cast, i32* %lbImage_addr_21, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_21 = getelementptr [64 x i32]* %Image, i64 0, i64 20, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_21 = load i32* %Image_addr_21, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_4 = icmp ult i32 %Image_load_21, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_22 = getelementptr [64 x i32]* %lbImage, i64 0, i64 20, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_442_cast = select i1 %tmp_4_2_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_442_cast, i32* %lbImage_addr_22, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_22 = getelementptr [64 x i32]* %Image, i64 0, i64 21, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_22 = load i32* %Image_addr_22, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_5 = icmp ult i32 %Image_load_22, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_23 = getelementptr [64 x i32]* %lbImage, i64 0, i64 21, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_443_cast = select i1 %tmp_4_2_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_443_cast, i32* %lbImage_addr_23, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_23 = getelementptr [64 x i32]* %Image, i64 0, i64 22, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_23 = load i32* %Image_addr_23, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_6 = icmp ult i32 %Image_load_23, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_24 = getelementptr [64 x i32]* %lbImage, i64 0, i64 22, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_444_cast = select i1 %tmp_4_2_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_444_cast, i32* %lbImage_addr_24, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_24 = getelementptr [64 x i32]* %Image, i64 0, i64 23, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_24 = load i32* %Image_addr_24, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_2_7 = icmp ult i32 %Image_load_24, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_25 = getelementptr [64 x i32]* %lbImage, i64 0, i64 23, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_445_cast = select i1 %tmp_4_2_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_445_cast, i32* %lbImage_addr_25, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_25 = getelementptr [64 x i32]* %Image, i64 0, i64 24, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_25 = load i32* %Image_addr_25, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3 = icmp ult i32 %Image_load_25, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_26 = getelementptr [64 x i32]* %lbImage, i64 0, i64 24, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_446_cast = select i1 %tmp_4_3, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_446_cast, i32* %lbImage_addr_26, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_26 = getelementptr [64 x i32]* %Image, i64 0, i64 25, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_26 = load i32* %Image_addr_26, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_1 = icmp ult i32 %Image_load_26, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_27 = getelementptr [64 x i32]* %lbImage, i64 0, i64 25, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_447_cast = select i1 %tmp_4_3_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_447_cast, i32* %lbImage_addr_27, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_27 = getelementptr [64 x i32]* %Image, i64 0, i64 26, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_27 = load i32* %Image_addr_27, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_2 = icmp ult i32 %Image_load_27, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_28 = getelementptr [64 x i32]* %lbImage, i64 0, i64 26, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_448_cast = select i1 %tmp_4_3_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_448_cast, i32* %lbImage_addr_28, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_28 = getelementptr [64 x i32]* %Image, i64 0, i64 27, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_28 = load i32* %Image_addr_28, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_3 = icmp ult i32 %Image_load_28, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_29 = getelementptr [64 x i32]* %lbImage, i64 0, i64 27, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_449_cast = select i1 %tmp_4_3_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_449_cast, i32* %lbImage_addr_29, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_29 = getelementptr [64 x i32]* %Image, i64 0, i64 28, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_29 = load i32* %Image_addr_29, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_4 = icmp ult i32 %Image_load_29, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_30 = getelementptr [64 x i32]* %lbImage, i64 0, i64 28, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_450_cast = select i1 %tmp_4_3_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_450_cast, i32* %lbImage_addr_30, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_30 = getelementptr [64 x i32]* %Image, i64 0, i64 29, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_30 = load i32* %Image_addr_30, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_5 = icmp ult i32 %Image_load_30, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_31 = getelementptr [64 x i32]* %lbImage, i64 0, i64 29, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_451_cast = select i1 %tmp_4_3_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_451_cast, i32* %lbImage_addr_31, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_31 = getelementptr [64 x i32]* %Image, i64 0, i64 30, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_31 = load i32* %Image_addr_31, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_6 = icmp ult i32 %Image_load_31, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_32 = getelementptr [64 x i32]* %lbImage, i64 0, i64 30, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_452_cast = select i1 %tmp_4_3_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_452_cast, i32* %lbImage_addr_32, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_32 = getelementptr [64 x i32]* %Image, i64 0, i64 31, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_32 = load i32* %Image_addr_32, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_3_7 = icmp ult i32 %Image_load_32, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_33 = getelementptr [64 x i32]* %lbImage, i64 0, i64 31, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_453_cast = select i1 %tmp_4_3_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_453_cast, i32* %lbImage_addr_33, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_33 = getelementptr [64 x i32]* %Image, i64 0, i64 32, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_33 = load i32* %Image_addr_33, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4 = icmp ult i32 %Image_load_33, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_34 = getelementptr [64 x i32]* %lbImage, i64 0, i64 32, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_454_cast = select i1 %tmp_4_4, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_454_cast, i32* %lbImage_addr_34, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_34 = getelementptr [64 x i32]* %Image, i64 0, i64 33, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_34 = load i32* %Image_addr_34, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_1 = icmp ult i32 %Image_load_34, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_35 = getelementptr [64 x i32]* %lbImage, i64 0, i64 33, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_455_cast = select i1 %tmp_4_4_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_455_cast, i32* %lbImage_addr_35, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_35 = getelementptr [64 x i32]* %Image, i64 0, i64 34, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_35 = load i32* %Image_addr_35, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_2 = icmp ult i32 %Image_load_35, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_36 = getelementptr [64 x i32]* %lbImage, i64 0, i64 34, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_456_cast = select i1 %tmp_4_4_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_456_cast, i32* %lbImage_addr_36, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_36 = getelementptr [64 x i32]* %Image, i64 0, i64 35, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_36 = load i32* %Image_addr_36, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_3 = icmp ult i32 %Image_load_36, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_37 = getelementptr [64 x i32]* %lbImage, i64 0, i64 35, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_457_cast = select i1 %tmp_4_4_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_457_cast, i32* %lbImage_addr_37, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_37 = getelementptr [64 x i32]* %Image, i64 0, i64 36, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_37 = load i32* %Image_addr_37, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_4 = icmp ult i32 %Image_load_37, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_38 = getelementptr [64 x i32]* %lbImage, i64 0, i64 36, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_458_cast = select i1 %tmp_4_4_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_458_cast, i32* %lbImage_addr_38, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_38 = getelementptr [64 x i32]* %Image, i64 0, i64 37, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_38 = load i32* %Image_addr_38, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_5 = icmp ult i32 %Image_load_38, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_39 = getelementptr [64 x i32]* %lbImage, i64 0, i64 37, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_459_cast = select i1 %tmp_4_4_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_459_cast, i32* %lbImage_addr_39, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_39 = getelementptr [64 x i32]* %Image, i64 0, i64 38, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_39 = load i32* %Image_addr_39, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_6 = icmp ult i32 %Image_load_39, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_40 = getelementptr [64 x i32]* %lbImage, i64 0, i64 38, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_460_cast = select i1 %tmp_4_4_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_460_cast, i32* %lbImage_addr_40, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_40 = getelementptr [64 x i32]* %Image, i64 0, i64 39, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_40 = load i32* %Image_addr_40, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_4_7 = icmp ult i32 %Image_load_40, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_41 = getelementptr [64 x i32]* %lbImage, i64 0, i64 39, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_461_cast = select i1 %tmp_4_4_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_461_cast, i32* %lbImage_addr_41, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_41 = getelementptr [64 x i32]* %Image, i64 0, i64 40, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_41 = load i32* %Image_addr_41, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5 = icmp ult i32 %Image_load_41, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_42 = getelementptr [64 x i32]* %lbImage, i64 0, i64 40, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_462_cast = select i1 %tmp_4_5, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_462_cast, i32* %lbImage_addr_42, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_42 = getelementptr [64 x i32]* %Image, i64 0, i64 41, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_42 = load i32* %Image_addr_42, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_1 = icmp ult i32 %Image_load_42, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_43 = getelementptr [64 x i32]* %lbImage, i64 0, i64 41, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_463_cast = select i1 %tmp_4_5_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_463_cast, i32* %lbImage_addr_43, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_43 = getelementptr [64 x i32]* %Image, i64 0, i64 42, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_43 = load i32* %Image_addr_43, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_2 = icmp ult i32 %Image_load_43, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_44 = getelementptr [64 x i32]* %lbImage, i64 0, i64 42, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_464_cast = select i1 %tmp_4_5_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_464_cast, i32* %lbImage_addr_44, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_44 = getelementptr [64 x i32]* %Image, i64 0, i64 43, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_44 = load i32* %Image_addr_44, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_3 = icmp ult i32 %Image_load_44, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_45 = getelementptr [64 x i32]* %lbImage, i64 0, i64 43, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_465_cast = select i1 %tmp_4_5_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_465_cast, i32* %lbImage_addr_45, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_45 = getelementptr [64 x i32]* %Image, i64 0, i64 44, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_45 = load i32* %Image_addr_45, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_4 = icmp ult i32 %Image_load_45, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_46 = getelementptr [64 x i32]* %lbImage, i64 0, i64 44, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_466_cast = select i1 %tmp_4_5_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_466_cast, i32* %lbImage_addr_46, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_46 = getelementptr [64 x i32]* %Image, i64 0, i64 45, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_46 = load i32* %Image_addr_46, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_5 = icmp ult i32 %Image_load_46, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_47 = getelementptr [64 x i32]* %lbImage, i64 0, i64 45, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_467_cast = select i1 %tmp_4_5_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_467_cast, i32* %lbImage_addr_47, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_47 = getelementptr [64 x i32]* %Image, i64 0, i64 46, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_47 = load i32* %Image_addr_47, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_6 = icmp ult i32 %Image_load_47, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_48 = getelementptr [64 x i32]* %lbImage, i64 0, i64 46, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_468_cast = select i1 %tmp_4_5_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_468_cast, i32* %lbImage_addr_48, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_48 = getelementptr [64 x i32]* %Image, i64 0, i64 47, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_48 = load i32* %Image_addr_48, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_5_7 = icmp ult i32 %Image_load_48, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_49 = getelementptr [64 x i32]* %lbImage, i64 0, i64 47, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_469_cast = select i1 %tmp_4_5_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_469_cast, i32* %lbImage_addr_49, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_49 = getelementptr [64 x i32]* %Image, i64 0, i64 48, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_49 = load i32* %Image_addr_49, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6 = icmp ult i32 %Image_load_49, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_50 = getelementptr [64 x i32]* %lbImage, i64 0, i64 48, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_470_cast = select i1 %tmp_4_6, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_470_cast, i32* %lbImage_addr_50, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_50 = getelementptr [64 x i32]* %Image, i64 0, i64 49, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_50 = load i32* %Image_addr_50, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_1 = icmp ult i32 %Image_load_50, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_51 = getelementptr [64 x i32]* %lbImage, i64 0, i64 49, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_471_cast = select i1 %tmp_4_6_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_471_cast, i32* %lbImage_addr_51, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_51 = getelementptr [64 x i32]* %Image, i64 0, i64 50, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_51 = load i32* %Image_addr_51, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_2 = icmp ult i32 %Image_load_51, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_52 = getelementptr [64 x i32]* %lbImage, i64 0, i64 50, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_472_cast = select i1 %tmp_4_6_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_472_cast, i32* %lbImage_addr_52, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_52 = getelementptr [64 x i32]* %Image, i64 0, i64 51, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_52 = load i32* %Image_addr_52, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_3 = icmp ult i32 %Image_load_52, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_53 = getelementptr [64 x i32]* %lbImage, i64 0, i64 51, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_473_cast = select i1 %tmp_4_6_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_473_cast, i32* %lbImage_addr_53, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_53 = getelementptr [64 x i32]* %Image, i64 0, i64 52, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_53 = load i32* %Image_addr_53, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_4 = icmp ult i32 %Image_load_53, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_54 = getelementptr [64 x i32]* %lbImage, i64 0, i64 52, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_474_cast = select i1 %tmp_4_6_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_474_cast, i32* %lbImage_addr_54, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_54 = getelementptr [64 x i32]* %Image, i64 0, i64 53, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_54 = load i32* %Image_addr_54, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_5 = icmp ult i32 %Image_load_54, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_55 = getelementptr [64 x i32]* %lbImage, i64 0, i64 53, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_475_cast = select i1 %tmp_4_6_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_475_cast, i32* %lbImage_addr_55, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_55 = getelementptr [64 x i32]* %Image, i64 0, i64 54, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_55 = load i32* %Image_addr_55, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_6 = icmp ult i32 %Image_load_55, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_56 = getelementptr [64 x i32]* %lbImage, i64 0, i64 54, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_476_cast = select i1 %tmp_4_6_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_476_cast, i32* %lbImage_addr_56, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_56 = getelementptr [64 x i32]* %Image, i64 0, i64 55, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_56 = load i32* %Image_addr_56, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_6_7 = icmp ult i32 %Image_load_56, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_57 = getelementptr [64 x i32]* %lbImage, i64 0, i64 55, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_477_cast = select i1 %tmp_4_6_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_477_cast, i32* %lbImage_addr_57, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_57 = getelementptr [64 x i32]* %Image, i64 0, i64 56, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_57 = load i32* %Image_addr_57, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7 = icmp ult i32 %Image_load_57, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_58 = getelementptr [64 x i32]* %lbImage, i64 0, i64 56, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_478_cast = select i1 %tmp_4_7, i32 0, i32 1  ; [#uses=1 type=i32]
  store i32 %p_478_cast, i32* %lbImage_addr_58, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_58 = getelementptr [64 x i32]* %Image, i64 0, i64 57, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_58 = load i32* %Image_addr_58, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_1 = icmp ult i32 %Image_load_58, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_59 = getelementptr [64 x i32]* %lbImage, i64 0, i64 57, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_479_cast = select i1 %tmp_4_7_1, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_479_cast, i32* %lbImage_addr_59, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_59 = getelementptr [64 x i32]* %Image, i64 0, i64 58, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_59 = load i32* %Image_addr_59, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_2 = icmp ult i32 %Image_load_59, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_60 = getelementptr [64 x i32]* %lbImage, i64 0, i64 58, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_480_cast = select i1 %tmp_4_7_2, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_480_cast, i32* %lbImage_addr_60, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_60 = getelementptr [64 x i32]* %Image, i64 0, i64 59, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_60 = load i32* %Image_addr_60, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_3 = icmp ult i32 %Image_load_60, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_61 = getelementptr [64 x i32]* %lbImage, i64 0, i64 59, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_481_cast = select i1 %tmp_4_7_3, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_481_cast, i32* %lbImage_addr_61, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_61 = getelementptr [64 x i32]* %Image, i64 0, i64 60, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_61 = load i32* %Image_addr_61, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_4 = icmp ult i32 %Image_load_61, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_62 = getelementptr [64 x i32]* %lbImage, i64 0, i64 60, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_482_cast = select i1 %tmp_4_7_4, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_482_cast, i32* %lbImage_addr_62, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_62 = getelementptr [64 x i32]* %Image, i64 0, i64 61, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_62 = load i32* %Image_addr_62, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_5 = icmp ult i32 %Image_load_62, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_63 = getelementptr [64 x i32]* %lbImage, i64 0, i64 61, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_483_cast = select i1 %tmp_4_7_5, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_483_cast, i32* %lbImage_addr_63, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_63 = getelementptr [64 x i32]* %Image, i64 0, i64 62, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_63 = load i32* %Image_addr_63, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_6 = icmp ult i32 %Image_load_63, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_64 = getelementptr [64 x i32]* %lbImage, i64 0, i64 62, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_484_cast = select i1 %tmp_4_7_6, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_484_cast, i32* %lbImage_addr_64, align 4, !dbg !314 ; [debug line = 41:5]
  %Image_addr_64 = getelementptr [64 x i32]* %Image, i64 0, i64 63, !dbg !309 ; [#uses=1 type=i32*] [debug line = 40:4]
  %Image_load_64 = load i32* %Image_addr_64, align 4, !dbg !309 ; [#uses=1 type=i32] [debug line = 40:4]
  %tmp_4_7_7 = icmp ult i32 %Image_load_64, 70, !dbg !309 ; [#uses=1 type=i1] [debug line = 40:4]
  %lbImage_addr_65 = getelementptr [64 x i32]* %lbImage, i64 0, i64 63, !dbg !314 ; [#uses=1 type=i32*] [debug line = 41:5]
  %p_485_cast = select i1 %tmp_4_7_7, i32 0, i32 1 ; [#uses=1 type=i32]
  store i32 %p_485_cast, i32* %lbImage_addr_65, align 4, !dbg !314 ; [debug line = 41:5]
  ret void, !dbg !315                             ; [debug line = 47:1]
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_4 = zext i3 %1 to i7                     ; [#uses=1 type=i7]
  %empty_5 = shl i7 %empty, 3                     ; [#uses=1 type=i7]
  %empty_6 = or i7 %empty_5, %empty_4             ; [#uses=1 type=i7]
  ret i7 %empty_6
}

; [#uses=1]
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
!57 = metadata !{i32 786689, metadata !58, metadata !"Image", null, i32 137, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786478, i32 0, metadata !59, metadata !"CCLabel", metadata !"CCLabel", metadata !"_Z7CCLabelPA8_jS0_P10starStructPjP8centroid", metadata !59, i32 137, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !79, i32 137} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786473, metadata !"ConnectedComponentLabeling_HLS/core.cpp", metadata !"d:/Dropbox/DangKhoa/CEE_Cache/StarTrackingProject", null} ; [ DW_TAG_file_type ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !63, metadata !63, metadata !67, metadata !87, metadata !88}
!62 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !62, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786434, null, metadata !"starStruct", metadata !59, i32 14, i64 128, i64 32, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_class_type ]
!69 = metadata !{metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !81}
!70 = metadata !{i32 786445, metadata !68, metadata !"status", metadata !59, i32 15, i64 8, i64 8, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ]
!71 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786445, metadata !68, metadata !"totalIntensity", metadata !59, i32 16, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ]
!73 = metadata !{i32 786445, metadata !68, metadata !"x", metadata !59, i32 17, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ]
!74 = metadata !{i32 786445, metadata !68, metadata !"y", metadata !59, i32 18, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ]
!75 = metadata !{i32 786478, i32 0, metadata !68, metadata !"starStruct", metadata !"starStruct", metadata !"", metadata !59, i32 14, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !79, i32 14} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !78}
!78 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !68} ; [ DW_TAG_pointer_type ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!81 = metadata !{i32 786478, i32 0, metadata !68, metadata !"operator=", metadata !"operator=", metadata !"_ZN10starStructaSERKS_", metadata !59, i32 14, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !79, i32 14} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !84, metadata !78, metadata !85}
!84 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_reference_type ]
!85 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_reference_type ]
!86 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_const_type ]
!87 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!88 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ]
!89 = metadata !{i32 786434, null, metadata !"centroid", metadata !59, i32 21, i64 96, i64 32, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_class_type ]
!90 = metadata !{metadata !91, metadata !92, metadata !94, metadata !95, metadata !99}
!91 = metadata !{i32 786445, metadata !89, metadata !"root", metadata !59, i32 22, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ]
!92 = metadata !{i32 786445, metadata !89, metadata !"x", metadata !59, i32 23, i64 32, i64 32, i64 32, i32 0, metadata !93} ; [ DW_TAG_member ]
!93 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 786445, metadata !89, metadata !"y", metadata !59, i32 24, i64 32, i64 32, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ]
!95 = metadata !{i32 786478, i32 0, metadata !89, metadata !"centroid", metadata !"centroid", metadata !"", metadata !59, i32 21, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !79, i32 21} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !98}
!98 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !89} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 786478, i32 0, metadata !89, metadata !"operator=", metadata !"operator=", metadata !"_ZN8centroidaSERKS_", metadata !59, i32 21, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !79, i32 21} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !102, metadata !98, metadata !103}
!102 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_reference_type ]
!103 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_reference_type ]
!104 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_const_type ]
!105 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !62, metadata !106, i32 0, i32 0} ; [ DW_TAG_array_type ]
!106 = metadata !{metadata !66, metadata !66}
!107 = metadata !{i32 137, i32 27, metadata !58, null}
!108 = metadata !{i32 786689, metadata !58, metadata !"lbImage", null, i32 137, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 137, i32 49, metadata !58, null}
!110 = metadata !{i32 790531, metadata !111, metadata !"starData.status", null, i32 137, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!111 = metadata !{i32 786689, metadata !58, metadata !"starData", metadata !59, i32 50331785, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 240, i64 32, i32 0, i32 0, metadata !113, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!113 = metadata !{i32 786438, null, metadata !"starStruct", metadata !59, i32 14, i64 8, i64 32, i32 0, i32 0, null, metadata !114, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!114 = metadata !{metadata !70}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 29}      ; [ DW_TAG_subrange_type ]
!117 = metadata !{i32 137, i32 75, metadata !58, null}
!118 = metadata !{i32 790531, metadata !111, metadata !"starData.totalIntensity", null, i32 137, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!119 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !120, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!120 = metadata !{i32 786438, null, metadata !"starStruct", metadata !59, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!121 = metadata !{metadata !72}
!122 = metadata !{i32 790531, metadata !111, metadata !"starData.x", null, i32 137, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !124, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!124 = metadata !{i32 786438, null, metadata !"starStruct", metadata !59, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !125, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!125 = metadata !{metadata !73}
!126 = metadata !{i32 790531, metadata !111, metadata !"starData.y", null, i32 137, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!127 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !128, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!128 = metadata !{i32 786438, null, metadata !"starStruct", metadata !59, i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !129, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!129 = metadata !{metadata !74}
!130 = metadata !{i32 786689, metadata !58, metadata !"set", null, i32 137, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !62, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!132 = metadata !{i32 137, i32 98, metadata !58, null}
!133 = metadata !{i32 790531, metadata !134, metadata !"centroidData.root", null, i32 137, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!134 = metadata !{i32 786689, metadata !58, metadata !"centroidData", metadata !59, i32 83886217, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !136, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!136 = metadata !{i32 786438, null, metadata !"centroid", metadata !59, i32 21, i64 32, i64 32, i32 0, i32 0, null, metadata !137, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!137 = metadata !{metadata !91}
!138 = metadata !{i32 137, i32 116, metadata !58, null}
!139 = metadata !{i32 790531, metadata !134, metadata !"centroidData.x", null, i32 137, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!140 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !141, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!141 = metadata !{i32 786438, null, metadata !"centroid", metadata !59, i32 21, i64 32, i64 32, i32 0, i32 0, null, metadata !142, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!142 = metadata !{metadata !92}
!143 = metadata !{i32 790531, metadata !134, metadata !"centroidData.y", null, i32 137, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!144 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !145, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!145 = metadata !{i32 786438, null, metadata !"centroid", metadata !59, i32 21, i64 32, i64 32, i32 0, i32 0, null, metadata !146, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!146 = metadata !{metadata !94}
!147 = metadata !{i32 138, i32 2, metadata !148, null}
!148 = metadata !{i32 786443, metadata !58, i32 137, i32 134, metadata !59, i32 24} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 139, i32 22, metadata !148, null}
!150 = metadata !{i32 786688, metadata !148, metadata !"setCount", metadata !59, i32 139, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 140, i32 31, metadata !148, null}
!152 = metadata !{i32 786688, metadata !148, metadata !"centroidDataCount", metadata !59, i32 140, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 142, i32 2, metadata !148, null}
!154 = metadata !{i32 786689, metadata !155, metadata !"setCount", metadata !59, i32 67108970, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 786478, i32 0, metadata !59, metadata !"calCentroid", metadata !"calCentroid", metadata !"_Z11calCentroidPjP10starStructP8centroidj", metadata !59, i32 106, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !79, i32 106} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !62, metadata !87, metadata !67, metadata !88, metadata !62}
!158 = metadata !{i32 106, i32 101, metadata !155, null}
!159 = metadata !{i32 786689, metadata !155, metadata !"set", null, i32 106, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 106, i32 31, metadata !155, null}
!161 = metadata !{i32 790531, metadata !162, metadata !"starData.status", null, i32 106, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!162 = metadata !{i32 786689, metadata !155, metadata !"starData", metadata !59, i32 33554538, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 106, i32 51, metadata !155, null}
!164 = metadata !{i32 790531, metadata !162, metadata !"starData.totalIntensity", null, i32 106, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!165 = metadata !{i32 790531, metadata !162, metadata !"starData.x", null, i32 106, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!166 = metadata !{i32 790531, metadata !162, metadata !"starData.y", null, i32 106, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!167 = metadata !{i32 790531, metadata !168, metadata !"centroidData.root", null, i32 106, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!168 = metadata !{i32 786689, metadata !155, metadata !"centroidData", metadata !59, i32 50331754, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 106, i32 74, metadata !155, null}
!170 = metadata !{i32 790531, metadata !168, metadata !"centroidData.x", null, i32 106, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!171 = metadata !{i32 790531, metadata !168, metadata !"centroidData.y", null, i32 106, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!172 = metadata !{i32 111, i32 6, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 111, i32 2, metadata !59, i32 18} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !155, i32 106, i32 111, metadata !59, i32 17} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 123, i32 6, metadata !176, null}
!176 = metadata !{i32 786443, metadata !174, i32 123, i32 2, metadata !59, i32 21} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786688, metadata !178, metadata !"temp", metadata !59, i32 28, metadata !62, i32 0, metadata !182} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 786443, metadata !179, i32 27, i32 44, metadata !59, i32 0} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 786478, i32 0, metadata !59, metadata !"find", metadata !"find", metadata !"_Z4findjPj", metadata !59, i32 27, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !79, i32 27} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !62, metadata !62, metadata !87}
!182 = metadata !{i32 114, i32 11, metadata !183, null}
!183 = metadata !{i32 786443, metadata !184, i32 113, i32 18, metadata !59, i32 20} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 786443, metadata !173, i32 111, i32 32, metadata !59, i32 19} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 28, i32 19, metadata !178, metadata !182}
!186 = metadata !{i32 786689, metadata !179, metadata !"i", metadata !59, i32 16777243, metadata !62, i32 0, metadata !182} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 27, i32 24, metadata !179, metadata !182}
!188 = metadata !{i32 111, i32 33, metadata !184, null}
!189 = metadata !{i32 112, i32 1, metadata !184, null}
!190 = metadata !{i32 113, i32 2, metadata !184, null}
!191 = metadata !{i32 29, i32 2, metadata !178, metadata !182}
!192 = metadata !{i32 30, i32 3, metadata !193, metadata !182}
!193 = metadata !{i32 786443, metadata !178, i32 29, i32 28, metadata !59, i32 1} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 786688, metadata !174, metadata !"root", metadata !59, i32 108, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 115, i32 4, metadata !183, null}
!196 = metadata !{i32 116, i32 4, metadata !183, null}
!197 = metadata !{i32 117, i32 4, metadata !183, null}
!198 = metadata !{i32 118, i32 4, metadata !183, null}
!199 = metadata !{i32 119, i32 3, metadata !183, null}
!200 = metadata !{i32 120, i32 2, metadata !184, null}
!201 = metadata !{i32 111, i32 27, metadata !173, null}
!202 = metadata !{i32 786688, metadata !174, metadata !"i", metadata !59, i32 107, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 123, i32 33, metadata !204, null}
!204 = metadata !{i32 786443, metadata !176, i32 123, i32 32, metadata !59, i32 22} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 124, i32 1, metadata !204, null}
!206 = metadata !{i32 125, i32 2, metadata !204, null}
!207 = metadata !{i32 786688, metadata !174, metadata !"centroidDataCount", metadata !59, i32 109, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 131, i32 4, metadata !209, null}
!209 = metadata !{i32 786443, metadata !204, i32 125, i32 33, metadata !59, i32 23} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 790529, metadata !211, metadata !"temp.root", null, i32 110, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!211 = metadata !{i32 786688, metadata !174, metadata !"temp", metadata !59, i32 110, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 126, i32 4, metadata !209, null}
!213 = metadata !{i32 127, i32 4, metadata !209, null}
!214 = metadata !{i32 790529, metadata !211, metadata !"temp.x", null, i32 110, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!215 = metadata !{i32 128, i32 4, metadata !209, null}
!216 = metadata !{i32 790529, metadata !211, metadata !"temp.y", null, i32 110, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 130, i32 4, metadata !209, null}
!218 = metadata !{i32 132, i32 3, metadata !209, null}
!219 = metadata !{i32 133, i32 2, metadata !204, null}
!220 = metadata !{i32 123, i32 27, metadata !176, null}
!221 = metadata !{i32 134, i32 2, metadata !174, null}
!222 = metadata !{i32 786689, metadata !223, metadata !"Image", null, i32 49, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 786478, i32 0, metadata !59, metadata !"firstPass", metadata !"firstPass", metadata !"_Z9firstPassPA8_jS0_P10starStructPj", metadata !59, i32 49, metadata !224, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !79, i32 52} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !62, metadata !63, metadata !63, metadata !67, metadata !87}
!226 = metadata !{i32 49, i32 30, metadata !223, null}
!227 = metadata !{i32 786689, metadata !223, metadata !"lbImage", null, i32 50, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 50, i32 15, metadata !223, null}
!229 = metadata !{i32 790531, metadata !230, metadata !"starData.status", null, i32 51, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!230 = metadata !{i32 786689, metadata !223, metadata !"starData", metadata !59, i32 50331699, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 51, i32 17, metadata !223, null}
!232 = metadata !{i32 790531, metadata !230, metadata !"starData.totalIntensity", null, i32 51, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!233 = metadata !{i32 790531, metadata !230, metadata !"starData.x", null, i32 51, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!234 = metadata !{i32 790531, metadata !230, metadata !"starData.y", null, i32 51, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!235 = metadata !{i32 786689, metadata !223, metadata !"set", null, i32 52, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 52, i32 15, metadata !223, null}
!237 = metadata !{i32 61, i32 6, metadata !238, null}
!238 = metadata !{i32 786443, metadata !239, i32 61, i32 2, metadata !59, i32 8} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 786443, metadata !223, i32 52, i32 24, metadata !59, i32 7} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 68, i32 4, metadata !241, null}
!241 = metadata !{i32 786443, metadata !242, i32 62, i32 26, metadata !59, i32 11} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786443, metadata !243, i32 62, i32 3, metadata !59, i32 10} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 786443, metadata !238, i32 61, i32 25, metadata !59, i32 9} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 786688, metadata !239, metadata !"prevAbove", metadata !59, i32 55, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 69, i32 4, metadata !241, null}
!246 = metadata !{i32 786688, metadata !239, metadata !"prevLeft", metadata !59, i32 56, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 71, i32 4, metadata !241, null}
!248 = metadata !{i32 786688, metadata !239, metadata !"setCount", metadata !59, i32 57, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 82, i32 5, metadata !250, null}
!250 = metadata !{i32 786443, metadata !241, i32 71, i32 45, metadata !59, i32 13} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 786688, metadata !239, metadata !"label", metadata !59, i32 54, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 72, i32 5, metadata !250, null}
!253 = metadata !{i32 73, i32 5, metadata !250, null}
!254 = metadata !{i32 77, i32 5, metadata !250, null}
!255 = metadata !{i32 790529, metadata !256, metadata !"temp.totalIntensity", null, i32 58, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!256 = metadata !{i32 786688, metadata !239, metadata !"temp", metadata !59, i32 58, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 78, i32 5, metadata !250, null}
!258 = metadata !{i32 790529, metadata !256, metadata !"temp.x", null, i32 58, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!259 = metadata !{i32 79, i32 5, metadata !250, null}
!260 = metadata !{i32 790529, metadata !256, metadata !"temp.y", null, i32 58, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!261 = metadata !{i32 80, i32 5, metadata !250, null}
!262 = metadata !{i32 83, i32 4, metadata !250, null}
!263 = metadata !{i32 86, i32 5, metadata !264, null}
!264 = metadata !{i32 786443, metadata !241, i32 84, i32 9, metadata !59, i32 14} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 786688, metadata !178, metadata !"temp", metadata !59, i32 28, metadata !62, i32 0, metadata !266} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 92, i32 17, metadata !267, null}
!267 = metadata !{i32 786443, metadata !264, i32 91, i32 10, metadata !59, i32 16} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 28, i32 19, metadata !178, metadata !266}
!269 = metadata !{i32 786689, metadata !179, metadata !"i", metadata !59, i32 16777243, metadata !62, i32 0, metadata !266} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 27, i32 24, metadata !179, metadata !266}
!271 = metadata !{i32 786688, metadata !178, metadata !"temp", metadata !59, i32 28, metadata !62, i32 0, metadata !272} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 89, i32 17, metadata !273, null}
!273 = metadata !{i32 786443, metadata !264, i32 88, i32 21, metadata !59, i32 15} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 28, i32 19, metadata !178, metadata !272}
!275 = metadata !{i32 786689, metadata !179, metadata !"i", metadata !59, i32 16777243, metadata !62, i32 0, metadata !272} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 27, i32 24, metadata !179, metadata !272}
!277 = metadata !{i32 786688, metadata !239, metadata !"min", metadata !59, i32 59, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 87, i32 5, metadata !264, null}
!279 = metadata !{i32 786688, metadata !239, metadata !"max", metadata !59, i32 60, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 88, i32 5, metadata !264, null}
!281 = metadata !{i32 29, i32 2, metadata !178, metadata !272}
!282 = metadata !{i32 30, i32 3, metadata !193, metadata !272}
!283 = metadata !{i32 90, i32 5, metadata !273, null}
!284 = metadata !{i32 29, i32 2, metadata !178, metadata !266}
!285 = metadata !{i32 30, i32 3, metadata !193, metadata !266}
!286 = metadata !{i32 94, i32 5, metadata !264, null}
!287 = metadata !{i32 97, i32 5, metadata !264, null}
!288 = metadata !{i32 98, i32 5, metadata !264, null}
!289 = metadata !{i32 99, i32 5, metadata !264, null}
!290 = metadata !{i32 101, i32 3, metadata !241, null}
!291 = metadata !{i32 101, i32 34, metadata !241, null}
!292 = metadata !{i32 62, i32 21, metadata !242, null}
!293 = metadata !{i32 786688, metadata !239, metadata !"j", metadata !59, i32 53, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 62, i32 7, metadata !242, null}
!295 = metadata !{i32 61, i32 20, metadata !238, null}
!296 = metadata !{i32 62, i32 27, metadata !241, null}
!297 = metadata !{i32 63, i32 1, metadata !241, null}
!298 = metadata !{i32 64, i32 2, metadata !241, null}
!299 = metadata !{i32 103, i32 2, metadata !239, null}
!300 = metadata !{i32 786689, metadata !301, metadata !"Image", null, i32 35, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 786478, i32 0, metadata !59, metadata !"preProcess", metadata !"preProcess", metadata !"_Z10preProcessPA8_jS0_", metadata !59, i32 35, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !79, i32 35} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{null, metadata !63, metadata !63}
!304 = metadata !{i32 35, i32 26, metadata !301, null}
!305 = metadata !{i32 786689, metadata !301, metadata !"lbImage", null, i32 35, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!306 = metadata !{i32 35, i32 48, metadata !301, null}
!307 = metadata !{i32 37, i32 1, metadata !308, null}
!308 = metadata !{i32 786443, metadata !301, i32 35, i32 63, metadata !59, i32 2} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 40, i32 4, metadata !310, null}
!310 = metadata !{i32 786443, metadata !311, i32 39, i32 27, metadata !59, i32 6} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 786443, metadata !312, i32 39, i32 3, metadata !59, i32 5} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 786443, metadata !313, i32 38, i32 26, metadata !59, i32 4} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 786443, metadata !308, i32 38, i32 2, metadata !59, i32 3} ; [ DW_TAG_lexical_block ]
!314 = metadata !{i32 41, i32 5, metadata !310, null}
!315 = metadata !{i32 47, i32 1, metadata !308, null}
