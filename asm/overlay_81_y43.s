	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240D64
	.extern ov81_0223E87C
	.extern ov81_0223E8B0
	.extern ov81_0223EBE4
	.extern ov81_0223EC44
	.extern ov81_022401C8
	.extern ov81_022403C0
	.extern ov81_02240448
	.extern ov81_02240F08
	.extern ov81_02242500
	.extern ov81_0224271C
	.extern ov81_02243100

	.text

	.text
	thumb_func_start ov81_02240D64
ov81_02240D64: ; 0x02240D64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb7
	mov r1, #0x64
	bl NARC_New
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov81_022403C0
	add r0, r5, #0
	bl ov81_02240448
	mov r0, #4
	mov r1, #0x64
	bl FontID_Alloc
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xc2
	mov r3, #0x64
	bl NewMsgDataFromNarc
	str r0, [r5, #0x1c]
	mov r0, #0x64
	bl MessageFormat_New
	str r0, [r5, #0x20]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x64
	bl String_New
	str r0, [r5, #0x24]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x64
	bl String_New
	str r0, [r5, #0x28]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x40
_02240DBE:
	add r0, r7, #0
	mov r1, #0x64
	bl String_New
	str r0, [r4, #0x2c]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02240DBE
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x64
	bl LoadFontPal0
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x64
	bl LoadFontPal0
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x64
	bl LoadFontPal1
	mov r1, #6
	mov r0, #4
	lsl r1, r1, #6
	mov r2, #0x64
	bl LoadFontPal1
	mov r0, #0x64
	bl PokepicManager_Create
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02037474
	cmp r0, #0
	beq _02240E26
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
_02240E26:
	add r0, r5, #0
	mov r1, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _02240E40
	add r0, r5, #0
	bl ov81_0223E87C
	add r0, r5, #0
	bl ov81_0223E8B0
	b _02240E4C
_02240E40:
	add r0, r5, #0
	bl ov81_0223EBE4
	add r0, r5, #0
	bl ov81_0223EC44
_02240E4C:
	add r0, r5, #0
	bl ov81_02242500
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, r1]
	bl ov81_02243100
	add r0, r5, #0
	bl ov81_0224271C
	bl GfGfx_BothDispOn
	ldr r0, _02240E74 ; =ov81_022401C8
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240E74: .word ov81_022401C8
	thumb_func_end ov81_02240D64

