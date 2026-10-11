	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022307FC
	.public ov40_02230864

	.text

	thumb_func_start ov40_022307FC
ov40_022307FC: ; 0x022307FC
	push {r4, lr}
	ldr r2, _0223085C ; =0x00004160
	add r4, r1, #0
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	ldr r1, [r4, r2]
	cmp r1, #7
	blt _02230846
	bl SysTask_Destroy
	ldr r0, _0223085C ; =0x00004160
	mov r2, #0
	str r2, [r4, r0]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02087A54
	ldr r0, _02230860 ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, _02230860 ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020878B0
	ldr r0, _02230860 ; =0x00004164
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	pop {r4, pc}
_02230846:
	lsl r0, r1, #1
	add r0, r0, #6
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r2, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	pop {r4, pc}
	nop
_0223085C: .word 0x00004160
_02230860: .word 0x00004164
	thumb_func_end ov40_022307FC

	thumb_func_start ov40_02230864
ov40_02230864: ; 0x02230864
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223092C ; =0x0000415C
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _02230884
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223087E
	bl SysTask_Destroy
_0223087E:
	ldr r0, _02230930 ; =0x00004168
	mov r1, #0
	str r1, [r4, r0]
_02230884:
	ldr r0, _02230934 ; =gSystem + 0x60
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _02230890
	ldr r0, _02230938 ; =0x000006F4
	b _02230894
_02230890:
	mov r0, #0x6f
	lsl r0, r0, #4
_02230894:
	ldr r1, [r4, r0]
	ldr r0, _0223093C ; =0x00004164
	str r1, [r4, r0]
	ldr r0, _0223092C ; =0x0000415C
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	ldr r0, _0223093C ; =0x00004164
	ldr r0, [r4, r0]
	bl sub_02087A30
	ldr r0, _0223093C ; =0x00004164
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020878B0
	ldr r0, _0223093C ; =0x00004164
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020879E0
	ldr r0, _0223093C ; =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_020878B8
	ldr r0, _0223093C ; =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02087948
	mov r2, #1
	ldr r0, _02230940 ; =ov40_022307FC
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
	ldr r2, _02230930 ; =0x00004168
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _02230912
	add r1, r4, #0
	bl ov40_022307FC
	add sp, #8
	pop {r4, pc}
_02230912:
	add r0, r2, #0
	mov r1, #0
	sub r0, #0xc
	str r1, [r4, r0]
	sub r0, r2, #4
	ldr r0, [r4, r0]
	bl sub_020879E0
	bl GF_AssertFail
	add sp, #8
	pop {r4, pc}
	nop
_0223092C: .word 0x0000415C
_02230930: .word 0x00004168
_02230934: .word gSystem + 0x60
_02230938: .word 0x000006F4
_0223093C: .word 0x00004164
_02230940: .word ov40_022307FC
	thumb_func_end ov40_02230864

