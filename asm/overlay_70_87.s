#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_0223B1B8
	.public ov70_0223B258
	.public ov70_0223B3BC
	.public ov70_0223B3EC

	.text

	thumb_func_start ov70_0223B1B8
ov70_0223B1B8: ; 0x0223B1B8
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _0223B202
	ldr r0, _0223B240 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #6
	bl ov70_02238E50
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223B244 ; =0x00001138
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x4d
	bl ov70_0223B3BC
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223B248 ; =0x000010E8
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x51
	bl ov70_0223B3BC
	add r0, r4, #0
	bl ov70_0223B258
	b _0223B23C
_0223B202:
	cmp r0, #2
	bne _0223B23C
	ldr r0, _0223B240 ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _0223B24C ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223B250 ; =0x00000F58
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x58
	bl ov70_0223B3EC
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223B254 ; =0x00000F68
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x6d
	bl ov70_0223B3EC
_0223B23C:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0223B240: .word 0x000011C8
_0223B244: .word 0x00001138
_0223B248: .word 0x000010E8
_0223B24C: .word 0x00000F18
_0223B250: .word 0x00000F58
_0223B254: .word 0x00000F68
	thumb_func_end ov70_0223B1B8

