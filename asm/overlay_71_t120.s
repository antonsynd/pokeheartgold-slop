	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A15C
	.extern ov71_0224BE7C

	.text

	.text
	thumb_func_start ov71_0224A15C
ov71_0224A15C: ; 0x0224A15C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #2
	bhs _0224A184
	lsl r3, r2, #2
	ldr r2, _0224A188 ; =ov71_0224BE7C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224A180
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_0224A180:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A184:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224A188: .word ov71_0224BE7C
	thumb_func_end ov71_0224A15C

