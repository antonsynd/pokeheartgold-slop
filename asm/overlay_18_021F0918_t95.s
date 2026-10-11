	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F3B2C
	.public ov18_021F3B60
	.extern ov18_021F11C0
	.extern ov18_021F3BA4

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
	thumb_func_start ov18_021F3B2C
ov18_021F3B2C: ; 0x021F3B2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F3B5C ; =0x000006B4
	add r4, r1, #0
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, _021F3B5C ; =0x000006B4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	nop
_021F3B5C: .word 0x000006B4
	thumb_func_end ov18_021F3B2C

	thumb_func_start ov18_021F3B60
ov18_021F3B60: ; 0x021F3B60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _021F3B88
	mov r4, #0x2c
	mov r6, #1
_021F3B6C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_021F11C0
	add r4, r4, #1
	cmp r4, #0x3a
	bls _021F3B6C
	add r0, r5, #0
	mov r1, #0x2b
	mov r2, #0
	bl ov18_021F11C0
	pop {r4, r5, r6, pc}
_021F3B88:
	mov r4, #0x2c
	mov r6, #0
_021F3B8C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_021F11C0
	add r4, r4, #1
	cmp r4, #0x3a
	bls _021F3B8C
	add r0, r5, #0
	bl ov18_021F3BA4
	pop {r4, r5, r6, pc}
	thumb_func_end ov18_021F3B60

