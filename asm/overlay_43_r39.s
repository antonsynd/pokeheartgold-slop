	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AC28
	.extern ov43_0222F14C
	.extern ov43_0222F160
	.extern ov43_0222F1AC

	.text

	.text
	thumb_func_start ov43_0222AC28
ov43_0222AC28: ; 0x0222AC28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r5, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r4, _0222ACD0 ; =ov43_0222F14C
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0x88
	str r1, [sp, #4]
	add r7, r4, #0
	mov r6, #5
	str r0, [sp, #0xc]
_0222AC44:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	str r0, [r4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	str r0, [r4, #0x2c]
	add r0, r7, #0
	bl Sprite_CreateAffine
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #8]
	add r4, #0x30
	add r0, r0, #1
	add r7, #0x30
	add r5, r5, #4
	add r6, r6, #2
	str r0, [sp, #8]
	cmp r0, #2
	blt _0222AC44
	ldr r0, [sp]
	ldr r1, _0222ACD4 ; =ov43_0222F160
	ldr r0, [r0, #4]
	str r0, [r1, #0x4c]
	ldr r0, [sp]
	add r0, #0x88
	str r0, [r1, #0x50]
	ldr r0, [sp, #4]
	str r0, [r1, #0x78]
	ldr r0, _0222ACD8 ; =ov43_0222F1AC
	bl Sprite_CreateAffine
	mov r2, #0x7f
	ldr r1, [sp]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r1, #0x7f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222ACD0: .word ov43_0222F14C
_0222ACD4: .word ov43_0222F160
_0222ACD8: .word ov43_0222F1AC
	thumb_func_end ov43_0222AC28

