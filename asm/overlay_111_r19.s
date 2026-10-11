	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E67EC
	.extern ov111_021E6A44

	.text

	.text
	thumb_func_start ov111_021E67EC
ov111_021E67EC: ; 0x021E67EC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r1, [r4]
	mvn r0, r0
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r0, _021E6858 ; =0xFFF8FFFF
	and r1, r0
	lsl r0, r2, #0x1d
	lsr r0, r0, #0xd
	orr r0, r1
	str r0, [r4, #0x30]
	str r3, [r4, #0x14]
	ldr r3, [r4, #0x18]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x1d
	bl NewMsgDataFromNarc
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	bl MessageFormat_New
	str r0, [r4, #8]
	bl ResetAllTextPrinters
	ldr r1, [r4, #0x30]
	ldr r0, [r4]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	ldr r2, [r4, #0x18]
	lsr r1, r1, #0x18
	bl ov111_021E6A44
	mov r1, #0x1e
	ldr r2, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r2, #0
	str r2, [sp]
	ldr r1, [r4, #0x30]
	ldr r0, [r4]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	mov r3, #1
	bl BG_FillCharDataRange
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E6858: .word 0xFFF8FFFF
	thumb_func_end ov111_021E67EC

