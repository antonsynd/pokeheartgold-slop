	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F684C
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F1A7C
	.extern ov18_021F3CA8

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
	thumb_func_start ov18_021F684C
ov18_021F684C: ; 0x021F684C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r3, [sp, #0xc]
	add r3, sp, #0x14
	add r4, r1, #0
	add r1, r2, #0
	add r2, sp, #0x14
	add r3, #1
	add r5, r0, #0
	bl ov18_021F3CA8
	ldr r0, _021F697C ; =0x000018C7
	ldrb r1, [r5, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _021F6872
	mov r6, #2
	mov r0, #0
	b _021F6886
_021F6872:
	mov r6, #0
	str r6, [sp]
	sub r0, #0x25
	add r3, sp, #0x14
	ldrb r1, [r3, #1]
	ldrh r0, [r5, r0]
	ldrb r3, [r3]
	add r2, r6, #0
	bl GetMonPicHeightBySpeciesGenderForm
_021F6886:
	cmp r4, #1
	bne _021F68EC
	add r0, #0x78
	lsl r0, r0, #0x18
	mov r1, #0x40
	lsr r7, r0, #0x18
	ldr r0, _021F697C ; =0x000018C7
	str r1, [sp, #0x10]
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F68B8
	mov r4, #3
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	b _021F68CC
_021F68B8:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov18_021F11C0
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov18_021F11C0
_021F68CC:
	ldr r3, _021F697C ; =0x000018C7
	mov r1, #0x20
	ldrb r2, [r5, r3]
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r2, r1, #0x1f
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1a
	orr r0, r1
	strb r0, [r5, r3]
	b _021F6950
_021F68EC:
	cmp r4, #2
	bne _021F6950
	add r0, #0x78
	lsl r0, r0, #0x18
	mov r1, #0xc0
	lsr r7, r0, #0x18
	ldr r0, _021F697C ; =0x000018C7
	str r1, [sp, #0x10]
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F691E
	mov r4, #4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	b _021F6932
_021F691E:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov18_021F11C0
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ov18_021F11C0
_021F6932:
	ldr r3, _021F697C ; =0x000018C7
	mov r1, #0x40
	ldrb r2, [r5, r3]
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r2, r1, #0x1f
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	strb r0, [r5, r3]
_021F6950:
	str r6, [sp]
	ldr r0, [sp, #0xc]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r1, _021F6980 ; =0x000018A2
	add r3, sp, #0x14
	ldrb r2, [r3]
	ldrh r1, [r5, r1]
	ldrb r3, [r3, #1]
	add r0, r5, #0
	bl ov18_021F1A7C
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov18_021F1294
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F697C: .word 0x000018C7
_021F6980: .word 0x000018A2
	thumb_func_end ov18_021F684C

