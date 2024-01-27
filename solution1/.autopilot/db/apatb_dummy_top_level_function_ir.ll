; ModuleID = 'C:/Projects/ParticleCoverHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.PointArr_s = type { i32, [1024 x %struct.Point_s] }
%struct.Point_s = type { i32, i32, double, double }

; Function Attrs: noinline
define void @apatb_dummy_top_level_function_ir(%struct.PointArr_s* %point_arr_in, %struct.PointArr_s* %point_arr_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 24584)
  %point_arr_in_copy = bitcast i8* %malloccall to %struct.PointArr_s*
  %malloccall1 = tail call i8* @malloc(i64 24584)
  %point_arr_out_copy = bitcast i8* %malloccall1 to %struct.PointArr_s*
  call fastcc void @copy_in(%struct.PointArr_s* %point_arr_in, %struct.PointArr_s* %point_arr_in_copy, %struct.PointArr_s* %point_arr_out, %struct.PointArr_s* %point_arr_out_copy)
  call void @apatb_dummy_top_level_function_hw(%struct.PointArr_s* %point_arr_in_copy, %struct.PointArr_s* %point_arr_out_copy)
  call fastcc void @copy_out(%struct.PointArr_s* %point_arr_in, %struct.PointArr_s* %point_arr_in_copy, %struct.PointArr_s* %point_arr_out, %struct.PointArr_s* %point_arr_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.PointArr_s* readonly, %struct.PointArr_s* noalias, %struct.PointArr_s* readonly, %struct.PointArr_s* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.PointArr_s(%struct.PointArr_s* %1, %struct.PointArr_s* %0)
  call fastcc void @onebyonecpy_hls.p0struct.PointArr_s(%struct.PointArr_s* %3, %struct.PointArr_s* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.PointArr_s(%struct.PointArr_s* noalias, %struct.PointArr_s* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.PointArr_s* %0, null
  %3 = icmp eq %struct.PointArr_s* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.PointArr_s* %0 to i8*
  %6 = bitcast %struct.PointArr_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx22 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.06.gep14 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %0, i32 0, i32 1, i64 %for.loop.idx22, i32 0
  %7 = bitcast i32* %dst.addr.06.gep14 to i8*
  %src.addr.05.gep15 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %1, i32 0, i32 1, i64 %for.loop.idx22, i32 0
  %8 = bitcast i32* %src.addr.05.gep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 4, i1 false)
  %dst.addr.18.gep16 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %0, i32 0, i32 1, i64 %for.loop.idx22, i32 1
  %9 = bitcast i32* %dst.addr.18.gep16 to i8*
  %src.addr.17.gep17 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %1, i32 0, i32 1, i64 %for.loop.idx22, i32 1
  %10 = bitcast i32* %src.addr.17.gep17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 4, i1 false)
  %dst.addr.210.gep18 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %0, i32 0, i32 1, i64 %for.loop.idx22, i32 2
  %11 = bitcast double* %dst.addr.210.gep18 to i8*
  %src.addr.29.gep19 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %1, i32 0, i32 1, i64 %for.loop.idx22, i32 2
  %12 = bitcast double* %src.addr.29.gep19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 8, i1 false)
  %dst.addr.312.gep20 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %0, i32 0, i32 1, i64 %for.loop.idx22, i32 3
  %13 = bitcast double* %dst.addr.312.gep20 to i8*
  %src.addr.311.gep21 = getelementptr %struct.PointArr_s, %struct.PointArr_s* %1, i32 0, i32 1, i64 %for.loop.idx22, i32 3
  %14 = bitcast double* %src.addr.311.gep21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx22, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.PointArr_s*, %struct.PointArr_s* noalias readonly, %struct.PointArr_s*, %struct.PointArr_s* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.PointArr_s(%struct.PointArr_s* %0, %struct.PointArr_s* %1)
  call fastcc void @onebyonecpy_hls.p0struct.PointArr_s(%struct.PointArr_s* %2, %struct.PointArr_s* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_dummy_top_level_function_hw(%struct.PointArr_s*, %struct.PointArr_s*)

define void @dummy_top_level_function_hw_stub_wrapper(%struct.PointArr_s*, %struct.PointArr_s*) #5 {
entry:
  call void @copy_out(%struct.PointArr_s* null, %struct.PointArr_s* %0, %struct.PointArr_s* null, %struct.PointArr_s* %1)
  call void @dummy_top_level_function_hw_stub(%struct.PointArr_s* %0, %struct.PointArr_s* %1)
  call void @copy_in(%struct.PointArr_s* null, %struct.PointArr_s* %0, %struct.PointArr_s* null, %struct.PointArr_s* %1)
  ret void
}

declare void @dummy_top_level_function_hw_stub(%struct.PointArr_s*, %struct.PointArr_s*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
