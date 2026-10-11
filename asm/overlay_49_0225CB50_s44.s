	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"
	.public ov49_0225D4A0

    .text

	.text
	thumb_func_start ov49_0225D4A0
ov49_0225D4A0: ; 0x0225D4A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	add r6, r2, #0
	cmp r0, #0x12
	blo _0225D4B2
	bl GF_AssertFail
_0225D4B2:
	ldrh r0, [r4, #2]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl NNS_G3dMdlSetMdlLightEnableFlagAll
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D4A0

