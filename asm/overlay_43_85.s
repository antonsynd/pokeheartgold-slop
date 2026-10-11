	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222ABFC
	.public ov43_0222DEF8
	.public ov43_0222E78C
	.public ov43_0222EC58

	.text

	thumb_func_start ov43_0222E78C
ov43_0222E78C: ; 0x0222E78C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	str r3, [sp, #0x24]
	add r4, r2, #0
	bl Save_Frontier_GetStatic
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	mov r0, #0x80
	bl String_New
	add r7, r0, #0
	ldr r1, [sp, #0x24]
	mov r0, #0x80
	bl String_New
	add r6, r0, #0
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, _0222E900 ; =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, #5
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	mov r1, #0x7c
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	ldr r1, [sp, #0x24]
	bl GetSpeciesName
	str r0, [sp, #0x2c]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222E900 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x20]
	ldr r2, [sp, #0x2c]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x2c]
	bl String_Delete
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	mov r1, #0x6a
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	cmp r0, #0
	bne _0222E826
	mov r0, #0x22
	b _0222E828
_0222E826:
	mov r0, #0x23
_0222E828:
	str r4, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _0222E900 ; =0x00010200
	mov r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	mov r1, #0x7b
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x25
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _0222E900 ; =0x00010200
	mov r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _0222E900 ; =0x00010200
	mov r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x28]
	mov r1, #0x7a
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x25
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _0222E900 ; =0x00010200
	mov r1, #5
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r3, r5, #0
	bl ov43_0222EC58
	ldr r0, [sp, #0x20]
	mov r1, #5
	bl ov43_0222DEF8
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E900: .word 0x00010200
	thumb_func_end ov43_0222E78C

