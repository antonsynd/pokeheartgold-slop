	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221BB00
	.public ov05_0221BB30
	.public ov05_0221BD28
	.extern ov05_0221E9C4
	.extern ov05_0221E9F8
	.extern ov05_0221EA58
	.extern ov05_0221EA98
	.extern ov05_0221EAC0
	.extern ov05_0221EC00
	.extern ov05_0221EC28
	.extern ov05_0221EC98

	.text

	.text
	thumb_func_start ov05_0221BB00
ov05_0221BB00: ; 0x0221BB00
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0221BB2C ; =ov05_0221EC00
	add r3, sp, #0
	mov r2, #5
_0221BB0A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221BB0A
	add r0, sp, #0
	bl GfGfx_SetBanks
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	add sp, #0x28
	pop {r4, pc}
	nop
_0221BB2C: .word ov05_0221EC00
	thumb_func_end ov05_0221BB00

	thumb_func_start ov05_0221BB30
ov05_0221BB30: ; 0x0221BB30
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov05_0221E9F8
	cmp r0, #0
	bne _0221BB40
	b _0221BD08
_0221BB40:
	ldr r2, _0221BD0C ; =0x00000BBC
	ldr r0, [r4, r2]
	cmp r0, #8
	bhi _0221BBBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221BB54: ; jump table
	.short _0221BD08 - _0221BB54 - 2 ; case 0
	.short _0221BB66 - _0221BB54 - 2 ; case 1
	.short _0221BBA6 - _0221BB54 - 2 ; case 2
	.short _0221BBC4 - _0221BB54 - 2 ; case 3
	.short _0221BC5C - _0221BB54 - 2 ; case 4
	.short _0221BC98 - _0221BB54 - 2 ; case 5
	.short _0221BD08 - _0221BB54 - 2 ; case 6
	.short _0221BCD8 - _0221BB54 - 2 ; case 7
	.short _0221BD08 - _0221BB54 - 2 ; case 8
_0221BB66:
	add r0, r4, #0
	bl ov05_0221E9C4
	ldr r2, _0221BD10 ; =0x00000BAC
	mov r1, #0
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221BD14 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221BD18 ; =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #2
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221BBA6:
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221BBBA
	ldr r0, _0221BD1C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0221BBBC
_0221BBBA:
	b _0221BD08
_0221BBBC:
	mov r0, #3
	add sp, #0xc
	str r0, [r4, r2]
	pop {r3, r4, pc}
_0221BBC4:
	add r0, r2, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221BBE0
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #2
	bl ReadMsgDataIntoString
	b _0221BBF0
_0221BBE0:
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #1
	bl ReadMsgDataIntoString
_0221BBF0:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, _0221BD20 ; =0x00000B98
	mov r2, #0
	add r0, r4, r0
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	ldr r0, _0221BD20 ; =0x00000B98
	mov r1, #0
	add r0, r4, r0
	mov r2, #1
	mov r3, #0xf
	bl DrawFrameAndWindow2
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221BD20 ; =0x00000B98
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x1c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221BD18 ; =0x00000BB8
	mov r2, #0x1f
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, _0221BD24 ; =ov05_0221EA58
	ldr r0, [r0, #0x24]
	mov r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl CreateYesNoMenu
	mov r1, #0x2f
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221BC5C:
	ldr r1, [r4]
	add r0, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0x24]
	bl Handle2dMenuInput_DeleteOnFinish
	cmp r0, #0
	beq _0221BC78
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0221BC88
	add sp, #0xc
	pop {r3, r4, pc}
_0221BC78:
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #5
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221BC88:
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221BC98:
	add r0, r4, #0
	bl ov05_0221E9C4
	ldr r2, _0221BD10 ; =0x00000BAC
	mov r1, #5
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221BD14 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221BD18 ; =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #6
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221BCD8:
	add r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0221BCF0
	ldr r1, [r4]
	ldr r1, [r1, #0x24]
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x2f
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0221BCF0:
	ldr r0, _0221BD14 ; =0x00000B88
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0221BD0C ; =0x00000BBC
	mov r1, #8
	str r1, [r4, r0]
_0221BD08:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0221BD0C: .word 0x00000BBC
_0221BD10: .word 0x00000BAC
_0221BD14: .word 0x00000B88
_0221BD18: .word 0x00000BB8
_0221BD1C: .word gSystem
_0221BD20: .word 0x00000B98
_0221BD24: .word ov05_0221EA58
	thumb_func_end ov05_0221BB30

	thumb_func_start ov05_0221BD28
ov05_0221BD28: ; 0x0221BD28
	push {r3, r4, r5, lr}
	ldr r1, _0221BDE0 ; =0x04000050
	add r4, r0, #0
	mov r0, #0
	strh r0, [r1]
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0221BDE4 ; =0xFFFFE0FF
	ldr r5, _0221BDE8 ; =0x04000304
	and r0, r2
	str r0, [r1]
	ldr r0, _0221BDEC ; =0x04001000
	add r1, #0x50
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldrh r3, [r5]
	lsr r2, r5, #0xb
	add r0, #0x50
	orr r2, r3
	strh r2, [r5]
	mov r2, #0
	strh r2, [r1]
	strh r2, [r0]
	bl ov05_0221BB00
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl BgConfig_Alloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl PaletteData_Init
	str r0, [r4, #8]
	ldr r3, [r4]
	mov r1, #0
	ldr r3, [r3, #0x24]
	lsr r2, r5, #0x11
	bl PaletteData_AllocBuffers
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	ldr r0, _0221BDF0 ; =0x00000B82
	mov r3, #0
	strb r3, [r4, r0]
	sub r1, r0, #1
	mov r2, #8
	strb r2, [r4, r1]
	sub r0, r0, #2
	strb r3, [r4, r0]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221BDBE
	cmp r0, #1
	beq _0221BDC4
	cmp r0, #2
	beq _0221BDCA
	b _0221BDDC
_0221BDBE:
	ldr r0, _0221BDF4 ; =ov05_0221EAC0
	str r0, [r4, #4]
	b _0221BDDC
_0221BDC4:
	ldr r0, _0221BDF8 ; =ov05_0221EA98
	str r0, [r4, #4]
	b _0221BDDC
_0221BDCA:
	add r1, #0x2a
	ldrb r0, [r1]
	cmp r0, #3
	bne _0221BDD8
	ldr r0, _0221BDFC ; =ov05_0221EC28
	str r0, [r4, #4]
	b _0221BDDC
_0221BDD8:
	ldr r0, _0221BE00 ; =ov05_0221EC98
	str r0, [r4, #4]
_0221BDDC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221BDE0: .word 0x04000050
_0221BDE4: .word 0xFFFFE0FF
_0221BDE8: .word 0x04000304
_0221BDEC: .word 0x04001000
_0221BDF0: .word 0x00000B82
_0221BDF4: .word ov05_0221EAC0
_0221BDF8: .word ov05_0221EA98
_0221BDFC: .word ov05_0221EC28
_0221BE00: .word ov05_0221EC98
	thumb_func_end ov05_0221BD28

