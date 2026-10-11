	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F580
	.extern ov82_0223F5E0
	.extern ov82_0223F6E4

	.text

	.text
	thumb_func_start ov82_0223F580
ov82_0223F580: ; 0x0223F580
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov82_0223F6E4
	cmp r0, #1
	bne _0223F5A6
	mov r4, #0
	mov r6, #3
_0223F592:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ov82_0223F5E0
	add r4, r4, #1
	cmp r4, #0x11
	blt _0223F592
	b _0223F5D6
_0223F5A6:
	mov r7, #0x86
	mov r4, #0
	lsl r7, r7, #2
_0223F5AC:
	lsl r0, r4, #0x18
	ldr r1, [r6, r7]
	lsr r0, r0, #0x18
	bl sub_02030BD0
	cmp r0, #0xa
	blo _0223F5C6
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	bl ov82_0223F5E0
_0223F5C6:
	add r4, r4, #1
	cmp r4, #0x11
	blt _0223F5AC
	add r0, r5, #0
	mov r1, #0x13
	mov r2, #3
	bl ov82_0223F5E0
_0223F5D6:
	add r0, r5, #0
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223F580

