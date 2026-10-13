	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AF9C
	.extern ov59_0223AEB0
	.extern ov59_0223BBB0
	.extern ov59_0223BBD4
	.extern ov59_0223C054
	.extern ov59_0223C138

	.text

	.text
	thumb_func_start ov59_0223AF9C
ov59_0223AF9C: ; 0x0223AF9C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #5
	bls _0223AFAC
	b _0223B0FA
_0223AFAC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AFB8: ; jump table
	.short _0223AFC4 - _0223AFB8 - 2 ; case 0
	.short _0223B024 - _0223AFB8 - 2 ; case 1
	.short _0223B05C - _0223AFB8 - 2 ; case 2
	.short _0223B084 - _0223AFB8 - 2 ; case 3
	.short _0223B0B4 - _0223AFB8 - 2 ; case 4
	.short _0223B0CC - _0223AFB8 - 2 ; case 5
_0223AFC4:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223AFD8
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223AFD8:
	add r0, r4, #0
	mov r1, #3
	bl ov59_0223AEB0
	add r0, r4, #0
	bl ov59_0223BBB0
	add r0, r4, #0
	mov r1, #0
	bl ov59_0223BBD4
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_ResetAnimCtrlState
	ldr r0, _0223B114 ; =0x00000921
	bl PlaySE
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B024:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223B038
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B038:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_ResetAnimCtrlState
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B05C:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223B070
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B070:
	add r0, r4, #0
	bl ov59_0223C054
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B084:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223B094
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B094:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov59_0223C138
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B0B4:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223B0C4
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B0C4:
	mov r0, #6
	add r4, #0x42
	strh r0, [r4]
	b _0223B10E
_0223B0CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223B10E
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #1
	str r0, [sp, #8]
	ldr r3, _0223B118 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B0FA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223B10E
	mov r0, #0
	add r4, #0x42
	strh r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223B10E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223B114: .word 0x00000921
_0223B118: .word 0x00007FFF
	thumb_func_end ov59_0223AF9C

