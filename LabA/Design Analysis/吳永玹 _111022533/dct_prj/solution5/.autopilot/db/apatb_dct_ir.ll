; ModuleID = 'C:/Users/Richard/Desktop/Course/AAHLS/labs/labA/ug871-design-files-ch6/dct_prj/solution5/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_dct_ir(i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %input, i16* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %output) local_unnamed_addr #0 {
entry:
  %input_copy = alloca [64 x i16], align 512
  %output_copy = alloca [64 x i16], align 512
  %0 = bitcast i16* %input to [64 x i16]*
  %1 = bitcast i16* %output to [64 x i16]*
  call fastcc void @copy_in([64 x i16]* nonnull %0, [64 x i16]* nonnull align 512 %input_copy, [64 x i16]* nonnull %1, [64 x i16]* nonnull align 512 %output_copy)
  %2 = getelementptr inbounds [64 x i16], [64 x i16]* %input_copy, i32 0, i32 0
  %3 = getelementptr inbounds [64 x i16], [64 x i16]* %output_copy, i32 0, i32 0
  call void @apatb_dct_hw(i16* %2, i16* %3)
  call void @copy_back([64 x i16]* %0, [64 x i16]* %input_copy, [64 x i16]* %1, [64 x i16]* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([64 x i16]* noalias readonly, [64 x i16]* noalias align 512, [64 x i16]* noalias readonly, [64 x i16]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* align 512 %1, [64 x i16]* %0)
  call fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* align 512 %3, [64 x i16]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* noalias align 512, [64 x i16]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x i16]* %0, null
  %3 = icmp eq [64 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i16], [64 x i16]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [64 x i16], [64 x i16]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i16, i16* %src.addr, align 2
  store i16 %5, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([64 x i16]* noalias, [64 x i16]* noalias readonly align 512, [64 x i16]* noalias, [64 x i16]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* %0, [64 x i16]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* %2, [64 x i16]* align 512 %3)
  ret void
}

declare void @apatb_dct_hw(i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([64 x i16]* noalias, [64 x i16]* noalias readonly align 512, [64 x i16]* noalias, [64 x i16]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i16([64 x i16]* %2, [64 x i16]* align 512 %3)
  ret void
}

define void @dct_hw_stub_wrapper(i16*, i16*) #4 {
entry:
  %2 = bitcast i16* %0 to [64 x i16]*
  %3 = bitcast i16* %1 to [64 x i16]*
  call void @copy_out([64 x i16]* null, [64 x i16]* %2, [64 x i16]* null, [64 x i16]* %3)
  %4 = bitcast [64 x i16]* %2 to i16*
  %5 = bitcast [64 x i16]* %3 to i16*
  call void @dct_hw_stub(i16* %4, i16* %5)
  call void @copy_in([64 x i16]* null, [64 x i16]* %2, [64 x i16]* null, [64 x i16]* %3)
  ret void
}

declare void @dct_hw_stub(i16*, i16*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
