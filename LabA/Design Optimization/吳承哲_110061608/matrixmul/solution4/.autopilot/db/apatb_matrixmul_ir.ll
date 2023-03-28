; ModuleID = '/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/matrixmul/solution4/.autopilot/db/a.g.ld.5.gdce.bc'
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
  call void @llvm.sideeffect() #0 [ "xlx_array_reshape"([3 x i24]* %b_copy2, i32 0, i32 1, i32 0) ], !dbg !376
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
!5 = !DILocation(line: 9, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/matrixmul/solution4/directives.tcl", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!8 = distinct !DISubprogram(name: "matrixmul", linkageName: "_Z9matrixmulPA3_cS0_PA3_s", scope: !9, file: !9, line: 48, type: !10, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !26, variables: !4)
!9 = !DIFile(filename: "Design_Optimization/lab1/matrixmul.cpp", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !19, !22}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !17)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_a_t", file: !15, line: 60, baseType: !16)
!15 = !DIFile(filename: "Design_Optimization/lab1/matrixmul.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !17)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_b_t", file: !15, line: 61, baseType: !16)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 48, elements: !17)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_t", file: !15, line: 62, baseType: !25)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !27, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !28)
!27 = !DIFile(filename: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS/matrixmul/solution4/.autopilot/db/matrixmul.pp.0.cpp", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!28 = !{!29, !37, !44, !46, !48, !52, !54, !56, !58, !60, !62, !64, !66, !71, !75, !77, !79, !84, !86, !88, !90, !92, !94, !96, !99, !102, !104, !108, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !137, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !175, !179, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !205, !209, !213, !215, !217, !219, !224, !228, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !261, !265, !269, !271, !273, !275, !281, !285, !289, !291, !293, !295, !297, !299, !301, !305, !309, !311, !313, !315, !317, !321, !325, !329, !331, !333, !335, !337, !339, !341, !345, !349, !353, !355, !359, !363, !365, !367, !369, !371, !373, !375}
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !31, file: !36, line: 52)
!30 = !DINamespace(name: "std", scope: null)
!31 = !DISubprogram(name: "abs", scope: !32, file: !32, line: 840, type: !33, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!32 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !35}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIFile(filename: "/opt/Xilinx/Vitis_HLS/2022.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !38, file: !43, line: 83)
!38 = !DISubprogram(name: "acos", scope: !39, file: !39, line: 53, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !42}
!42 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!43 = !DIFile(filename: "/opt/Xilinx/Vitis_HLS/2022.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cmath", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !45, file: !43, line: 102)
!45 = !DISubprogram(name: "asin", scope: !39, file: !39, line: 55, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !47, file: !43, line: 121)
!47 = !DISubprogram(name: "atan", scope: !39, file: !39, line: 57, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !49, file: !43, line: 140)
!49 = !DISubprogram(name: "atan2", scope: !39, file: !39, line: 59, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!50 = !DISubroutineType(types: !51)
!51 = !{!42, !42, !42}
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !53, file: !43, line: 161)
!53 = !DISubprogram(name: "ceil", scope: !39, file: !39, line: 159, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !55, file: !43, line: 180)
!55 = !DISubprogram(name: "cos", scope: !39, file: !39, line: 62, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !57, file: !43, line: 199)
!57 = !DISubprogram(name: "cosh", scope: !39, file: !39, line: 71, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !59, file: !43, line: 218)
!59 = !DISubprogram(name: "exp", scope: !39, file: !39, line: 95, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !61, file: !43, line: 237)
!61 = !DISubprogram(name: "fabs", scope: !39, file: !39, line: 162, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !63, file: !43, line: 256)
!63 = !DISubprogram(name: "floor", scope: !39, file: !39, line: 165, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !65, file: !43, line: 275)
!65 = !DISubprogram(name: "fmod", scope: !39, file: !39, line: 168, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !67, file: !43, line: 296)
!67 = !DISubprogram(name: "frexp", scope: !39, file: !39, line: 98, type: !68, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{!42, !42, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !72, file: !43, line: 315)
!72 = !DISubprogram(name: "ldexp", scope: !39, file: !39, line: 101, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{!42, !42, !35}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !76, file: !43, line: 334)
!76 = !DISubprogram(name: "log", scope: !39, file: !39, line: 104, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !78, file: !43, line: 353)
!78 = !DISubprogram(name: "log10", scope: !39, file: !39, line: 107, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !80, file: !43, line: 372)
!80 = !DISubprogram(name: "modf", scope: !39, file: !39, line: 110, type: !81, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!81 = !DISubroutineType(types: !82)
!82 = !{!42, !42, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !85, file: !43, line: 384)
!85 = !DISubprogram(name: "pow", scope: !39, file: !39, line: 140, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !87, file: !43, line: 421)
!87 = !DISubprogram(name: "sin", scope: !39, file: !39, line: 64, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !89, file: !43, line: 440)
!89 = !DISubprogram(name: "sinh", scope: !39, file: !39, line: 73, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !91, file: !43, line: 459)
!91 = !DISubprogram(name: "sqrt", scope: !39, file: !39, line: 143, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !93, file: !43, line: 478)
!93 = !DISubprogram(name: "tan", scope: !39, file: !39, line: 66, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !95, file: !43, line: 497)
!95 = !DISubprogram(name: "tanh", scope: !39, file: !39, line: 75, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !97, file: !43, line: 1065)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !98, line: 150, baseType: !42)
!98 = !DIFile(filename: "/usr/include/math.h", directory: "/mnt/HLSNAS/02.CtINEm/m110061608/vitis_HLS")
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !100, file: !43, line: 1066)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !98, line: 149, baseType: !101)
!101 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !103, file: !43, line: 1069)
!103 = !DISubprogram(name: "acosh", scope: !39, file: !39, line: 85, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !105, file: !43, line: 1070)
!105 = !DISubprogram(name: "acoshf", scope: !39, file: !39, line: 85, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!101, !101}
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !109, file: !43, line: 1071)
!109 = !DISubprogram(name: "acoshl", scope: !39, file: !39, line: 85, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !112}
!112 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !114, file: !43, line: 1073)
!114 = !DISubprogram(name: "asinh", scope: !39, file: !39, line: 87, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !116, file: !43, line: 1074)
!116 = !DISubprogram(name: "asinhf", scope: !39, file: !39, line: 87, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !118, file: !43, line: 1075)
!118 = !DISubprogram(name: "asinhl", scope: !39, file: !39, line: 87, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !120, file: !43, line: 1077)
!120 = !DISubprogram(name: "atanh", scope: !39, file: !39, line: 89, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !122, file: !43, line: 1078)
!122 = !DISubprogram(name: "atanhf", scope: !39, file: !39, line: 89, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !124, file: !43, line: 1079)
!124 = !DISubprogram(name: "atanhl", scope: !39, file: !39, line: 89, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !126, file: !43, line: 1081)
!126 = !DISubprogram(name: "cbrt", scope: !39, file: !39, line: 152, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !128, file: !43, line: 1082)
!128 = !DISubprogram(name: "cbrtf", scope: !39, file: !39, line: 152, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !130, file: !43, line: 1083)
!130 = !DISubprogram(name: "cbrtl", scope: !39, file: !39, line: 152, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !132, file: !43, line: 1085)
!132 = !DISubprogram(name: "copysign", scope: !39, file: !39, line: 196, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !134, file: !43, line: 1086)
!134 = !DISubprogram(name: "copysignf", scope: !39, file: !39, line: 196, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{!101, !101, !101}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !138, file: !43, line: 1087)
!138 = !DISubprogram(name: "copysignl", scope: !39, file: !39, line: 196, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DISubroutineType(types: !140)
!140 = !{!112, !112, !112}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !142, file: !43, line: 1089)
!142 = !DISubprogram(name: "erf", scope: !39, file: !39, line: 228, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !144, file: !43, line: 1090)
!144 = !DISubprogram(name: "erff", scope: !39, file: !39, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !146, file: !43, line: 1091)
!146 = !DISubprogram(name: "erfl", scope: !39, file: !39, line: 228, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !148, file: !43, line: 1093)
!148 = !DISubprogram(name: "erfc", scope: !39, file: !39, line: 229, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !150, file: !43, line: 1094)
!150 = !DISubprogram(name: "erfcf", scope: !39, file: !39, line: 229, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !152, file: !43, line: 1095)
!152 = !DISubprogram(name: "erfcl", scope: !39, file: !39, line: 229, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !154, file: !43, line: 1097)
!154 = !DISubprogram(name: "exp2", scope: !39, file: !39, line: 130, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !156, file: !43, line: 1098)
!156 = !DISubprogram(name: "exp2f", scope: !39, file: !39, line: 130, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !158, file: !43, line: 1099)
!158 = !DISubprogram(name: "exp2l", scope: !39, file: !39, line: 130, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !160, file: !43, line: 1101)
!160 = !DISubprogram(name: "expm1", scope: !39, file: !39, line: 119, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !162, file: !43, line: 1102)
!162 = !DISubprogram(name: "expm1f", scope: !39, file: !39, line: 119, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !164, file: !43, line: 1103)
!164 = !DISubprogram(name: "expm1l", scope: !39, file: !39, line: 119, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !166, file: !43, line: 1105)
!166 = !DISubprogram(name: "fdim", scope: !39, file: !39, line: 326, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !168, file: !43, line: 1106)
!168 = !DISubprogram(name: "fdimf", scope: !39, file: !39, line: 326, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !170, file: !43, line: 1107)
!170 = !DISubprogram(name: "fdiml", scope: !39, file: !39, line: 326, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !172, file: !43, line: 1109)
!172 = !DISubprogram(name: "fma", scope: !39, file: !39, line: 335, type: !173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!42, !42, !42, !42}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !176, file: !43, line: 1110)
!176 = !DISubprogram(name: "fmaf", scope: !39, file: !39, line: 335, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!101, !101, !101, !101}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !180, file: !43, line: 1111)
!180 = !DISubprogram(name: "fmal", scope: !39, file: !39, line: 335, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DISubroutineType(types: !182)
!182 = !{!112, !112, !112, !112}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !184, file: !43, line: 1113)
!184 = !DISubprogram(name: "fmax", scope: !39, file: !39, line: 329, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !186, file: !43, line: 1114)
!186 = !DISubprogram(name: "fmaxf", scope: !39, file: !39, line: 329, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !188, file: !43, line: 1115)
!188 = !DISubprogram(name: "fmaxl", scope: !39, file: !39, line: 329, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !190, file: !43, line: 1117)
!190 = !DISubprogram(name: "fmin", scope: !39, file: !39, line: 332, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !192, file: !43, line: 1118)
!192 = !DISubprogram(name: "fminf", scope: !39, file: !39, line: 332, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !194, file: !43, line: 1119)
!194 = !DISubprogram(name: "fminl", scope: !39, file: !39, line: 332, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !196, file: !43, line: 1121)
!196 = !DISubprogram(name: "hypot", scope: !39, file: !39, line: 147, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !198, file: !43, line: 1122)
!198 = !DISubprogram(name: "hypotf", scope: !39, file: !39, line: 147, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !200, file: !43, line: 1123)
!200 = !DISubprogram(name: "hypotl", scope: !39, file: !39, line: 147, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !202, file: !43, line: 1125)
!202 = !DISubprogram(name: "ilogb", scope: !39, file: !39, line: 280, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{!35, !42}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !206, file: !43, line: 1126)
!206 = !DISubprogram(name: "ilogbf", scope: !39, file: !39, line: 280, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!35, !101}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !210, file: !43, line: 1127)
!210 = !DISubprogram(name: "ilogbl", scope: !39, file: !39, line: 280, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!35, !112}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !214, file: !43, line: 1129)
!214 = !DISubprogram(name: "lgamma", scope: !39, file: !39, line: 230, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !216, file: !43, line: 1130)
!216 = !DISubprogram(name: "lgammaf", scope: !39, file: !39, line: 230, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !218, file: !43, line: 1131)
!218 = !DISubprogram(name: "lgammal", scope: !39, file: !39, line: 230, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !220, file: !43, line: 1134)
!220 = !DISubprogram(name: "llrint", scope: !39, file: !39, line: 316, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !42}
!223 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !225, file: !43, line: 1135)
!225 = !DISubprogram(name: "llrintf", scope: !39, file: !39, line: 316, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{!223, !101}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !229, file: !43, line: 1136)
!229 = !DISubprogram(name: "llrintl", scope: !39, file: !39, line: 316, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!223, !112}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !233, file: !43, line: 1138)
!233 = !DISubprogram(name: "llround", scope: !39, file: !39, line: 322, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !235, file: !43, line: 1139)
!235 = !DISubprogram(name: "llroundf", scope: !39, file: !39, line: 322, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !237, file: !43, line: 1140)
!237 = !DISubprogram(name: "llroundl", scope: !39, file: !39, line: 322, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !239, file: !43, line: 1143)
!239 = !DISubprogram(name: "log1p", scope: !39, file: !39, line: 122, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !241, file: !43, line: 1144)
!241 = !DISubprogram(name: "log1pf", scope: !39, file: !39, line: 122, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !243, file: !43, line: 1145)
!243 = !DISubprogram(name: "log1pl", scope: !39, file: !39, line: 122, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !245, file: !43, line: 1147)
!245 = !DISubprogram(name: "log2", scope: !39, file: !39, line: 133, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !247, file: !43, line: 1148)
!247 = !DISubprogram(name: "log2f", scope: !39, file: !39, line: 133, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !249, file: !43, line: 1149)
!249 = !DISubprogram(name: "log2l", scope: !39, file: !39, line: 133, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !251, file: !43, line: 1151)
!251 = !DISubprogram(name: "logb", scope: !39, file: !39, line: 125, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !253, file: !43, line: 1152)
!253 = !DISubprogram(name: "logbf", scope: !39, file: !39, line: 125, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !255, file: !43, line: 1153)
!255 = !DISubprogram(name: "logbl", scope: !39, file: !39, line: 125, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !257, file: !43, line: 1155)
!257 = !DISubprogram(name: "lrint", scope: !39, file: !39, line: 314, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !42}
!260 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !262, file: !43, line: 1156)
!262 = !DISubprogram(name: "lrintf", scope: !39, file: !39, line: 314, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!260, !101}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !266, file: !43, line: 1157)
!266 = !DISubprogram(name: "lrintl", scope: !39, file: !39, line: 314, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!260, !112}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !270, file: !43, line: 1159)
!270 = !DISubprogram(name: "lround", scope: !39, file: !39, line: 320, type: !258, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !272, file: !43, line: 1160)
!272 = !DISubprogram(name: "lroundf", scope: !39, file: !39, line: 320, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !274, file: !43, line: 1161)
!274 = !DISubprogram(name: "lroundl", scope: !39, file: !39, line: 320, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !276, file: !43, line: 1163)
!276 = !DISubprogram(name: "nan", scope: !39, file: !39, line: 201, type: !277, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!277 = !DISubroutineType(types: !278)
!278 = !{!42, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !282, file: !43, line: 1164)
!282 = !DISubprogram(name: "nanf", scope: !39, file: !39, line: 201, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!101, !279}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !286, file: !43, line: 1165)
!286 = !DISubprogram(name: "nanl", scope: !39, file: !39, line: 201, type: !287, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{!112, !279}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !290, file: !43, line: 1167)
!290 = !DISubprogram(name: "nearbyint", scope: !39, file: !39, line: 294, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !292, file: !43, line: 1168)
!292 = !DISubprogram(name: "nearbyintf", scope: !39, file: !39, line: 294, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !294, file: !43, line: 1169)
!294 = !DISubprogram(name: "nearbyintl", scope: !39, file: !39, line: 294, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !296, file: !43, line: 1171)
!296 = !DISubprogram(name: "nextafter", scope: !39, file: !39, line: 259, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !298, file: !43, line: 1172)
!298 = !DISubprogram(name: "nextafterf", scope: !39, file: !39, line: 259, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !300, file: !43, line: 1173)
!300 = !DISubprogram(name: "nextafterl", scope: !39, file: !39, line: 259, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !302, file: !43, line: 1175)
!302 = !DISubprogram(name: "nexttoward", scope: !39, file: !39, line: 261, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!42, !42, !112}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !306, file: !43, line: 1176)
!306 = !DISubprogram(name: "nexttowardf", scope: !39, file: !39, line: 261, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{!101, !101, !112}
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !310, file: !43, line: 1177)
!310 = !DISubprogram(name: "nexttowardl", scope: !39, file: !39, line: 261, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !312, file: !43, line: 1179)
!312 = !DISubprogram(name: "remainder", scope: !39, file: !39, line: 272, type: !50, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !314, file: !43, line: 1180)
!314 = !DISubprogram(name: "remainderf", scope: !39, file: !39, line: 272, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !316, file: !43, line: 1181)
!316 = !DISubprogram(name: "remainderl", scope: !39, file: !39, line: 272, type: !139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !318, file: !43, line: 1183)
!318 = !DISubprogram(name: "remquo", scope: !39, file: !39, line: 307, type: !319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{!42, !42, !42, !70}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !322, file: !43, line: 1184)
!322 = !DISubprogram(name: "remquof", scope: !39, file: !39, line: 307, type: !323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{!101, !101, !101, !70}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !326, file: !43, line: 1185)
!326 = !DISubprogram(name: "remquol", scope: !39, file: !39, line: 307, type: !327, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{!112, !112, !112, !70}
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !330, file: !43, line: 1187)
!330 = !DISubprogram(name: "rint", scope: !39, file: !39, line: 256, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !332, file: !43, line: 1188)
!332 = !DISubprogram(name: "rintf", scope: !39, file: !39, line: 256, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !334, file: !43, line: 1189)
!334 = !DISubprogram(name: "rintl", scope: !39, file: !39, line: 256, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !336, file: !43, line: 1191)
!336 = !DISubprogram(name: "round", scope: !39, file: !39, line: 298, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !338, file: !43, line: 1192)
!338 = !DISubprogram(name: "roundf", scope: !39, file: !39, line: 298, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !340, file: !43, line: 1193)
!340 = !DISubprogram(name: "roundl", scope: !39, file: !39, line: 298, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !342, file: !43, line: 1195)
!342 = !DISubprogram(name: "scalbln", scope: !39, file: !39, line: 290, type: !343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!42, !42, !260}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !346, file: !43, line: 1196)
!346 = !DISubprogram(name: "scalblnf", scope: !39, file: !39, line: 290, type: !347, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{!101, !101, !260}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !350, file: !43, line: 1197)
!350 = !DISubprogram(name: "scalblnl", scope: !39, file: !39, line: 290, type: !351, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DISubroutineType(types: !352)
!352 = !{!112, !112, !260}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !354, file: !43, line: 1199)
!354 = !DISubprogram(name: "scalbn", scope: !39, file: !39, line: 276, type: !73, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !356, file: !43, line: 1200)
!356 = !DISubprogram(name: "scalbnf", scope: !39, file: !39, line: 276, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!101, !101, !35}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !360, file: !43, line: 1201)
!360 = !DISubprogram(name: "scalbnl", scope: !39, file: !39, line: 276, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!112, !112, !35}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !364, file: !43, line: 1203)
!364 = !DISubprogram(name: "tgamma", scope: !39, file: !39, line: 235, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !366, file: !43, line: 1204)
!366 = !DISubprogram(name: "tgammaf", scope: !39, file: !39, line: 235, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !368, file: !43, line: 1205)
!368 = !DISubprogram(name: "tgammal", scope: !39, file: !39, line: 235, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !370, file: !43, line: 1207)
!370 = !DISubprogram(name: "trunc", scope: !39, file: !39, line: 302, type: !40, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !372, file: !43, line: 1208)
!372 = !DISubprogram(name: "truncf", scope: !39, file: !39, line: 302, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !374, file: !43, line: 1209)
!374 = !DISubprogram(name: "truncl", scope: !39, file: !39, line: 302, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !26, entity: !30, file: !15, line: 50)
!376 = !DILocation(line: 10, column: 9, scope: !6)
