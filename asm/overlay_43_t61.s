	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B944
	.extern ov43_0222A24C
	.extern ov43_0222C788
	.extern ov43_0222ED74
	.extern ov43_0222EE08
	.extern ov43_0222EEB0
	.extern ov43_0222EEE0

	.text

	.text
	thumb_func_start ov43_0222B944
ov43_0222B944: ; 0x0222B944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x18]
	mov r0, #0
	ldr r5, _0222BA9C ; =ov43_0222ED74
	ldr r6, _0222BAA0 ; =ov43_0222EE08
	add r7, r2, #0
	str r3, [sp, #0x1c]
	str r0, [sp, #0x28]
	add r4, #8
_0222B95A:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	str r0, [sp]
	ldrh r3, [r5]
	add r0, r4, #0
	add r2, r6, #0
	bl ov43_0222C788
	ldr r0, [sp, #0x28]
	add r5, r5, #2
	add r0, r0, #1
	add r6, r6, #6
	add r4, #0x38
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0222B95A
	ldr r0, [r7, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0
	mov r2, #0x10
	bl ov42_02227060
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, #0xb4
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r0, #0xb4
	ldr r0, [r0]
	mov r2, #2
	bl ov42_02227228
	mov r3, #0x15
	ldr r1, [sp, #0x18]
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0222BAA4 ; =0x0000014F
	add r1, #0xb8
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r7]
	mov r2, #1
	bl ov43_0222A24C
	ldr r0, [r7, #0x54]
	mov r1, #7
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222BAA8 ; =0x00010F00
	mov r1, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r0, #0xb8
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, _0222BAAC ; =ov43_0222EEE0
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x24]
_0222B9F4:
	ldr r1, [sp, #0x1c]
	mov r0, #4
	bl ListMenuItems_New
	add r1, r6, #0
	add r1, #0xe4
	ldr r5, [sp, #0x24]
	str r0, [r1]
	mov r4, #0
_0222BA06:
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldr r1, [r7, #0x54]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _0222BA06
	ldr r0, [sp, #0x24]
	add r6, r6, #4
	add r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #2
	blt _0222B9F4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0222BAB0 ; =0x00000161
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r7]
	add r1, #0xc8
	mov r2, #1
	mov r3, #2
	bl ov43_0222A24C
	ldr r1, [sp, #0x1c]
	mov r0, #0x80
	bl String_New
	ldr r1, [sp, #0x18]
	ldr r4, _0222BAB4 ; =ov43_0222EEB0
	add r1, #0xd8
	str r0, [r1]
	add r3, sp, #0x2c
	mov r2, #6
_0222BA6A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222BA6A
	ldr r0, [r7, #4]
	add r7, #0x88
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r7, [sp, #0x30]
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, [sp, #0x18]
	add r1, #0xf8
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, #0xf8
	str r0, [sp, #0x18]
	ldr r0, [r0]
	bl Sprite_SetDrawFlag
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222BA9C: .word ov43_0222ED74
_0222BAA0: .word ov43_0222EE08
_0222BAA4: .word 0x0000014F
_0222BAA8: .word 0x00010F00
_0222BAAC: .word ov43_0222EEE0
_0222BAB0: .word 0x00000161
_0222BAB4: .word ov43_0222EEB0
	thumb_func_end ov43_0222B944

