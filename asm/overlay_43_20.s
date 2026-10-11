	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A8C0

	.text

	thumb_func_start ov43_0222A8C0
ov43_0222A8C0: ; 0x0222A8C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0x16
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #4
	add r4, r2, #0
	bl LoadFontPal1
	mov r1, #7
	mov r0, #4
	lsl r1, r1, #6
	add r2, r4, #0
	bl LoadFontPal1
	ldrb r0, [r6, #0xd]
	mov r1, #1
	mov r2, #0x46
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	mov r3, #0xc
	bl LoadUserFrameGfx2
	add r0, r5, #0
	add r0, #0x64
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x64
	str r0, [sp, #0x10]
	add r1, r5, #0
	mov r2, #1
	ldr r0, [r5]
	add r1, #0x64
	add r3, r2, #0
	bl AddWindowParameterized
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0x74]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0x78]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0x7c]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0
	bl TouchscreenListMenuSpawner_Create
	str r0, [r5, #0x5c]
	add r0, r4, #0
	bl YesNoPrompt_Create
	str r0, [r5, #0x60]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A8C0

