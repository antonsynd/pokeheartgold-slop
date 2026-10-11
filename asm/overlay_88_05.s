	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_02258ABC
	.extern ov88_02258B34
	.extern ov88_02258C98
	.extern ov88_02259958

	.text

	.text
	thumb_func_start ov88_02258ABC
ov88_02258ABC: ; 0x02258ABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc6
	add r4, r1, #0
	bl NARC_New
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x30
	add r1, r4, #0
	bl GF_CreateVramTransferManager
	ldr r0, _02258AF0 ; =ov88_02259958
	bl GfGfx_SetBanks
	add r0, r5, #0
	add r1, r4, #0
	bl ov88_02258B34
	add r0, r5, #0
	add r1, r4, #0
	bl ov88_02258C98
	pop {r3, r4, r5, pc}
	nop
_02258AF0: .word ov88_02259958
	thumb_func_end ov88_02258ABC

