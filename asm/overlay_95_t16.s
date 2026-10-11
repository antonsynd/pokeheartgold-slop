	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E5E90
	.extern ov95_021E5E18

	.text

	.text
	thumb_func_start ov95_021E5E90
ov95_021E5E90: ; 0x021E5E90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	bl Heap_Alloc
	add r4, r0, #0
	bne _021E5EA4
	bl GF_AssertFail
_021E5EA4:
	ldr r0, [r5]
	ldr r2, [r5, #4]
	mov r1, #0x74
	str r0, [r4]
	str r2, [r4, #4]
	ldr r0, [r4]
	bl ov95_021E5E18
	mov r1, #1
	str r0, [r4, #0xc]
	bl sub_02015528
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_021E5E90

