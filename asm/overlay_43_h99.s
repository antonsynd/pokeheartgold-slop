	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C890
	.public ov43_0222C918
	.public ov43_0222C9A4
	.extern ov43_0222CA30
	.extern ov43_0222CA50
	.extern ov43_0222CB34
	.extern ov43_0222EFA0

	.text

	.text
	thumb_func_start ov43_0222C890
ov43_0222C890: ; 0x0222C890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _0222C914 ; =ov43_0222EFA0
	add r7, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r4, #0
_0222C8A0:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0222C8B0
	ldr r0, [sp, #0x10]
	cmp r0, r4
	bne _0222C8B0
	ldrb r0, [r5, #8]
	b _0222C8B2
_0222C8B0:
	ldrb r0, [r5, #7]
_0222C8B2:
	mov r1, #2
	ldrsh r3, [r7, r1]
	cmp r3, #0
	bge _0222C8BC
	neg r3, r3
_0222C8BC:
	mov r1, #0
	ldrsh r2, [r7, r1]
	cmp r2, #0
	bge _0222C8C6
	neg r2, r2
_0222C8C6:
	ldrb r1, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r1, [sp]
	ldrb r1, [r5, #5]
	mov r6, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldrsh r6, [r5, r6]
	ldr r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	add r2, r6, r2
	mov r6, #2
	ldrsh r6, [r5, r6]
	lsl r2, r2, #0x18
	ldr r0, [r0]
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	add r4, r4, #1
	add r5, #0xa
	cmp r4, #9
	blt _0222C8A0
	ldr r0, [sp, #0xc]
	mov r1, #2
	ldr r0, [r0]
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [r0]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C914: .word ov43_0222EFA0
	thumb_func_end ov43_0222C890

	thumb_func_start ov43_0222C918
ov43_0222C918: ; 0x0222C918
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r2, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x3c]
	ldr r0, [r1, #4]
	bl sub_0202C6F4
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r0, #8
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r6, #0
	add r1, r7, #0
	bl ov43_0222CA30
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	lsl r0, r0, #3
	str r0, [sp, #0x18]
	mov r4, #0
	add r5, r1, r0
_0222C954:
	ldr r0, [sp, #0x34]
	ldr r1, [r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r4
	cmp r1, r0
	bls _0222C97C
	ldr r0, [sp, #0x14]
	str r4, [sp]
	str r0, [sp, #4]
	ldrb r0, [r5, #8]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	add r2, r7, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov43_0222CA50
	b _0222C988
_0222C97C:
	ldr r2, [sp, #0x30]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov43_0222CB34
_0222C988:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _0222C954
	ldr r0, [r7]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r6, #8
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222C918

	thumb_func_start ov43_0222C9A4
ov43_0222C9A4: ; 0x0222C9A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bl ov43_0222CA30
	add r0, r5, #0
	add r0, #8
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0222C9C2
	neg r1, r1
_0222C9C2:
	mov r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _0222C9CC
	neg r3, r3
_0222C9CC:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #4]
	lsl r3, r3, #0x18
	mov r2, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #5]
	mov r1, #2
	lsr r3, r3, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0222C9FC
	neg r1, r1
_0222C9FC:
	mov r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _0222CA06
	neg r3, r3
_0222CA06:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #4]
	lsl r3, r3, #0x18
	mov r2, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #5]
	mov r1, #3
	lsr r3, r3, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4]
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_0222C9A4

