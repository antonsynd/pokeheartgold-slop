	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258C8C
	.public ov90_0225BEE0

	.text

	thumb_func_start ov90_02258C8C
ov90_02258C8C: ; 0x02258C8C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02258C9A
	bl GF_AssertFail
_02258C9A:
	ldr r0, _02258CAC ; =ov90_0225BEE0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x2c]
	mov r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
_02258CAC: .word ov90_0225BEE0
	thumb_func_end ov90_02258C8C

