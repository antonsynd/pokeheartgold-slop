	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223DBD4
	.extern ov40_022306C0
	.extern ov40_022456F0
	.extern ov40_022458E8

	.text

	.text
	thumb_func_start ov40_0223DBD4
ov40_0223DBD4: ; 0x0223DBD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r3, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _0223DCDC ; =ov40_022458E8
	str r0, [sp, #0x20]
	add r4, sp, #0x3c
	mov r2, #0xc
_0223DBEA:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0223DBEA
	ldr r6, _0223DCE0 ; =ov40_022456F0
	add r4, sp, #0x24
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	cmp r3, #0
	beq _0223DC0C
	cmp r3, #1
	b _0223DC18
_0223DC0C:
	ldr r1, _0223DCE4 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r3, #6
	str r3, [r0, r1]
	add r5, sp, #0x3c
	str r2, [sp, #0x18]
_0223DC18:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _0223DCE4 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r7, #1
	ldr r0, [r0, r1]
	lsl r7, r7, #8
	cmp r0, #0
	ble _0223DCD8
	ldr r1, _0223DCE8 ; =0x00000614
	ldr r0, [sp, #0x20]
	add r4, r0, r1
_0223DC30:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1]
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	mul r0, r1
	add r7, r7, r0
	mov r0, #0
	beq _0223DC94
	add r0, r4, #0
	add r1, r6, #0
	bl ov40_022306C0
_0223DC94:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DCEC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _0223DCE4 ; =0x00000794
	add r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0223DC30
_0223DCD8:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223DCDC: .word ov40_022458E8
_0223DCE0: .word ov40_022456F0
_0223DCE4: .word 0x00000794
_0223DCE8: .word 0x00000614
_0223DCEC: .word 0x000F0D00
	thumb_func_end ov40_0223DBD4

