	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CC4C
	.public ov91_0225CCEC
	.public ov91_0225CE80

	.text

	thumb_func_start ov91_0225CC4C
ov91_0225CC4C: ; 0x0225CC4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	ldr r0, [r5]
	cmp r0, #0
	beq _0225CC6C
	bl ov90_02258938
	mov r0, #0
	str r0, [r5]
_0225CC6C:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _0225CC8C
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0225CC82
	ldr r0, [r5, #0x30]
	bl ov91_0225CCEC
_0225CC82:
	ldr r0, [r5, #0x34]
	bl ov91_0225CE80
	bl GF_DestroyVramTransferManager
_0225CC8C:
	add r4, #0x38
	ldrb r0, [r4]
	cmp r0, #0
	beq _0225CC98
	bl ov00_021E6A4C
_0225CC98:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225CCA6
	bl ov90_02258A04
	mov r0, #0
	str r0, [r5, #4]
_0225CCA6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov91_0225CC4C

