	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241DDC
	.extern ov81_02240F48

	.text

	.text
	thumb_func_start ov81_02241DDC
ov81_02241DDC: ; 0x02241DDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02241E64 ; =0x0000047C
	str r1, [sp, #8]
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _02241DF6
	mov r0, #0x30
	str r0, [sp, #0x10]
	mov r0, #0x50
	str r0, [sp, #0xc]
	b _02241DFE
_02241DF6:
	mov r0, #0x48
	str r0, [sp, #0x10]
	mov r0, #0x70
	str r0, [sp, #0xc]
_02241DFE:
	mov r4, #0
	cmp r1, #0
	bls _02241E5E
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	add r7, r5, #0
_02241E0A:
	mov r2, #0xf2
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	ldrh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r1, r4, #0x18
	str r0, [sp, #4]
	ldr r6, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r6, r3
	bl ov81_02240F48
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #6
	mov r2, #1
	bl Pokepic_SetAttr
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, _02241E64 ; =0x0000047C
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _02241E0A
_02241E5E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02241E64: .word 0x0000047C
	thumb_func_end ov81_02241DDC

