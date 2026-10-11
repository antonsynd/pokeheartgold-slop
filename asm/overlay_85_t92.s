	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E752C
	.extern ov85_021EA5C4
	.extern ov85_021EA5DC

	.text

	.text
	thumb_func_start ov85_021E752C
ov85_021E752C: ; 0x021E752C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	add r4, r6, #0
	ldr r0, [r0, #8]
	mov r2, #0x36
	lsl r5, r0, #2
	mov r0, #0x66
	ldr r3, _021E75AC ; =ov85_021EA5C4
	str r0, [sp]
	mov r1, #0
	add r4, #0xd4
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r2, r2, #6
	ldr r2, [r6, r2]
	ldr r3, [r3, r5]
	add r0, #0x54
	bl sub_020696C4
	add r0, r4, #0
	add r0, #0x54
	bl sub_02069714
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x68
	add r1, #0x54
	bl sub_02069978
	ldr r1, _021E75B0 ; =ov85_021EA5DC
	mov r0, #0
	add r2, r4, #0
	ldr r1, [r1, r5]
	str r0, [r4, #0x3c]
	str r1, [r4, #0x44]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x4e
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x50
	strh r0, [r1]
	add r6, #0xd4
	ldr r1, _021E75B4 ; =0xFFFDC000
	str r0, [r6]
	str r1, [r4, #4]
	str r0, [r4, #8]
	ldmia r4!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E75AC: .word ov85_021EA5C4
_021E75B0: .word ov85_021EA5DC
_021E75B4: .word 0xFFFDC000
	thumb_func_end ov85_021E752C

