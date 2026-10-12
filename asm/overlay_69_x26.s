	.include "asm/macros.inc"
	.include "overlay_69.inc"
	.include "global.inc"
	.public ov69_021E7520
	.extern ov69_021E6300

	.text

	.text
	thumb_func_start ov69_021E7520
ov69_021E7520: ; 0x021E7520
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	str r3, [sp, #4]
	bl ov69_021E6300
	ldr r7, [sp, #0x20]
	add r4, r0, #0
	ldr r2, _021E7588 ; =0x0000031E
	mov r0, #0
	mov r1, #0x1b
	add r3, r7, #0
	bl NewMsgDataFromNarc
	str r0, [sp, #8]
	add r1, r5, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [sp, #8]
	bl DestroyMsgData
	cmp r4, #0
	bne _021E755C
	mov r5, #0
	mov r4, #1
	str r5, [sp]
	b _021E755E
_021E755C:
	mov r5, #1
_021E755E:
	add r0, r4, #0
	bl LocationGmmDatGetGmmNo
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1b
	add r3, r7, #0
	bl NewMsgDataFromNarc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r4, r0, #0
	bl ReadMsgDataIntoString
	add r0, r4, #0
	bl DestroyMsgData
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7588: .word 0x0000031E
	thumb_func_end ov69_021E7520

