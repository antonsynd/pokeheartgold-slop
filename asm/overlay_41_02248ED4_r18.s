	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_02249574

    .text

	.text
	thumb_func_start ov41_02249574
ov41_02249574: ; 0x02249574
	push {r3, lr}
	ldr r3, [r0, #0x10]
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _0224958E
	ldr r3, [r3]
	ldr r0, [r0, #0xc]
	ldr r3, [r3]
	mov r1, #0x1b
	mov r2, #0xd8
	bl ov41_0224AC08
	pop {r3, pc}
_0224958E:
	cmp r1, #1
	bne _022495A0
	ldr r3, [r3]
	ldr r0, [r0, #0xc]
	ldr r3, [r3]
	mov r1, #0x1b
	mov r2, #0xda
	bl ov41_0224AC08
_022495A0:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_02249574

