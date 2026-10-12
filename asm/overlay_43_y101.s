	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D0F8
	.public ov43_0222D134
	.extern _0222ED5C
	.extern ov43_0222D584

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

	thumb_func_start ov43_0222D134
ov43_0222D134: ; 0x0222D134
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl Save_VarsFlags_Get
	mov r1, #2
	mov r2, #0x1b
	bl Save_VarsFlags_FlypointFlagAction
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov43_0222D584
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D134

