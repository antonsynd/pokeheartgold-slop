	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F10E8

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
	thumb_func_start ov18_021F10E8
ov18_021F10E8: ; 0x021F10E8
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	mov r1, #0x67
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021F1100
	bl Sprite_DeleteAndFreeResources
	mov r0, #0
	str r0, [r4, r5]
_021F1100:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F10E8

