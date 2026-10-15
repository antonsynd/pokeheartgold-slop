	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A998
	.extern ov43_0222F0C0

	.text

	.text
	thumb_func_start ov43_0222A998
ov43_0222A998: ; 0x0222A998
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	mov r1, #0x82
	lsl r1, r1, #2
	ldr r4, _0222A9D4 ; =ov43_0222F0C0
	str r0, [sp, #4]
	mov r7, #0
	add r6, r0, r1
	add r5, r0, #0
_0222A9AC:
	ldr r0, [sp, #8]
	mov r2, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldrb r1, [r4]
	ldr r0, [r0, #0x58]
	add r3, r6, #0
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #1
	add r5, r5, #4
	cmp r7, #2
	blt _0222A9AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A9D4: .word ov43_0222F0C0
	thumb_func_end ov43_0222A998

