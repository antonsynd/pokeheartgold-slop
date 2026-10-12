	.include "asm/macros.inc"
	.include "overlay_46.inc"
	.include "global.inc"
	.public ov46_022592EC

	.text

	.text
	thumb_func_start ov46_022592EC
ov46_022592EC: ; 0x022592EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x48]
	add r5, r0, #0
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r7, r1, #0
	add r6, r2, #0
	bl MessageFormat_New
	str r0, [r5]
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x1b
	add r3, r4, #0
	bl NewMsgDataFromNarc
	str r0, [r5, #4]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x44]
	str r6, [r5, #0x20]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r5, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	add r1, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r2, #1
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov46_022592EC

