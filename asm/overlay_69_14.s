	.include "asm/macros.inc"
	.include "overlay_69.inc"
	.include "global.inc"
	.public ov69_021E6B5C
	.extern ov69_021E7520
	.extern ov69_021E764C

	.text

	.text
	thumb_func_start ov69_021E6B5C
ov69_021E6B5C: ; 0x021E6B5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [r5]
	mov r0, #0x40
	add r4, r2, #0
	bl String_New
	add r7, r0, #0
	ldr r1, [r5]
	mov r0, #0x40
	bl String_New
	ldr r1, _021E6C04 ; =0x0000C010
	add r6, r0, #0
	ldr r0, [r5, r1]
	add r1, #0x44
	ldr r2, _021E6C08 ; =ov69_021E764C
	add r1, r5, r1
	bl AddWindow
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	ldr r0, _021E6C0C ; =0x0000C054
	mov r2, #0
	add r0, r5, r0
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	ldr r0, _021E6C0C ; =0x0000C054
	ldr r2, _021E6C10 ; =0x000001D9
	add r0, r5, r0
	mov r1, #0
	mov r3, #7
	bl DrawFrameAndWindow1
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	add r3, r6, #0
	bl ov69_021E7520
	cmp r4, #0
	beq _021E6BD8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, _021E6C0C ; =0x0000C054
	add r2, r6, #0
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
_021E6BD8:
	mov r1, #0
	ldr r0, _021E6C0C ; =0x0000C054
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, r0
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	ldr r0, _021E6C0C ; =0x0000C054
	add r0, r5, r0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6C04: .word 0x0000C010
_021E6C08: .word ov69_021E764C
_021E6C0C: .word 0x0000C054
_021E6C10: .word 0x000001D9
	thumb_func_end ov69_021E6B5C

