	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022388E4

	.text

	.text
	thumb_func_start ov57_022388E4
ov57_022388E4: ; 0x022388E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	add r3, r0, #0
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #4
_022388F8:
	add r2, r7, r3
	add r3, r3, #1
	strb r5, [r2, r0]
	cmp r3, #8
	blt _022388F8
	lsl r0, r1, #3
	str r0, [sp, #8]
_02238906:
	mov r6, #0
	add r4, r7, #0
_0223890A:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl SealIsOnCapsule
	cmp r0, #0
	bne _0223891E
	add r6, r6, #1
	add r4, #8
	cmp r6, #0xc
	blt _0223890A
_0223891E:
	add r1, r7, r5
	add r1, #0x80
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223892C
	cmp r0, #1
	bne _0223894E
_0223892C:
	ldr r0, [sp]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp]
	cmp r1, r0
	ble _0223894E
	ldr r0, [sp, #4]
	add r2, r5, #1
	add r1, r7, r0
	mov r0, #0x45
	lsl r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	bge _02238954
_0223894E:
	add r5, r5, #1
	cmp r5, #0x51
	blt _02238906
_02238954:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov57_022388E4

