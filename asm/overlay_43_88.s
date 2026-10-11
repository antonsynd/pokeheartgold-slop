	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222EC58

	.text

	thumb_func_start ov43_0222EC58
ov43_0222EC58: ; 0x0222EC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x30]
	add r7, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x48]
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x38]
	bl ReadMsgDataIntoString
	ldr r0, [r6, #0x50]
	ldr r2, [sp, #0x48]
	add r1, r4, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	beq _0222EC88
	cmp r0, #2
	beq _0222EC9A
	b _0222ECA6
_0222EC88:
	mov r0, #1
	add r1, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	add r0, r0, #1
	lsr r0, r0, #1
	sub r5, r5, r0
	b _0222ECA6
_0222EC9A:
	mov r0, #1
	add r1, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	sub r5, r5, r0
_0222ECA6:
	ldr r0, [sp, #0x3c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsl r0, r0, #2
	add r0, r7, r0
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222EC58

