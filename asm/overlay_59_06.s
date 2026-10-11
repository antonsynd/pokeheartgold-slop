	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022380EC
	.public ov59_02238FF4
	.public ov59_02239F18

	.text

	thumb_func_start ov59_022380EC
ov59_022380EC: ; 0x022380EC
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	beq _022380FC
	cmp r1, #1
	beq _0223810A
	b _02238118
_022380FC:
	mov r1, #0
	bl ov59_02238FF4
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238118
_0223810A:
	bl ov59_02239F18
	cmp r0, #4
	beq _0223811A
	mov r1, #0
	strh r1, [r4, #0x3c]
	pop {r4, pc}
_02238118:
	mov r0, #4
_0223811A:
	pop {r4, pc}
	thumb_func_end ov59_022380EC

