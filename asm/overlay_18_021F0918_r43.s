	.include "macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F1A30
	.extern ov18_021FABC0
	.extern ov18_021FABF4

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F1A30
ov18_021F1A30: ; 0x021F1A30
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	ldr r1, _021F1A6C ; =0x00000668
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r5, r1]
	ldr r2, _021F1A70 ; =ov18_021FABC0
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x67
	mov r3, #2
	add r2, r5, r4
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021F1A74 ; =ov18_021FABF4
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021F1A78 ; =0x00000674
	add r2, r5, r4
	str r0, [r2, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1A6C: .word 0x00000668
_021F1A70: .word ov18_021FABC0
_021F1A74: .word ov18_021FABF4
_021F1A78: .word 0x00000674
	thumb_func_end ov18_021F1A30

