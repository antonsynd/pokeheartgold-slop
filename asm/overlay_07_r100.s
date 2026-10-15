	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221DD38
	.extern _02237840

	.text

	.text
	thumb_func_start ov07_0221DD38
ov07_0221DD38: ; 0x0221DD38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
_0221DD42:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0221DD54
	ldr r0, [r0, #0x1c]
	cmp r6, r0
	bne _0221DD54
	bl GF_AssertFail
_0221DD54:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0221DD42
	mov r2, #0
_0221DD60:
	lsl r1, r2, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0221DD70
	str r7, [r5, r1]
	ldr r0, [r5, r1]
	str r6, [r0, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_0221DD70:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0221DD60
	ldr r0, _0221DD88 ; =_02237840
	cmp r0, #0
	beq _0221DD84
	bl GF_AssertFail
_0221DD84:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221DD88: .word _02237840
	thumb_func_end ov07_0221DD38

