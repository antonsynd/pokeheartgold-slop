	.include "asm/macros.inc"
	.include "overlay_38_thumb.inc"
	.include "global.inc"
	.public ov38_0221BF48
	.extern _02225040
	.extern ov38_0221BB68
	.extern ov38_0221BBD0

	.text

	.text
	thumb_func_start ov38_0221BF48
ov38_0221BF48: ; 0x0221BF48
	push {r3, lr}
	ldr r1, _0221BFE0 ; =_02225040
	ldr r0, [r1]
	cmp r0, #7
	bhi _0221BFD8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221BF5E: ; jump table
	.short _0221BFD8 - _0221BF5E - 2 ; case 0
	.short _0221BFD8 - _0221BF5E - 2 ; case 1
	.short _0221BFD8 - _0221BF5E - 2 ; case 2
	.short _0221BF6E - _0221BF5E - 2 ; case 3
	.short _0221BF94 - _0221BF5E - 2 ; case 4
	.short _0221BFA4 - _0221BF5E - 2 ; case 5
	.short _0221BFCA - _0221BF5E - 2 ; case 6
	.short _0221BFD8 - _0221BF5E - 2 ; case 7
_0221BF6E:
	ldr r0, [r1, #0x24]
	ldr r1, _0221BFE4 ; =ov38_0221BBD0
	ldr r2, _0221BFE8 ; =_02225040
	bl ov00_021FA21C
	ldr r1, _0221BFE0 ; =_02225040
	str r0, [r1, #4]
	bl ov38_0221BB68
	ldr r0, _0221BFE0 ; =_02225040
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221BF8E
	mov r1, #4
	str r1, [r0]
	b _0221BFD8
_0221BF8E:
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BF94:
	bl ov00_021FA118
	cmp r0, #0
	bne _0221BFD8
	ldr r0, _0221BFE0 ; =_02225040
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BFA4:
	ldr r0, [r1, #0x24]
	ldr r1, _0221BFE4 ; =ov38_0221BBD0
	ldr r2, _0221BFE8 ; =_02225040
	bl ov00_021FA21C
	ldr r1, _0221BFE0 ; =_02225040
	str r0, [r1, #4]
	bl ov38_0221BB68
	ldr r0, _0221BFE0 ; =_02225040
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221BFC4
	mov r1, #6
	str r1, [r0]
	b _0221BFD8
_0221BFC4:
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BFCA:
	bl ov00_021FA118
	cmp r0, #0
	bne _0221BFD8
	ldr r0, _0221BFE0 ; =_02225040
	mov r1, #1
	str r1, [r0]
_0221BFD8:
	ldr r0, _0221BFE0 ; =_02225040
	ldr r0, [r0]
	pop {r3, pc}
	nop
_0221BFE0: .word _02225040
_0221BFE4: .word ov38_0221BBD0
_0221BFE8: .word _02225040
	thumb_func_end ov38_0221BF48

