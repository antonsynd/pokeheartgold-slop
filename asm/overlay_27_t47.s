	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225C618
	.extern ov27_0225D4B8

	.text

	.text
	thumb_func_start ov27_0225C618
ov27_0225C618: ; 0x0225C618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [r0, #0xc]
	bl ov01_021EEF58
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0xc]
	bl ov01_021EEF60
	add r6, r0, #0
	mov r0, #0xef
	mov r1, #8
	bl NARC_New
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r1, #1
	ldr r2, [r2, #0x18]
	mov r3, #4
	add r4, r0, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	ldr r2, [r2, #0x18]
	add r1, r6, #0
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r4, #0
	bl NARC_Delete
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _0225C6A6
	add r4, r0, #0
	ldr r5, [sp, #0x10]
	sub r0, r6, #2
	lsl r0, r0, #2
	add r5, #0x54
	str r0, [sp, #0x18]
_0225C686:
	ldr r3, _0225C6F0 ; =ov27_0225D4B8
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r2, [r3, r2]
	ldr r0, [r0, #0x18]
	add r1, r5, #0
	add r2, r2, r4
	bl AddWindow
	ldr r0, [sp, #0x14]
	add r4, #8
	add r0, r0, #1
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _0225C686
_0225C6A6:
	mov r5, #0
	cmp r6, #0
	ble _0225C6E4
	ldr r4, [sp, #0x10]
	add r4, #0x54
_0225C6B0:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225C6F4 ; =0x00020100
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r7]
	add r0, r4, #0
	mov r3, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r5, r5, #1
	add r4, #0x10
	add r7, #8
	cmp r5, r6
	blt _0225C6B0
_0225C6E4:
	mov r1, #0x85
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	str r6, [r0, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225C6F0: .word ov27_0225D4B8
_0225C6F4: .word 0x00020100
	thumb_func_end ov27_0225C618

