	.include "macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F2C98
	.extern ov18_021FA310

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
	thumb_func_start ov18_021F2C98
ov18_021F2C98: ; 0x021F2C98
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ManagedSprite_GetActiveAnim
	ldr r1, _021F2CB0 ; =ov18_021FA310 + 1
	ldrb r0, [r1, r0]
	pop {r3, pc}
	nop
_021F2CB0: .word ov18_021FA310 + 1
	thumb_func_end ov18_021F2C98

