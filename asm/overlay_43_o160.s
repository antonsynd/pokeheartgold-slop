	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222EA40
	.extern ov43_0222ABFC
	.extern ov43_0222AC18
	.extern ov43_0222DEF8
	.extern ov43_0222EC58

	.text

	.text
	thumb_func_start ov43_0222EA40
ov43_0222EA40: ; 0x0222EA40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	add r4, r2, #0
	add r7, r3, #0
	bl Save_Frontier_GetStatic
	ldr r0, [r5, #4]
	bl sub_0202C6F4
	str r0, [sp, #0x24]
	mov r0, #0x80
	add r1, r7, #0
	bl String_New
	add r6, r0, #0
	mov r0, #0x80
	add r1, r7, #0
	bl String_New
	add r7, r0, #0
	str r4, [sp]
	mov r0, #0x2f
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, _0222EBD4 ; =0x00010200
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, #1
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	add r0, r4, #0
	mov r1, #0
	bl ov43_0222AC18
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	mov r2, #0xa
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x31
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r2, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, #1
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AC18
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r2, #0xb
	ldrsb r1, [r5, r2]
	ldr r0, [sp, #0x24]
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x31
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r2, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, #1
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	add r0, r4, #0
	mov r1, #2
	bl ov43_0222AC18
	str r4, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r1, #1
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	mov r2, #0xc
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222ABFC
	str r4, [sp]
	mov r0, #0x31
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	ldr r0, _0222EBD4 ; =0x00010200
	mov r2, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [sp, #0x20]
	mov r1, #1
	add r3, r5, #0
	str r2, [sp, #0x1c]
	bl ov43_0222EC58
	ldr r0, [sp, #0x20]
	mov r1, #1
	bl ov43_0222DEF8
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EBD4: .word 0x00010200
	thumb_func_end ov43_0222EA40

