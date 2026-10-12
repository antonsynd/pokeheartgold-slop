#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DD34
	.extern ov65_0221FD68
	.extern ov65_0221FD6C
	.extern ov65_0221FD70
	.extern ov65_0221FF4C
	.extern ov65_0221FF50

	.text

	.text
	thumb_func_start ov65_0221DD34
ov65_0221DD34: ; 0x0221DD34
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0xd
	blt _0221DD46
	bl GF_AssertFail
_0221DD46:
	ldr r1, _0221DDAC ; =ov65_0221FF4C
	lsl r0, r5, #3
	ldr r1, [r1, r0]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, _0221DDB0 ; =ov65_0221FF50
	ldr r0, [r1, r0]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	cmp r5, #0xc
	bne _0221DD78
	add r0, r6, #0
	bl Sprite_SetMatrix
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0221DDB4 ; =ov65_0221FD70
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0221DD78:
	add r0, r6, #0
	bl Sprite_SetMatrix
	cmp r5, #6
	bge _0221DD96
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0221DDB8 ; =ov65_0221FD68
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0221DD96:
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0221DDBC ; =ov65_0221FD6C
	add r0, r6, #0
	ldr r1, [r1, r2]
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0221DDAC: .word ov65_0221FF4C
_0221DDB0: .word ov65_0221FF50
_0221DDB4: .word ov65_0221FD70
_0221DDB8: .word ov65_0221FD68
_0221DDBC: .word ov65_0221FD6C
	thumb_func_end ov65_0221DD34

