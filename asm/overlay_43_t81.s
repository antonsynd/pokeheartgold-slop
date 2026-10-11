	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CA50
	.public ov43_0222CB34
	.extern ov43_0222ED94
	.extern ov43_0222EFA0
	.extern ov43_0222EFA2

	.text

	.text
	thumb_func_start ov43_0222CA50
ov43_0222CA50: ; 0x0222CA50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r6, r2, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	mov r2, #7
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x40]
	bl sub_0202C090
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	mov r2, #8
	bl sub_0202C090
	add r7, r0, #0
	cmp r7, #2
	bne _0222CA8C
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl ov43_0222CB34
	b _0222CAD0
_0222CA8C:
	mov r0, #0xa
	add r6, r4, #0
	mul r6, r0
	ldr r2, _0222CB28 ; =ov43_0222EFA0
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldrsh r2, [r2, r6]
	add r0, #0xfc
	add r1, r1, r2
	lsl r2, r1, #3
	add r2, #8
	add r1, sp, #0x20
	strh r2, [r1]
	mov r2, #2
	ldrsh r3, [r5, r2]
	ldr r2, _0222CB2C ; =ov43_0222EFA2
	ldrsh r2, [r2, r6]
	add r2, r3, r2
	lsl r2, r2, #3
	add r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #8
	strh r0, [r1, #4]
	mov r0, #1
	strh r0, [r1, #6]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x4c]
	add r1, sp, #0x20
	bl ov42_022272BC
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #0x18]
_0222CAD0:
	ldr r1, [sp, #0x4c]
	mov r0, #0x80
	bl String_New
	add r6, r0, #0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	bl sub_0202C254
	add r1, r0, #0
	add r0, r6, #0
	bl CopyU16ArrayToString
	add r3, r4, #0
	mov r0, #0xa
	mul r3, r0
	ldr r0, _0222CB2C ; =ov43_0222EFA2
	ldr r4, _0222CB28 ; =ov43_0222EFA0
	ldrsh r0, [r0, r3]
	ldrsh r3, [r4, r3]
	lsl r1, r7, #2
	lsl r0, r0, #3
	sub r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222CB30 ; =ov43_0222ED94
	add r5, #8
	ldr r0, [r0, r1]
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	lsl r3, r3, #3
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CB28: .word ov43_0222EFA0
_0222CB2C: .word ov43_0222EFA2
_0222CB30: .word ov43_0222ED94
	thumb_func_end ov43_0222CA50

	thumb_func_start ov43_0222CB34
ov43_0222CB34: ; 0x0222CB34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r3, #0
	mov r3, #2
	ldrsh r5, [r0, r3]
	cmp r5, #0
	bge _0222CB46
	neg r5, r5
_0222CB46:
	mov r3, #0
	ldrsh r6, [r0, r3]
	cmp r6, #0
	bge _0222CB50
	neg r6, r6
_0222CB50:
	ldr r0, [r2, #0xc]
	add r3, r1, #0
	mov r1, #3
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	mov r2, #0xa
	str r1, [sp, #0xc]
	mul r3, r2
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	ldr r2, _0222CBA4 ; =ov43_0222EFA0
	ldrsh r2, [r2, r3]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	add r2, r2, r6
	ldr r6, _0222CBA8 ; =ov43_0222EFA2
	ldrh r0, [r0, #2]
	ldrsh r3, [r6, r3]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	add r3, r3, r5
	str r0, [sp, #0x18]
	lsl r3, r3, #0x18
	ldr r0, [r4]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222CBA4: .word ov43_0222EFA0
_0222CBA8: .word ov43_0222EFA2
	thumb_func_end ov43_0222CB34

