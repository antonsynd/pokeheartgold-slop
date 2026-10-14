	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223F200
	.extern ov83_0223F690
	.extern ov83_0223F70C
	.extern ov83_0223F7A0
	.extern ov83_02240E70
	.extern ov83_02240F7C
	.extern ov83_022411B0
	.extern ov83_022411DC
	.extern ov83_02241E18
	.extern ov83_02241FF0
	.extern ov83_022421E0
	.extern ov83_02242894

    .text

	.text
	thumb_func_start ov83_0223F200
ov83_0223F200: ; 0x0223F200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #0xb7
	mov r1, #0x6b
	bl NARC_New
	ldr r1, _0223F594 ; =0x000007A8
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov83_0223F690
	add r0, r5, #0
	bl ov83_0223F70C
	mov r0, #4
	mov r1, #0x6b
	bl FontID_Alloc
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x1f
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	str r0, [r5, #0x20]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xdd
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	str r0, [r5, #0x1c]
	mov r0, #0x6b
	bl MessageFormat_New
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_0223F268:
	add r0, r7, #0
	mov r1, #0x6b
	bl String_New
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0223F268
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x6b
	bl LoadFontPal0
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x6b
	bl LoadFontPal1
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x6b
	bl MessagePrinter_New
	ldr r1, _0223F598 ; =0x00000504
	mov r2, #0
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	bl ov83_022478D4
	add r0, sp, #0x30
	add r1, sp, #0x34
	add r3, sp, #0x30
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x34
	add r3, #2
	bl ov83_02240F7C
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5A0 ; =0x00000734
	str r0, [r5, r1]
	mov r1, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x7c
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5A4 ; =0x00000738
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov83_0224755C
	ldr r0, _0223F5A4 ; =0x00000738
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223F32C
	mov r0, #0x48
	mov r7, #0x40
	str r0, [sp, #0x18]
	b _0223F332
_0223F32C:
	mov r0, #0x28
	mov r7, #0x20
	str r0, [sp, #0x18]
_0223F332:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	mov r6, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bgt _0223F344
	b _0223F45C
_0223F344:
	add r4, r5, #0
_0223F346:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov83_02247454
	ldr r1, _0223F5A8 ; =0x0000074C
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x58
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	cmp r0, #0
	bne _0223F394
	ldr r0, _0223F5A8 ; =0x0000074C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov83_0224755C
_0223F394:
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r5, #0
	bl ov83_022411B0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r5, #0
	bl ov83_022411DC
	mov r1, #0
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov83_02247454
	ldr r1, _0223F5AC ; =0x00000768
	mov r2, #0xa
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0223F59C ; =0x00000518
	add r1, #0xa
	add r0, r5, r0
	mov r3, #5
	bl ov83_02247454
	ldr r1, _0223F5B0 ; =0x0000073C
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, _0223F5B0 ; =0x0000073C
	ldr r0, [r4, r0]
	bl ov83_022475EC
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	bge _0223F45C
	b _0223F346
_0223F45C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0x10]
	mov r1, #3
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_022474C4
	ldr r1, _0223F5B4 ; =0x0000079C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_0223F48C:
	add r1, sp, #0x2c
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0x2c
	bl ov83_02242894
	str r7, [sp]
	add r1, sp, #0x2c
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r3, #4
	str r0, [sp, #4]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r1, r4, #4
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r7, [sp, #0xc]
	add r0, r5, r0
	str r7, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5B8 ; =0x00000784
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov83_0224755C
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blt _0223F48C
	add r0, r5, #0
	add r1, sp, #0x3c
	add r2, sp, #0x38
	mov r3, #0
	bl ov83_02240E70
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0x10]
	bl ov83_02247454
	mov r1, #0x76
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x3c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5BC ; =0x00000764
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223F548
	ldr r0, _0223F5BC ; =0x00000764
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
_0223F548:
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _0223F59C ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5C0 ; =0x00000778
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	mov r1, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0223F59C ; =0x00000518
	add r2, r1, #0
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0223F5C4 ; =0x0000077C
	b _0223F5C8
	nop
_0223F594: .word 0x000007A8
_0223F598: .word 0x00000504
_0223F59C: .word 0x00000518
_0223F5A0: .word 0x00000734
_0223F5A4: .word 0x00000738
_0223F5A8: .word 0x0000074C
_0223F5AC: .word 0x00000768
_0223F5B0: .word 0x0000073C
_0223F5B4: .word 0x0000079C
_0223F5B8: .word 0x00000784
_0223F5BC: .word 0x00000764
_0223F5C0: .word 0x00000778
_0223F5C4: .word 0x0000077C
_0223F5C8:
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	add r0, r5, #0
	bl ov83_02241E18
	add r0, r5, #0
	bl ov83_02241FF0
	add r0, r5, #0
	mov r1, #1
	bl ov83_022421E0
	mov r1, #0
	str r1, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223F67C ; =0x00000518
	str r1, [sp, #0x10]
	mov r1, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_022474C4
	mov r3, #0x1e
	lsl r3, r3, #6
	add r2, r3, #0
	str r0, [r5, r3]
	add r1, r3, #0
	add r2, #0x8c
	ldr r0, [r5, r3]
	add r1, #0x88
	add r3, #0x94
	ldrh r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r5, r3]
	bl ov83_02247668
	ldrb r2, [r5, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ov83_02247A24
	ldr r1, _0223F680 ; =0x00000838
	str r0, [r5, r1]
	ldr r1, _0223F67C ; =0x00000518
	ldr r0, [r5, r1]
	sub r1, #0x18
	ldr r1, [r5, r1]
	bl ov83_02247CB8
	ldr r1, _0223F684 ; =0x0000083C
	str r0, [r5, r1]
	add r1, #0x10
	add r0, r5, r1
	bl ov83_02247844
	bl sub_02037474
	cmp r0, #0
	beq _0223F660
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
_0223F660:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0223F688 ; =0x04000050
	mov r1, #0
	mov r2, #0xe
	mov r3, #6
	bl G2x_SetBlendAlpha_
	ldr r0, _0223F68C ; =ov83_0223F7A0
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F67C: .word 0x00000518
_0223F680: .word 0x00000838
_0223F684: .word 0x0000083C
_0223F688: .word 0x04000050
_0223F68C: .word ov83_0223F7A0
	thumb_func_end ov83_0223F200

