	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258CB0
	.public ov90_0225C06C

	.text

	thumb_func_start ov90_02258CB0
ov90_02258CB0: ; 0x02258CB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02258CBE
	bl GF_AssertFail
_02258CBE:
	ldr r0, _02258CD8 ; =ov90_0225C06C
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x2c]
	mov r0, #1
	strh r0, [r4, #4]
	ldr r0, _02258CDC ; =0x000005F1
	bl PlaySE
	pop {r4, pc}
	nop
_02258CD8: .word ov90_0225C06C
_02258CDC: .word 0x000005F1
	thumb_func_end ov90_02258CB0

