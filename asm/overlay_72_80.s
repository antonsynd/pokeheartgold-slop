	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AD64
	.public ov72_0223AD94

	.text

	thumb_func_start ov72_0223AD94
ov72_0223AD94: ; 0x0223AD94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov72_0223AD64
	ldr r0, _0223AE08 ; =0x00000DF4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0223AE0C ; =0x00000DF8
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0223AE10 ; =0x00000DFC
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0xe
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0223AE14 ; =0x00000E04
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0223AE18 ; =0x00000E08
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0223AE1C ; =0x00000E0C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0xe1
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r4, #0
	ldr r6, _0223AE08 ; =0x00000DF4
	add r7, r4, #0
_0223ADF6:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0223ADF6
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223AE08: .word 0x00000DF4
_0223AE0C: .word 0x00000DF8
_0223AE10: .word 0x00000DFC
_0223AE14: .word 0x00000E04
_0223AE18: .word 0x00000E08
_0223AE1C: .word 0x00000E0C
	thumb_func_end ov72_0223AD94

