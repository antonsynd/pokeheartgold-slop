	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_076
	.public ov80_0222F4F0

	.text

	thumb_func_start FrtCmd_076
FrtCmd_076: ; 0x0222DE1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0209680C
	add r5, r0, #0
	add r0, #0xa4
	ldr r0, [r0]
	add r5, #0xa4
	cmp r0, #0
	beq _0222DE3E
	bl GF_AssertFail
	ldr r0, [r5]
	bl SysTask_Destroy
_0222DE3E:
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r6, r0, #0
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r7, r0, #0
	add r0, r4, #0
	bl FrontierScript_ReadVar
	str r0, [sp]
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strh r6, [r5, #4]
	ldr r0, [sp]
	strh r7, [r5, #6]
	strb r0, [r5, #9]
	ldr r0, _0222DE84 ; =ov80_0222F4F0
	ldr r2, _0222DE88 ; =0x00011170
	add r1, r5, #0
	strb r4, [r5, #0xa]
	bl SysTask_CreateOnMainQueue
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DE84: .word ov80_0222F4F0
_0222DE88: .word 0x00011170
	thumb_func_end FrtCmd_076

