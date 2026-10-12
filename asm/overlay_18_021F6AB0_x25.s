	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F75C8
	.extern ov18_021FB61C

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
	thumb_func_start ov18_021F75C8
ov18_021F75C8: ; 0x021F75C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F7628 ; =0x00001864
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	cmp r4, #0
	bne _021F75F4
	ldr r1, _021F762C ; =0x00001884
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
	b _021F7608
_021F75F4:
	cmp r4, #1
	bne _021F7608
	mov r1, #0x62
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
_021F7608:
	mov r0, #0x67
	add r2, sp, #0
	lsl r0, r0, #4
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	ldr r2, _021F7630 ; =ov18_021FB61C
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F7628: .word 0x00001864
_021F762C: .word 0x00001884
_021F7630: .word ov18_021FB61C
	thumb_func_end ov18_021F75C8

