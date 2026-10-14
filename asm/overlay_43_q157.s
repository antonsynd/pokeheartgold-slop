	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DFB0
	.public ov43_0222E0E8
	.public ov43_0222E220
	.extern ov43_0222ABFC
	.extern ov43_0222DEF8
	.extern ov43_0222EC58

	.text

	.text
	thumb_func_start ov43_0222DFB0
ov43_0222DFB0: ; 0x0222DFB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	add r4, r2, #0
	bl sub_0202C6F4
	str r0, [sp, #0x28]
	mov r1, #0
	str r4, [sp]
	mov r0, #0x13
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, _0222E0E4 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	add r2, r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r5, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	bl ov43_0222EC58
	mov r6, #0
	str r6, [sp, #0x24]
_0222DFEE:
	ldr r0, [sp, #0x24]
	str r4, [sp]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #0
	add r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0222E0E4 ; =0x00010200
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #2
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	bl ov43_0222EC58
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x28]
	add r2, r6, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0222E0E4 ; =0x00010200
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #2
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	bl ov43_0222EC58
	ldr r0, [sp, #0x24]
	add r6, r6, #1
	add r0, #0x18
	str r0, [sp, #0x24]
	cmp r6, #2
	blo _0222DFEE
	str r4, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E0E4 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	mov r2, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r5, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	bl ov43_0222EC58
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x28]
	mov r2, #3
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E0E4 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	add r4, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r2, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r1, [sp, #0x1c]
	bl ov43_0222EC58
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl ov43_0222DEF8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E0E4: .word 0x00010200
	thumb_func_end ov43_0222DFB0

	thumb_func_start ov43_0222E0E8
ov43_0222E0E8: ; 0x0222E0E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	str r4, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, _0222E21C ; =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r5, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	add r0, r7, #0
	mov r1, #0x64
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	str r4, [sp]
	add r0, #0x22
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _0222E21C ; =0x00010200
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x7c]
	mov r2, #1
	str r1, [sp, #0x14]
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #2
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	add r0, r7, #0
	mov r1, #0x71
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
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0222E21C ; =0x00010200
	mov r2, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r5, #0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r0, r6, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	ldr r1, _0222E21C ; =0x00010200
	mov r2, #1
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x7c]
	add r3, r5, #0
	str r1, [sp, #0x14]
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #2
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	add r0, r7, #0
	mov r1, #0x70
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
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _0222E21C ; =0x00010200
	mov r2, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x7c]
	add r4, #0x80
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r1, #2
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	add r0, r6, #0
	mov r1, #2
	bl ov43_0222DEF8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E21C: .word 0x00010200
	thumb_func_end ov43_0222E0E8

	thumb_func_start ov43_0222E220
ov43_0222E220: ; 0x0222E220
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	add r6, r3, #0
	add r4, r2, #0
	bl Save_Frontier_GetStatic
	str r0, [sp, #0x24]
	mov r0, #0x80
	add r1, r6, #0
	bl String_New
	add r7, r0, #0
	mov r0, #0x80
	add r1, r6, #0
	bl String_New
	add r6, r0, #0
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x1c]
	mov r1, #3
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x26
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	mov r2, #1
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #1
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x66
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	cmp r0, #0
	bne _0222E2C8
	mov r0, #0x22
	b _0222E2CA
_0222E2C8:
	mov r0, #0x23
_0222E2CA:
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	mov r2, #2
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x73
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
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #2
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x75
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x2b
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	mov r2, #2
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x72
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
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #2
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x74
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x2b
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r2, #2
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, #3
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	add r3, r5, #0
	bl ov43_0222EC58
	mov r1, #3
	str r4, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	add r2, r1, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x68
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	cmp r0, #0
	bne _0222E460
	mov r0, #0x22
	b _0222E462
_0222E460:
	mov r0, #0x23
_0222E462:
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x77
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
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #4
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x79
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x2b
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, _0222E5B0 ; =0x00010200
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl ov43_0222EC58
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r2, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x76
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
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r1, #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r2, #4
	add r3, r5, #0
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x24]
	mov r1, #0x78
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl FrontierSave_GetStat
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x2b
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _0222E5B0 ; =0x00010200
	mov r2, #4
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #3
	add r3, r5, #0
	bl ov43_0222EC58
	ldr r0, [sp, #0x20]
	mov r1, #3
	bl ov43_0222DEF8
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E5B0: .word 0x00010200
	thumb_func_end ov43_0222E220

