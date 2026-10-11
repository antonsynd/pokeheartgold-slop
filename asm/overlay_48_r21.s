	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259464
	.extern ov48_022594F0
	.extern ov48_02259688
	.extern ov48_02259750
	.extern ov48_0225B210

	.text

	.text
	thumb_func_start ov48_02259464
ov48_02259464: ; 0x02259464
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xc0
	add r1, r4, #0
	bl NARC_New
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x40
	add r1, r4, #0
	bl GF_CreateVramTransferManager
	ldr r0, _022594A4 ; =ov48_0225B210
	bl GfGfx_SetBanks
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov48_022594F0
	add r0, r5, #0
	add r1, r4, #0
	bl ov48_02259688
	add r0, r5, #0
	add r1, r4, #0
	bl ov48_02259750
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022594A4: .word ov48_0225B210
	thumb_func_end ov48_02259464

