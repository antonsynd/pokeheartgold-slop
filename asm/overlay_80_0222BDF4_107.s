	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_078
	.public ov80_0222F53C

	.text

	thumb_func_start FrtCmd_078
FrtCmd_078: ; 0x0222DEB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0209680C
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r4, #0xb0
	cmp r0, #0
	beq _0222DEDA
	bl GF_AssertFail
	ldr r0, [r4]
	bl SysTask_Destroy
_0222DEDA:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strb r0, [r4, #4]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strb r0, [r4, #5]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strb r0, [r4, #6]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strb r0, [r4, #7]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strh r0, [r4, #8]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strb r0, [r4, #0xa]
	mov r2, #0x4b
	ldr r0, _0222DF28 ; =ov80_0222F53C
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222DF28: .word ov80_0222F53C
	thumb_func_end FrtCmd_078

