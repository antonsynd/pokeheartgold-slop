	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_022465D8
	.extern ov41_02246830

    .text

	.text
	thumb_func_start ov41_022465D8
ov41_022465D8: ; 0x022465D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0224665C ; =0x04000454
	str r3, [sp]
	mov r1, #0
	str r1, [r0]
	sub r0, #0x10
	add r6, r2, #0
	ldr r7, [sp, #0x18]
	str r1, [r0]
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r1, _02246660 ; =0x04000470
	lsl r0, r4, #0xc
	str r0, [r1]
	lsl r0, r6, #0xc
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
	ldr r0, [sp]
	ldr r1, _02246664 ; =FX_SinCosTable_
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	ldr r3, [r7]
	ldr r0, _02246668 ; =0x0400046C
	str r3, [r0]
	str r1, [r0]
	neg r1, r4
	str r2, [r0]
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	neg r1, r6
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #4]
	sub r0, #0x28
	str r1, [r0]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02246644
	add r0, r5, #0
	bl ov41_02246830
_02246644:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _02246650
	ldr r0, [r5, #0x20]
	bl PokepicManager_DrawAll
_02246650:
	ldr r0, _0224666C ; =0x04000448
	mov r1, #1
	str r1, [r0]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224665C: .word 0x04000454
_02246660: .word 0x04000470
_02246664: .word FX_SinCosTable_
_02246668: .word 0x0400046C
_0224666C: .word 0x04000448
	thumb_func_end ov41_022465D8

