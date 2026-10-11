	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02258A1C
	.extern ov47_02258AA0
	.extern ov47_02258BB4
	.extern ov47_02259EC0

	.text

	.text
	thumb_func_start ov47_02258A1C
ov47_02258A1C: ; 0x02258A1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	bl Save_PlayerData_GetOptionsAddr
	add r6, r0, #0
	mov r0, #0xd1
	add r1, r4, #0
	bl NARC_New
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x20
	add r1, r4, #0
	bl GF_CreateVramTransferManager
	ldr r0, _02258A5C ; =ov47_02259EC0
	bl GfGfx_SetBanks
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov47_02258AA0
	add r0, r5, #0
	add r1, r4, #0
	bl ov47_02258BB4
	pop {r4, r5, r6, pc}
	nop
_02258A5C: .word ov47_02259EC0
	thumb_func_end ov47_02258A1C

