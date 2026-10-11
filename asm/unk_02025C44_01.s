	.include "asm/macros.inc"
	.include "unk_02025C44.inc"
	.include "global.inc"
	.public sub_02025C54

	.text

	.text
	thumb_func_start sub_02025C54
sub_02025C54: ; 0x02025C54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl NNS_G2dInitRenderSurface
	add r2, r5, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	str r6, [r5, #0x28]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x2c]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02025C84
	add r1, r5, #0
	bl NNS_G2dAddRendererTargetSurface
_02025C84:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02025C54

