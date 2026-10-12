	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237FA4

	.text

	.text
	thumb_func_start ov59_02237FA4
ov59_02237FA4: ; 0x02237FA4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02237FB6
	cmp r0, #1
	beq _02237FD4
	b _02238016
_02237FB6:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238016
_02237FD4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02238016
	mov r0, #0
	strh r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _02238010
	cmp r0, #1
	beq _02237FF4
	cmp r0, #2
	beq _0223800A
	b _02238010
_02237FF4:
	ldr r0, [r4, #0x10]
	bl sub_02031C00
	cmp r0, #1
	beq _02238004
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, pc}
_02238004:
	add sp, #0xc
	mov r0, #4
	pop {r3, r4, pc}
_0223800A:
	add sp, #0xc
	mov r0, #5
	pop {r3, r4, pc}
_02238010:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, pc}
_02238016:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov59_02237FA4

