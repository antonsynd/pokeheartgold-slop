	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221E664
	.extern ov07_0221DD14

	.text

	.text
	thumb_func_start ov07_0221E664
ov07_0221E664: ; 0x0221E664
	push {r4, lr}
	add r4, r0, #0
	bne _0221E66E
	bl GF_AssertFail
_0221E66E:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _0221E678
	bl GF_AssertFail
_0221E678:
	add r0, r4, #0
	add r0, #0x44
	ldrh r1, [r0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0221E696
	mov r0, #6
	ldr r1, [r4, #0x48]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #1
	bl ov07_0221DD14
	pop {r4, pc}
_0221E696:
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0221E6AE
	mov r0, #6
	ldr r1, [r4, #0x48]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #2
	bl ov07_0221DD14
	pop {r4, pc}
_0221E6AE:
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0221E6C4
	mov r0, #6
	ldr r1, [r4, #0x48]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #3
	bl ov07_0221DD14
_0221E6C4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov07_0221E664

