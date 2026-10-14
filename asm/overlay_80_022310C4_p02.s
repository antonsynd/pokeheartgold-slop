	.include "asm/macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_022313C8
	.extern ov80_02231A14

    .text

	.text
	thumb_func_start ov80_022313C8
ov80_022313C8: ; 0x022313C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r2, [r5, #4]
	mov r4, #0
	mov r6, #1
	cmp r2, #0
	beq _022313DA
	mov r6, #2
_022313DA:
	ldr r1, _02231490 ; =0x000006F5
	lsl r3, r2, #3
	ldrb r0, [r5, r1]
	add r1, #0xf
	add r1, r5, r1
	add r2, r2, r3
	add r1, r1, r2
	bl sub_02030BD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov80_02231A14
	strb r0, [r5, #7]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp]
	ldr r0, _02231490 ; =0x000006F5
	ldrb r3, [r5, #5]
	ldrb r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov80_022372D8
	ldrb r0, [r5, #5]
	add r1, r6, #0
	add r3, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	ldrh r2, [r5, #0xa]
	bl ov80_02237334
	ldrb r0, [r5, #5]
	add r6, r5, #0
	add r6, #0x18
	lsl r0, r0, #0x19
	lsr r0, r0, #0x17
	ldrh r1, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, _02231494 ; =0x0000FECD
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02231444
	add r0, r5, #0
	bl ov80_0223793C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02231444:
	ldr r0, [sp, #0xc]
	ldrh r1, [r6, r0]
	ldr r0, _02231498 ; =0x00000133
	cmp r1, r0
	bne _02231450
	mov r4, #1
_02231450:
	mov r0, #0x4d
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223145A
	mov r4, #2
_0223145A:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0223149C ; =0x000006F4
	ldrb r3, [r5, #5]
	ldrb r1, [r5, r1]
	mov r0, #1
	add r2, r7, #0
	bl ov80_02237448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02231490: .word 0x000006F5
_02231494: .word 0x0000FECD
_02231498: .word 0x00000133
_0223149C: .word 0x000006F4
	thumb_func_end ov80_022313C8

