	.include "macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_022318D0

    .text

	.text
	thumb_func_start ov80_022318D0
ov80_022318D0: ; 0x022318D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x20]
	bl Save_Frontier_GetStatic
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205C0A0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205C0A0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FrontierSave_GetStat
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xf
	and r0, r1
	strh r0, [r6]
	asr r0, r1, #4
	strh r0, [r4]
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02231928
	add sp, #8
	ldrh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02231928:
	ldrh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_022318D0

