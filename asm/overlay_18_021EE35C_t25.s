	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EED00
	.extern ov18_021E595C

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021EED00
ov18_021EED00: ; 0x021EED00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r5, #0
	lsl r4, r3, #4
	add r6, #0xc
	str r1, [sp, #0xc]
	add r7, r2, #0
	add r0, r6, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r0, r7, #2
	add r1, r5, r0
	ldr r0, _021EED64 ; =0x00001032
	ldrh r0, [r1, r0]
	ldr r1, _021EED68 ; =0x0000185C
	cmp r0, #2
	bne _021EED32
	ldrb r1, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r2, #0x25
	bl ov18_021E595C
	b _021EED3C
_021EED32:
	ldrb r1, [r5, r1]
	mov r0, #0
	mov r2, #0x25
	bl ov18_021E595C
_021EED3C:
	add r5, r0, #0
	mov r3, #0
	ldr r0, _021EED6C ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r6, r4
	add r1, r5, #0
	mov r2, #0x7c
	bl ov18_021F95FC
	add r0, r5, #0
	bl String_Delete
	add r0, r6, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EED64: .word 0x00001032
_021EED68: .word 0x0000185C
_021EED6C: .word 0x00020100
	thumb_func_end ov18_021EED00

