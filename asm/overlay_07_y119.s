	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221EC7C
	.extern ov07_0221BFC0
	.extern ov07_0221FB04

	.text

	.text
	thumb_func_start ov07_0221EC7C
ov07_0221EC7C: ; 0x0221EC7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	bl ov07_0221FB04
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0221ECB4
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl SetBgControlParam
	b _0221ECD8
_0221ECB4:
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	mov r2, #0
	ldr r0, [r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl SetBgControlParam
	add r0, r5, #0
	add r0, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #2
	mov r3, #3
	bl SetBgControlParam
_0221ECD8:
	add r5, #0xc4
	lsl r1, r4, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_0221EC7C

