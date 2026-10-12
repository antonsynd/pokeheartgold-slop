	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225CD18
	.extern ov27_0225D3C4
	.extern ov27_0225D3C5
	.extern ov27_0225D3C6

	.text

	.text
	thumb_func_start ov27_0225CD18
ov27_0225CD18: ; 0x0225CD18
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r0, r2, #1
	sub r3, r1, #2
	add r2, r2, r0
	add r1, r3, #0
	mov r0, #0x18
	mul r1, r0
	ldr r3, _0225CD68 ; =ov27_0225D3C4
	add r0, #0xe8
	add r3, r3, r1
	ldrb r3, [r2, r3]
	lsl r3, r3, #0xc
	str r3, [sp]
	ldr r3, _0225CD6C ; =ov27_0225D3C5
	add r3, r3, r1
	ldrb r3, [r2, r3]
	add r0, r3, r0
	lsl r0, r0, #0xc
	ldr r3, _0225CD70 ; =ov27_0225D3C6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xe2
	add r1, r3, r1
	lsl r0, r0, #2
	ldrb r1, [r2, r1]
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225CD68: .word ov27_0225D3C4
_0225CD6C: .word ov27_0225D3C5
_0225CD70: .word ov27_0225D3C6
	thumb_func_end ov27_0225CD18

