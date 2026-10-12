	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E90C4
	.public ov108_021E9144
	.extern ov108_021E91D4
	.extern ov108_021E9204
	.extern ov108_021E9210

	.text

	.text
	thumb_func_start ov108_021E90C4
ov108_021E90C4: ; 0x021E90C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xb6
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021E90FA
	add r5, r6, #0
	add r5, #0x64
_021E90DC:
	add r0, r6, #0
	add r1, r5, #0
	bl ov108_021E9204
	add r0, r7, #0
	add r1, r5, #0
	bl ov108_021E91D4
	add r0, r6, #0
	add r0, #0xb6
	ldrh r0, [r0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blt _021E90DC
_021E90FA:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021E9124
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _021E913C ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _021E913C ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r6, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _021E9140 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
_021E9124:
	ldr r0, [r6]
	cmp r0, #0
	beq _021E912E
	bl Heap_Free
_021E912E:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xb8
	bl MI_CpuFill8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E913C: .word NNS_GfdDefaultFuncFreeTexVram
_021E9140: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov108_021E90C4

	thumb_func_start ov108_021E9144
ov108_021E9144: ; 0x021E9144
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r6, r0, #0
	add r0, #0xb6
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021E916C
	add r5, r6, #0
	add r5, #0x64
_021E9158:
	add r0, r5, #0
	bl ov108_021E9210
	add r0, r6, #0
	add r0, #0xb6
	ldrh r0, [r0]
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r0
	blt _021E9158
_021E916C:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0x18
	bl MTX_Identity33_
	add r6, #0x10
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #0x18
	add r3, sp, #0
	bl GF3dRender_DrawModel
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov108_021E9144

