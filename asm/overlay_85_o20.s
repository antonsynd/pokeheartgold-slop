	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E5DAC
	.extern ov85_021E72E8
	.extern ov85_021E85F0
	.extern ov85_021E86B0
	.extern ov85_021EA788

	.text

	.text
	thumb_func_start ov85_021E5DAC
ov85_021E5DAC: ; 0x021E5DAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r1, #0x18
	bl ov85_021E85F0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r2, _021E5E28 ; =ov85_021EA788
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x30]
	mov r0, #0xa
	add r3, r1, #0
	str r1, [r7, #0x14]
	mul r3, r0
	ldr r0, [r6, #0x2c]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	add r5, r6, #0
	str r0, [r7, #4]
_021E5DD6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov85_021E86B0
	cmp r0, #0
	beq _021E5DFE
	add r0, r4, #0
	bl sub_02034818
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	bl PlayerName_FlatToString
_021E5DFE:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E5DD6
	ldr r0, [r7, #4]
	mov r2, #1
	lsl r1, r0, #0xc
	mov r0, #0x45
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #0x11
	str r0, [r6]
	ldr r1, _021E5E2C ; =0x00000483
	mov r0, #0xf
	bl Sound_SetSceneAndPlayBGM
	add r0, r6, #0
	bl ov85_021E72E8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5E28: .word ov85_021EA788
_021E5E2C: .word 0x00000483
	thumb_func_end ov85_021E5DAC

