	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242844
	.public ov83_02242894
	.public ov83_022428A8
	.public ov83_022429E4
	.extern ov83_02240664
	.extern ov83_022407FC
	.extern ov83_0224088C
	.extern ov83_02240C48
	.extern ov83_02240EC4
	.extern ov83_02241DD8

    .text

	.text
	thumb_func_start ov83_02242844
ov83_02242844: ; 0x02242844
	push {r4, r5, r6, lr}
	add r6, r0, #0
	cmp r1, #1
	bne _02242870
	mov r0, #0x17
	lsl r0, r0, #4
	mov r4, #0x12
	add r5, r6, r0
_02242854:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x2f
	bls _02242854
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #1
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
_02242870:
	mov r0, #0x17
	lsl r0, r0, #4
	mov r5, #0x12
	add r4, r6, r0
_02242878:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x2f
	bls _02242878
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02242844

	thumb_func_start ov83_02242894
ov83_02242894: ; 0x02242894
	lsl r3, r0, #0x1f
	lsr r3, r3, #0x18
	add r3, #0x14
	strh r3, [r1]
	lsr r1, r0, #1
	mov r0, #0x28
	mul r0, r1
	add r0, #0x38
	strh r0, [r2]
	bx lr
	thumb_func_end ov83_02242894

	thumb_func_start ov83_022428A8
ov83_022428A8: ; 0x022428A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	str r0, [sp, #0x14]
	add r0, #0x50
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
	str r0, [sp, #0x14]
_022428BA:
	add r0, r4, #0
	add r0, #0x30
	lsl r1, r0, #4
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	cmp r4, r7
	ldr r0, _022429CC ; =0x00000784
	beq _022428D8
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov83_0224755C
	b _022428E2
_022428D8:
	ldr r0, [r5, r0]
	mov r1, #0x44
	mov r2, #0x4c
	bl ov83_02247568
_022428E2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _022428BA
	ldr r0, _022429D0 ; =0x0000077C
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov83_0224755C
	mov r0, #0x6b
	str r0, [sp]
	ldr r0, _022429D4 ; =0x000007A8
	mov r1, #0x27
	ldr r0, [r6, r0]
	mov r2, #1
	add r3, sp, #0x18
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	ldr r0, [r6, #0x4c]
	mov r1, #2
	add r2, #0xc
	bl LoadRectToBgTilemapRect
	ldr r0, [r6, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _022429D8 ; =0x00000862
	ldr r2, _022429DC ; =0x000004DC
	ldrsh r1, [r6, r0]
	mov r0, #6
	mul r0, r1
	mov r1, #0
	add r0, r0, r7
	lsl r4, r0, #3
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022429E0 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r6, r2]
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r2, [r2, r4]
	add r0, r6, r0
	bl AddTextPrinterParameterizedWithColor
	ldr r1, _022429DC ; =0x000004DC
	ldrb r2, [r6, #0x13]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r1, r1, r4
	ldr r1, [r1, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov83_02240EC4
	add r2, r0, #0
	mov r1, #0
	add r0, r6, #0
	mov r3, #2
	str r1, [sp]
	bl ov83_02240C48
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _022429E0 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r2, [r6, #0x20]
	add r0, r6, #0
	add r1, r6, r1
	mov r3, #0x68
	bl ov83_02241DD8
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022429CC: .word 0x00000784
_022429D0: .word 0x0000077C
_022429D4: .word 0x000007A8
_022429D8: .word 0x00000862
_022429DC: .word 0x000004DC
_022429E0: .word 0x00010200
	thumb_func_end ov83_022428A8

	thumb_func_start ov83_022429E4
ov83_022429E4: ; 0x022429E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x6b
	str r0, [sp]
	ldr r0, _02242AA0 ; =0x000007A8
	mov r1, #0x26
	ldr r0, [r6, r0]
	mov r2, #1
	add r3, sp, #0x10
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r0, [r6, #0x4c]
	mov r1, #2
	add r2, #0xc
	bl LoadRectToBgTilemapRect
	ldr r0, [r6, #0x4c]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl Heap_Free
	ldr r0, _02242AA4 ; =0x00000862
	mov r4, #0
	ldrsh r1, [r6, r0]
	mov r0, #6
	add r5, r6, #0
	add r7, r1, #0
	mul r7, r0
_02242A46:
	add r1, sp, #0xc
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0xc
	bl ov83_02242894
	ldr r0, _02242AA8 ; =0x00000784
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	bl ov83_02247568
	ldr r0, _02242AAC ; =0x00000861
	add r1, r7, r4
	ldrb r0, [r6, r0]
	cmp r1, r0
	bhs _02242A76
	ldr r0, _02242AA8 ; =0x00000784
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224755C
_02242A76:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blo _02242A46
	ldr r0, _02242AB0 ; =0x0000077C
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov83_0224755C
	add r0, r6, #0
	bl ov83_02240664
	add r0, r6, #0
	bl ov83_022407FC
	add r0, r6, #0
	bl ov83_0224088C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02242AA0: .word 0x000007A8
_02242AA4: .word 0x00000862
_02242AA8: .word 0x00000784
_02242AAC: .word 0x00000861
_02242AB0: .word 0x0000077C
	thumb_func_end ov83_022429E4

