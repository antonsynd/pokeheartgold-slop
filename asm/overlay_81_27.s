	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240CD4
	.public ov81_02240D2C
	.public ov81_02240D64
	.public ov81_02242BC8
	.public ov81_02242FDC
	.public ov81_022430E8

	.text

	thumb_func_start ov81_02240CD4
ov81_02240CD4: ; 0x02240CD4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov81_02240D2C
	mov r2, #2
	mov r1, #0
	ldr r0, _02240D24 ; =ov81_02242BC8
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x64
	add r3, r1, #0
	bl GF_3DVramMan_Create
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x64
	bl BgConfig_Alloc
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov81_02240D64
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0x50
	bl ov81_02242FDC
	ldr r0, _02240D28 ; =0x0000047C
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _02240D1E
	add r4, #0x70
	add r0, r4, #0
	bl ov81_022430E8
_02240D1E:
	add sp, #8
	pop {r4, pc}
	nop
_02240D24: .word ov81_02242BC8
_02240D28: .word 0x0000047C
	thumb_func_end ov81_02240CD4

