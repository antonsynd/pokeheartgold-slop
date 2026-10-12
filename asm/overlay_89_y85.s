	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225BD48

	.text

	.text
	thumb_func_start ov89_0225BD48
ov89_0225BD48: ; 0x0225BD48
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r6, #0
	add r5, #0x94
	add r0, r5, #0
	add r0, #0xf6
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _0225BD8A
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	asr r0, r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225BD8A:
	mov r4, #0
_0225BD8C:
	add r0, r5, #0
	bl sub_020181EC
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _0225BD8C
	add r6, #0x1c
	add r0, r6, #0
	bl sub_020181EC
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov89_0225BD48

