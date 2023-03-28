; ModuleID = '/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2/lab02/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_matrixmul_ir([3 x i8]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %a, [3 x i8]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %b, [3 x i16]* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %res) local_unnamed_addr #1 {
entry:
  %a_copy1 = alloca [3 x i24], align 512
  %b_copy2 = alloca [3 x i24], align 512
  %res_copy = alloca [3 x [3 x i16]], align 512
  %0 = bitcast [3 x i8]* %a to [3 x [3 x i8]]*
  %1 = bitcast [3 x i8]* %b to [3 x [3 x i8]]*
  %2 = bitcast [3 x i16]* %res to [3 x [3 x i16]]*
  call void @copy_in([3 x [3 x i8]]* nonnull %0, [3 x i24]* nonnull align 512 %a_copy1, [3 x [3 x i8]]* nonnull %1, [3 x i24]* nonnull align 512 %b_copy2, [3 x [3 x i16]]* nonnull %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
  %a_copy.gep3 = getelementptr [3 x i24], [3 x i24]* %a_copy1, i64 0, i32 0
  %3 = getelementptr inbounds [3 x [3 x i16]], [3 x [3 x i16]]* %res_copy, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"(i24* %a_copy.gep3, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"([3 x i24]* %b_copy2, i32 0, i32 1, i32 0) ], !dbg !374
  call void @apatb_matrixmul_hw([3 x i24]* %a_copy1, [3 x i24]* %b_copy2, [3 x i16]* %3)
  call void @copy_back([3 x [3 x i8]]* %0, [3 x i24]* %a_copy1, [3 x [3 x i8]]* %1, [3 x i24]* %b_copy2, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* %res_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* noalias align 512, [3 x [3 x i16]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3 x [3 x i16]]* %0, null
  %3 = icmp eq [3 x [3 x i16]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i16, i16* %src.addr68, align 2
  store i16 %5, i16* %dst.addr57, align 2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.3.4([3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x [3 x i8]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x i24]* %0, null
  %3 = icmp eq [3 x [3 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %dst.addr571 = getelementptr [3 x i24], [3 x i24]* %0, i64 0, i64 %for.loop.idx10
  %dst.addr571.promoted = load i24, i24* %dst.addr571, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %5 = phi i24 [ %dst.addr571.promoted, %for.loop ], [ %14, %for.loop2 ]
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 8, %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %7 = load i8, i8* %src.addr68, align 1
  %8 = trunc i64 %6 to i24
  %9 = shl i24 255, %8
  %10 = zext i8 %7 to i24
  %11 = shl i24 %10, %8
  %12 = xor i24 %9, -1
  %13 = and i24 %5, %12
  %14 = or i24 %13, %11
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i24 %14, i24* %dst.addr571, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.5.6([3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x [3 x i8]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x i24]* %0, null
  %3 = icmp eq [3 x [3 x i8]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = mul nuw nsw i64 8, %for.loop.idx10
  %6 = trunc i64 %5 to i24
  %7 = shl i24 255, %6
  %8 = xor i24 %7, -1
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr571 = getelementptr [3 x i24], [3 x i24]* %0, i64 0, i64 %for.loop.idx39
  %src.addr68 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %9 = load i8, i8* %src.addr68, align 1
  %10 = load i24, i24* %dst.addr571, align 4
  %11 = zext i8 %9 to i24
  %12 = shl i24 %11, %6
  %13 = and i24 %10, %8
  %14 = or i24 %13, %12
  store i24 %14, i24* %dst.addr571, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([3 x [3 x i8]]* noalias readonly "orig.arg.no"="0", [3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [3 x [3 x i8]]* noalias readonly "orig.arg.no"="2", [3 x i24]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [3 x [3 x i16]]* noalias readonly "orig.arg.no"="4", [3 x [3 x i16]]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.3.4([3 x i24]* align 512 %1, [3 x [3 x i8]]* %0)
  call void @onebyonecpy_hls.p0a3a3i8.5.6([3 x i24]* align 512 %3, [3 x [3 x i8]]* %2)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* align 512 %5, [3 x [3 x i16]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.11.12([3 x [3 x i8]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x [3 x i8]]* %0, null
  %3 = icmp eq [3 x i24]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr681 = getelementptr [3 x i24], [3 x i24]* %1, i64 0, i64 %for.loop.idx10
  %5 = load i24, i24* %src.addr681, align 4
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %6 = mul nuw nsw i64 8, %for.loop.idx39
  %7 = trunc i64 %6 to i24
  %8 = lshr i24 %5, %7
  %9 = trunc i24 %8 to i8
  store i8 %9, i8* %dst.addr57, align 1
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3a3i8.13.14([3 x [3 x i8]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [3 x [3 x i8]]* %0, null
  %3 = icmp eq [3 x i24]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = mul nuw nsw i64 8, %for.loop.idx10
  %6 = trunc i64 %5 to i24
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr681 = getelementptr [3 x i24], [3 x i24]* %1, i64 0, i64 %for.loop.idx39
  %7 = load i24, i24* %src.addr681, align 4
  %8 = lshr i24 %7, %6
  %9 = trunc i24 %8 to i8
  store i8 %9, i8* %dst.addr57, align 1
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([3 x [3 x i8]]* noalias "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [3 x [3 x i8]]* noalias "orig.arg.no"="2", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [3 x [3 x i16]]* noalias "orig.arg.no"="4", [3 x [3 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.11.12([3 x [3 x i8]]* %0, [3 x i24]* align 512 %1)
  call void @onebyonecpy_hls.p0a3a3i8.13.14([3 x [3 x i8]]* %2, [3 x i24]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %4, [3 x [3 x i16]]* align 512 %5)
  ret void
}

declare void @apatb_matrixmul_hw([3 x i24]*, [3 x i24]*, [3 x i16]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([3 x [3 x i8]]* noalias "orig.arg.no"="0", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [3 x [3 x i8]]* noalias "orig.arg.no"="2", [3 x i24]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [3 x [3 x i16]]* noalias "orig.arg.no"="4", [3 x [3 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %4, [3 x [3 x i16]]* align 512 %5)
  ret void
}

define void @matrixmul_hw_stub_wrapper([3 x i24]*, [3 x i24]*, [3 x i16]*) #5 {
entry:
  %3 = alloca [3 x [3 x i8]]
  %4 = alloca [3 x [3 x i8]]
  %5 = bitcast [3 x i16]* %2 to [3 x [3 x i16]]*
  call void @copy_out([3 x [3 x i8]]* %3, [3 x i24]* %0, [3 x [3 x i8]]* %4, [3 x i24]* %1, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  %6 = bitcast [3 x [3 x i8]]* %3 to [3 x i8]*
  %7 = bitcast [3 x [3 x i8]]* %4 to [3 x i8]*
  %8 = bitcast [3 x [3 x i16]]* %5 to [3 x i16]*
  call void @matrixmul_hw_stub([3 x i8]* %6, [3 x i8]* %7, [3 x i16]* %8)
  call void @copy_in([3 x [3 x i8]]* %3, [3 x i24]* %0, [3 x [3 x i8]]* %4, [3 x i24]* %1, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %5)
  ret void
}

declare void @matrixmul_hw_stub([3 x i8]*, [3 x i8]*, [3 x i16]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 54, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "matrixmul", linkageName: "_Z9matrixmulPA3_cS0_PA3_s", scope: !7, file: !7, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !24, variables: !4)
!7 = !DIFile(filename: "../Design_Optimization/lab2/matrixmul.cpp", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !17, !20}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, elements: !15)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_a_t", file: !13, line: 60, baseType: !14)
!13 = !DIFile(filename: "../Design_Optimization/lab2/matrixmul.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !15)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_b_t", file: !13, line: 61, baseType: !14)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !15)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_t", file: !13, line: 62, baseType: !23)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !25, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !26)
!25 = !DIFile(filename: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2/lab02/solution1/.autopilot/db/matrixmul.pp.0.cpp", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!26 = !{!27, !35, !42, !44, !46, !50, !52, !54, !56, !58, !60, !62, !64, !69, !73, !75, !77, !82, !84, !86, !88, !90, !92, !94, !97, !100, !102, !106, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !135, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !173, !177, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !203, !207, !211, !213, !215, !217, !222, !226, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !259, !263, !267, !269, !271, !273, !279, !283, !287, !289, !291, !293, !295, !297, !299, !303, !307, !309, !311, !313, !315, !319, !323, !327, !329, !331, !333, !335, !337, !339, !343, !347, !351, !353, !357, !361, !363, !365, !367, !369, !371, !373}
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !29, file: !34, line: 52)
!28 = !DINamespace(name: "std", scope: null)
!29 = !DISubprogram(name: "abs", scope: !30, file: !30, line: 840, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIFile(filename: "/opt/Xilinx/Vitis_HLS/2022.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !36, file: !41, line: 83)
!36 = !DISubprogram(name: "acos", scope: !37, file: !37, line: 53, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40}
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !DIFile(filename: "/opt/Xilinx/Vitis_HLS/2022.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cmath", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !43, file: !41, line: 102)
!43 = !DISubprogram(name: "asin", scope: !37, file: !37, line: 55, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !45, file: !41, line: 121)
!45 = !DISubprogram(name: "atan", scope: !37, file: !37, line: 57, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !47, file: !41, line: 140)
!47 = !DISubprogram(name: "atan2", scope: !37, file: !37, line: 59, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DISubroutineType(types: !49)
!49 = !{!40, !40, !40}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !51, file: !41, line: 161)
!51 = !DISubprogram(name: "ceil", scope: !37, file: !37, line: 159, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !53, file: !41, line: 180)
!53 = !DISubprogram(name: "cos", scope: !37, file: !37, line: 62, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !55, file: !41, line: 199)
!55 = !DISubprogram(name: "cosh", scope: !37, file: !37, line: 71, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !57, file: !41, line: 218)
!57 = !DISubprogram(name: "exp", scope: !37, file: !37, line: 95, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !59, file: !41, line: 237)
!59 = !DISubprogram(name: "fabs", scope: !37, file: !37, line: 162, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !61, file: !41, line: 256)
!61 = !DISubprogram(name: "floor", scope: !37, file: !37, line: 165, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !63, file: !41, line: 275)
!63 = !DISubprogram(name: "fmod", scope: !37, file: !37, line: 168, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !65, file: !41, line: 296)
!65 = !DISubprogram(name: "frexp", scope: !37, file: !37, line: 98, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{!40, !40, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !70, file: !41, line: 315)
!70 = !DISubprogram(name: "ldexp", scope: !37, file: !37, line: 101, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!40, !40, !33}
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !74, file: !41, line: 334)
!74 = !DISubprogram(name: "log", scope: !37, file: !37, line: 104, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !76, file: !41, line: 353)
!76 = !DISubprogram(name: "log10", scope: !37, file: !37, line: 107, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !78, file: !41, line: 372)
!78 = !DISubprogram(name: "modf", scope: !37, file: !37, line: 110, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DISubroutineType(types: !80)
!80 = !{!40, !40, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !83, file: !41, line: 384)
!83 = !DISubprogram(name: "pow", scope: !37, file: !37, line: 140, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !85, file: !41, line: 421)
!85 = !DISubprogram(name: "sin", scope: !37, file: !37, line: 64, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !87, file: !41, line: 440)
!87 = !DISubprogram(name: "sinh", scope: !37, file: !37, line: 73, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !89, file: !41, line: 459)
!89 = !DISubprogram(name: "sqrt", scope: !37, file: !37, line: 143, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !91, file: !41, line: 478)
!91 = !DISubprogram(name: "tan", scope: !37, file: !37, line: 66, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !93, file: !41, line: 497)
!93 = !DISubprogram(name: "tanh", scope: !37, file: !37, line: 75, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !95, file: !41, line: 1065)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !96, line: 150, baseType: !40)
!96 = !DIFile(filename: "/usr/include/math.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/labA_lab2")
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !98, file: !41, line: 1066)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !96, line: 149, baseType: !99)
!99 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !101, file: !41, line: 1069)
!101 = !DISubprogram(name: "acosh", scope: !37, file: !37, line: 85, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !103, file: !41, line: 1070)
!103 = !DISubprogram(name: "acoshf", scope: !37, file: !37, line: 85, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DISubroutineType(types: !105)
!105 = !{!99, !99}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !107, file: !41, line: 1071)
!107 = !DISubprogram(name: "acoshl", scope: !37, file: !37, line: 85, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !110}
!110 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !112, file: !41, line: 1073)
!112 = !DISubprogram(name: "asinh", scope: !37, file: !37, line: 87, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !114, file: !41, line: 1074)
!114 = !DISubprogram(name: "asinhf", scope: !37, file: !37, line: 87, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !116, file: !41, line: 1075)
!116 = !DISubprogram(name: "asinhl", scope: !37, file: !37, line: 87, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !118, file: !41, line: 1077)
!118 = !DISubprogram(name: "atanh", scope: !37, file: !37, line: 89, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !120, file: !41, line: 1078)
!120 = !DISubprogram(name: "atanhf", scope: !37, file: !37, line: 89, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !122, file: !41, line: 1079)
!122 = !DISubprogram(name: "atanhl", scope: !37, file: !37, line: 89, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !124, file: !41, line: 1081)
!124 = !DISubprogram(name: "cbrt", scope: !37, file: !37, line: 152, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !126, file: !41, line: 1082)
!126 = !DISubprogram(name: "cbrtf", scope: !37, file: !37, line: 152, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !128, file: !41, line: 1083)
!128 = !DISubprogram(name: "cbrtl", scope: !37, file: !37, line: 152, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !130, file: !41, line: 1085)
!130 = !DISubprogram(name: "copysign", scope: !37, file: !37, line: 196, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !132, file: !41, line: 1086)
!132 = !DISubprogram(name: "copysignf", scope: !37, file: !37, line: 196, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!99, !99, !99}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !136, file: !41, line: 1087)
!136 = !DISubprogram(name: "copysignl", scope: !37, file: !37, line: 196, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!110, !110, !110}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !140, file: !41, line: 1089)
!140 = !DISubprogram(name: "erf", scope: !37, file: !37, line: 228, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !142, file: !41, line: 1090)
!142 = !DISubprogram(name: "erff", scope: !37, file: !37, line: 228, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !144, file: !41, line: 1091)
!144 = !DISubprogram(name: "erfl", scope: !37, file: !37, line: 228, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !146, file: !41, line: 1093)
!146 = !DISubprogram(name: "erfc", scope: !37, file: !37, line: 229, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !148, file: !41, line: 1094)
!148 = !DISubprogram(name: "erfcf", scope: !37, file: !37, line: 229, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !150, file: !41, line: 1095)
!150 = !DISubprogram(name: "erfcl", scope: !37, file: !37, line: 229, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !152, file: !41, line: 1097)
!152 = !DISubprogram(name: "exp2", scope: !37, file: !37, line: 130, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !154, file: !41, line: 1098)
!154 = !DISubprogram(name: "exp2f", scope: !37, file: !37, line: 130, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !156, file: !41, line: 1099)
!156 = !DISubprogram(name: "exp2l", scope: !37, file: !37, line: 130, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !158, file: !41, line: 1101)
!158 = !DISubprogram(name: "expm1", scope: !37, file: !37, line: 119, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !160, file: !41, line: 1102)
!160 = !DISubprogram(name: "expm1f", scope: !37, file: !37, line: 119, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !162, file: !41, line: 1103)
!162 = !DISubprogram(name: "expm1l", scope: !37, file: !37, line: 119, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !164, file: !41, line: 1105)
!164 = !DISubprogram(name: "fdim", scope: !37, file: !37, line: 326, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !166, file: !41, line: 1106)
!166 = !DISubprogram(name: "fdimf", scope: !37, file: !37, line: 326, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !168, file: !41, line: 1107)
!168 = !DISubprogram(name: "fdiml", scope: !37, file: !37, line: 326, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !170, file: !41, line: 1109)
!170 = !DISubprogram(name: "fma", scope: !37, file: !37, line: 335, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!40, !40, !40, !40}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !174, file: !41, line: 1110)
!174 = !DISubprogram(name: "fmaf", scope: !37, file: !37, line: 335, type: !175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DISubroutineType(types: !176)
!176 = !{!99, !99, !99, !99}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !178, file: !41, line: 1111)
!178 = !DISubprogram(name: "fmal", scope: !37, file: !37, line: 335, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!110, !110, !110, !110}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !182, file: !41, line: 1113)
!182 = !DISubprogram(name: "fmax", scope: !37, file: !37, line: 329, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !184, file: !41, line: 1114)
!184 = !DISubprogram(name: "fmaxf", scope: !37, file: !37, line: 329, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !186, file: !41, line: 1115)
!186 = !DISubprogram(name: "fmaxl", scope: !37, file: !37, line: 329, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !188, file: !41, line: 1117)
!188 = !DISubprogram(name: "fmin", scope: !37, file: !37, line: 332, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !190, file: !41, line: 1118)
!190 = !DISubprogram(name: "fminf", scope: !37, file: !37, line: 332, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !192, file: !41, line: 1119)
!192 = !DISubprogram(name: "fminl", scope: !37, file: !37, line: 332, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !194, file: !41, line: 1121)
!194 = !DISubprogram(name: "hypot", scope: !37, file: !37, line: 147, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !196, file: !41, line: 1122)
!196 = !DISubprogram(name: "hypotf", scope: !37, file: !37, line: 147, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !198, file: !41, line: 1123)
!198 = !DISubprogram(name: "hypotl", scope: !37, file: !37, line: 147, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !200, file: !41, line: 1125)
!200 = !DISubprogram(name: "ilogb", scope: !37, file: !37, line: 280, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!33, !40}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !204, file: !41, line: 1126)
!204 = !DISubprogram(name: "ilogbf", scope: !37, file: !37, line: 280, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!33, !99}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !208, file: !41, line: 1127)
!208 = !DISubprogram(name: "ilogbl", scope: !37, file: !37, line: 280, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!33, !110}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !212, file: !41, line: 1129)
!212 = !DISubprogram(name: "lgamma", scope: !37, file: !37, line: 230, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !214, file: !41, line: 1130)
!214 = !DISubprogram(name: "lgammaf", scope: !37, file: !37, line: 230, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !216, file: !41, line: 1131)
!216 = !DISubprogram(name: "lgammal", scope: !37, file: !37, line: 230, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !218, file: !41, line: 1134)
!218 = !DISubprogram(name: "llrint", scope: !37, file: !37, line: 316, type: !219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !40}
!221 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !223, file: !41, line: 1135)
!223 = !DISubprogram(name: "llrintf", scope: !37, file: !37, line: 316, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!221, !99}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !227, file: !41, line: 1136)
!227 = !DISubprogram(name: "llrintl", scope: !37, file: !37, line: 316, type: !228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DISubroutineType(types: !229)
!229 = !{!221, !110}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !231, file: !41, line: 1138)
!231 = !DISubprogram(name: "llround", scope: !37, file: !37, line: 322, type: !219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !233, file: !41, line: 1139)
!233 = !DISubprogram(name: "llroundf", scope: !37, file: !37, line: 322, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !235, file: !41, line: 1140)
!235 = !DISubprogram(name: "llroundl", scope: !37, file: !37, line: 322, type: !228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !237, file: !41, line: 1143)
!237 = !DISubprogram(name: "log1p", scope: !37, file: !37, line: 122, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !239, file: !41, line: 1144)
!239 = !DISubprogram(name: "log1pf", scope: !37, file: !37, line: 122, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !241, file: !41, line: 1145)
!241 = !DISubprogram(name: "log1pl", scope: !37, file: !37, line: 122, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !243, file: !41, line: 1147)
!243 = !DISubprogram(name: "log2", scope: !37, file: !37, line: 133, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !245, file: !41, line: 1148)
!245 = !DISubprogram(name: "log2f", scope: !37, file: !37, line: 133, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !247, file: !41, line: 1149)
!247 = !DISubprogram(name: "log2l", scope: !37, file: !37, line: 133, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !249, file: !41, line: 1151)
!249 = !DISubprogram(name: "logb", scope: !37, file: !37, line: 125, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !251, file: !41, line: 1152)
!251 = !DISubprogram(name: "logbf", scope: !37, file: !37, line: 125, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !253, file: !41, line: 1153)
!253 = !DISubprogram(name: "logbl", scope: !37, file: !37, line: 125, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !255, file: !41, line: 1155)
!255 = !DISubprogram(name: "lrint", scope: !37, file: !37, line: 314, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !40}
!258 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !260, file: !41, line: 1156)
!260 = !DISubprogram(name: "lrintf", scope: !37, file: !37, line: 314, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!258, !99}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !264, file: !41, line: 1157)
!264 = !DISubprogram(name: "lrintl", scope: !37, file: !37, line: 314, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!258, !110}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !268, file: !41, line: 1159)
!268 = !DISubprogram(name: "lround", scope: !37, file: !37, line: 320, type: !256, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !270, file: !41, line: 1160)
!270 = !DISubprogram(name: "lroundf", scope: !37, file: !37, line: 320, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !272, file: !41, line: 1161)
!272 = !DISubprogram(name: "lroundl", scope: !37, file: !37, line: 320, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !274, file: !41, line: 1163)
!274 = !DISubprogram(name: "nan", scope: !37, file: !37, line: 201, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!40, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !280, file: !41, line: 1164)
!280 = !DISubprogram(name: "nanf", scope: !37, file: !37, line: 201, type: !281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!99, !277}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !284, file: !41, line: 1165)
!284 = !DISubprogram(name: "nanl", scope: !37, file: !37, line: 201, type: !285, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DISubroutineType(types: !286)
!286 = !{!110, !277}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !288, file: !41, line: 1167)
!288 = !DISubprogram(name: "nearbyint", scope: !37, file: !37, line: 294, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !290, file: !41, line: 1168)
!290 = !DISubprogram(name: "nearbyintf", scope: !37, file: !37, line: 294, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !292, file: !41, line: 1169)
!292 = !DISubprogram(name: "nearbyintl", scope: !37, file: !37, line: 294, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !294, file: !41, line: 1171)
!294 = !DISubprogram(name: "nextafter", scope: !37, file: !37, line: 259, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !296, file: !41, line: 1172)
!296 = !DISubprogram(name: "nextafterf", scope: !37, file: !37, line: 259, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !298, file: !41, line: 1173)
!298 = !DISubprogram(name: "nextafterl", scope: !37, file: !37, line: 259, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !300, file: !41, line: 1175)
!300 = !DISubprogram(name: "nexttoward", scope: !37, file: !37, line: 261, type: !301, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{!40, !40, !110}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !304, file: !41, line: 1176)
!304 = !DISubprogram(name: "nexttowardf", scope: !37, file: !37, line: 261, type: !305, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{!99, !99, !110}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !308, file: !41, line: 1177)
!308 = !DISubprogram(name: "nexttowardl", scope: !37, file: !37, line: 261, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !310, file: !41, line: 1179)
!310 = !DISubprogram(name: "remainder", scope: !37, file: !37, line: 272, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !312, file: !41, line: 1180)
!312 = !DISubprogram(name: "remainderf", scope: !37, file: !37, line: 272, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !314, file: !41, line: 1181)
!314 = !DISubprogram(name: "remainderl", scope: !37, file: !37, line: 272, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !316, file: !41, line: 1183)
!316 = !DISubprogram(name: "remquo", scope: !37, file: !37, line: 307, type: !317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{!40, !40, !40, !68}
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !320, file: !41, line: 1184)
!320 = !DISubprogram(name: "remquof", scope: !37, file: !37, line: 307, type: !321, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{!99, !99, !99, !68}
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !324, file: !41, line: 1185)
!324 = !DISubprogram(name: "remquol", scope: !37, file: !37, line: 307, type: !325, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!110, !110, !110, !68}
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !328, file: !41, line: 1187)
!328 = !DISubprogram(name: "rint", scope: !37, file: !37, line: 256, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !330, file: !41, line: 1188)
!330 = !DISubprogram(name: "rintf", scope: !37, file: !37, line: 256, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !332, file: !41, line: 1189)
!332 = !DISubprogram(name: "rintl", scope: !37, file: !37, line: 256, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !334, file: !41, line: 1191)
!334 = !DISubprogram(name: "round", scope: !37, file: !37, line: 298, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !336, file: !41, line: 1192)
!336 = !DISubprogram(name: "roundf", scope: !37, file: !37, line: 298, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !338, file: !41, line: 1193)
!338 = !DISubprogram(name: "roundl", scope: !37, file: !37, line: 298, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !340, file: !41, line: 1195)
!340 = !DISubprogram(name: "scalbln", scope: !37, file: !37, line: 290, type: !341, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DISubroutineType(types: !342)
!342 = !{!40, !40, !258}
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !344, file: !41, line: 1196)
!344 = !DISubprogram(name: "scalblnf", scope: !37, file: !37, line: 290, type: !345, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!345 = !DISubroutineType(types: !346)
!346 = !{!99, !99, !258}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !348, file: !41, line: 1197)
!348 = !DISubprogram(name: "scalblnl", scope: !37, file: !37, line: 290, type: !349, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!349 = !DISubroutineType(types: !350)
!350 = !{!110, !110, !258}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !352, file: !41, line: 1199)
!352 = !DISubprogram(name: "scalbn", scope: !37, file: !37, line: 276, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !354, file: !41, line: 1200)
!354 = !DISubprogram(name: "scalbnf", scope: !37, file: !37, line: 276, type: !355, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DISubroutineType(types: !356)
!356 = !{!99, !99, !33}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !358, file: !41, line: 1201)
!358 = !DISubprogram(name: "scalbnl", scope: !37, file: !37, line: 276, type: !359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{!110, !110, !33}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !362, file: !41, line: 1203)
!362 = !DISubprogram(name: "tgamma", scope: !37, file: !37, line: 235, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !364, file: !41, line: 1204)
!364 = !DISubprogram(name: "tgammaf", scope: !37, file: !37, line: 235, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !366, file: !41, line: 1205)
!366 = !DISubprogram(name: "tgammal", scope: !37, file: !37, line: 235, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !368, file: !41, line: 1207)
!368 = !DISubprogram(name: "trunc", scope: !37, file: !37, line: 302, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !370, file: !41, line: 1208)
!370 = !DISubprogram(name: "truncf", scope: !37, file: !37, line: 302, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !28, entity: !372, file: !41, line: 1209)
!372 = !DISubprogram(name: "truncl", scope: !37, file: !37, line: 302, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !24, entity: !28, file: !13, line: 50)
!374 = !DILocation(line: 53, column: 9, scope: !6)
