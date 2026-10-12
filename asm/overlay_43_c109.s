	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D0F8
	.extern _0222ED5C

	.text

	.text
	thumb_func_start ov43_0222D0F8
ov43_0222D0F8: ; 0x0222D0F8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _0222D130 ; =_0222ED5C
	add r4, r1, #0
	ldrb r5, [r3, #1]
	ldrb r3, [r3, #2]
	add r1, sp, #0xc
	strb r5, [r1]
	strb r3, [r1, #1]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r0, sp, #0xc
	ldrb r0, [r0, r2]
	mov r1, #2
	mov r2, #0x11
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, #0x14
	bl BgTilemapRectChangePalette
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222D130: .word _0222ED5C
	thumb_func_end ov43_0222D0F8

