; ModuleID = 'D:/master/HLS/labA_InterfaceSynthesis/lab3/array_io_prj/solution8/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_array_io_ir(i16* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" %d_o, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %d_i) local_unnamed_addr #1 {
entry:
  %d_o_copy = alloca [32 x i16], align 512
  %d_i_copy = alloca [32 x i16], align 512
  %0 = bitcast i16* %d_o to [32 x i16]*
  %1 = bitcast i16* %d_i to [32 x i16]*
  call fastcc void @copy_in([32 x i16]* nonnull %0, [32 x i16]* nonnull align 512 %d_o_copy, [32 x i16]* nonnull %1, [32 x i16]* nonnull align 512 %d_i_copy)
  %d_o_copy.gep = getelementptr inbounds [32 x i16], [32 x i16]* %d_o_copy, i64 0, i32 0
  %2 = getelementptr inbounds [32 x i16], [32 x i16]* %d_i_copy, i32 0, i32 0
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i16* %d_o_copy.gep, i32 1, i32 1, i32 1, i1 false) ], !dbg !5
  call void @apatb_array_io_hw(i16* %d_o_copy.gep, i16* %2)
  call void @copy_back([32 x i16]* %0, [32 x i16]* %d_o_copy, [32 x i16]* %1, [32 x i16]* %d_i_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32 x i16]* noalias readonly, [32 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [32 x i16]* noalias readonly, [32 x i16]* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %1, [32 x i16]* %0)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* align 512 %3, [32 x i16]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [32 x i16]* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq [32 x i16]* %0, null
  %3 = icmp eq [32 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i16], [32 x i16]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x i16], [32 x i16]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i16, i16* %src.addr, align 2
  store i16 %5, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32 x i16]* noalias, [32 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed", [32 x i16]* noalias, [32 x i16]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %0, [32 x i16]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %2, [32 x i16]* align 512 %3)
  ret void
}

declare void @apatb_array_io_hw(i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([32 x i16]* noalias, [32 x i16]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed", [32 x i16]* noalias, [32 x i16]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i16([32 x i16]* %0, [32 x i16]* align 512 %1)
  ret void
}

define void @array_io_hw_stub_wrapper(i16*, i16*) #5 {
entry:
  %2 = bitcast i16* %0 to [32 x i16]*
  %3 = bitcast i16* %1 to [32 x i16]*
  call void @copy_out([32 x i16]* null, [32 x i16]* %2, [32 x i16]* null, [32 x i16]* %3)
  %4 = bitcast [32 x i16]* %2 to i16*
  %5 = bitcast [32 x i16]* %3 to i16*
  call void @array_io_hw_stub(i16* %4, i16* %5)
  call void @copy_in([32 x i16]* null, [32 x i16]* %2, [32 x i16]* null, [32 x i16]* %3)
  ret void
}

declare void @array_io_hw_stub(i16*, i16*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 8, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "D:/master/HLS/labA_InterfaceSynthesis/lab3/array_io_prj/solution8/directives.tcl", directory: "D:\5Cmaster\5CHLS\5ClabA_InterfaceSynthesis\5Clab3")
!8 = distinct !DISubprogram(name: "array_io", scope: !9, file: !9, line: 57, type: !10, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !18, variables: !4)
!9 = !DIFile(filename: "array_io.c", directory: "D:\5Cmaster\5CHLS\5ClabA_InterfaceSynthesis\5Clab3")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "dout_t", file: !14, line: 52, baseType: !15)
!14 = !DIFile(filename: "./array_io.h", directory: "D:\5Cmaster\5CHLS\5ClabA_InterfaceSynthesis\5Clab3")
!15 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "din_t", file: !14, line: 51, baseType: !15)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !20)
!19 = !DIFile(filename: "D:/master/HLS/labA_InterfaceSynthesis/lab3/array_io_prj/solution8/.autopilot/db\5Carray_io.pp.0.c", directory: "D:\5Cmaster\5CHLS\5ClabA_InterfaceSynthesis\5Clab3")
!20 = !{!21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "acc", scope: !8, file: !9, line: 61, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "dacc_t", file: !14, line: 53, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27}
!27 = !DISubrange(count: 8)
