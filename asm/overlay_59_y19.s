	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022388C4
	.extern ov59_02238C24
	.extern ov59_02238C7C
	.extern ov59_02239EA8
	.extern ov59_0223C6C4
	.extern ov59_0223C6C6

	.text

	.text
	thumb_func_start ov59_022388C4
ov59_022388C4: ; 0x022388C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov59_02239EA8
	cmp r0, #7
	beq _022388D6
	cmp r0, #8
	beq _022388E2
	b _022388E8
_022388D6:
	add r0, r5, #0
	mov r6, #0xc8
	mov r4, #0x5c
	bl ov59_02238C24
	b _022388FE
_022388E2:
	mov r6, #0xf0
	mov r4, #0xa8
	b _022388FE
_022388E8:
	ldr r1, _02238914 ; =ov59_0223C6C4
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	add r1, r1, #4
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	ldr r1, _02238918 ; =ov59_0223C6C6
	ldrh r0, [r1, r0]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022388FE:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	bl Sprite_SetPositionXY
	add r0, r5, #0
	bl ov59_02238C7C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02238914: .word ov59_0223C6C4
_02238918: .word ov59_0223C6C6
	thumb_func_end ov59_022388C4

