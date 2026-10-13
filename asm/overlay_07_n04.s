	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221BEDC

	.text

	.text
	thumb_func_start ov07_0221BEDC
ov07_0221BEDC: ; 0x0221BEDC
	push {r3, r4, r5, lr}
	mov r1, #0x72
	lsl r1, r1, #2
	add r5, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	bne _0221BEF8
	cmp r4, #0
	bne _0221BEF4
	bl GF_AssertFail
_0221BEF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0221BEF8:
	mov r2, #0x72
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r1, #0x47
	str r5, [r4]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	lsl r1, r1, #2
	bl Heap_Alloc
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	mov r0, #7
	add r1, r5, #0
	bl NARC_New
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #8
	add r1, r5, #0
	bl NARC_New
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x16
	add r1, r5, #0
	bl NARC_New
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x17
	add r1, r5, #0
	bl NARC_New
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x18
	add r1, r5, #0
	bl NARC_New
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x19
	add r1, r5, #0
	bl NARC_New
	mov r2, #0x71
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bne _0221BF80
	bne _0221BF7C
	bl GF_AssertFail
_0221BF7C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0221BF80:
	mov r1, #0
	sub r2, #0xa8
	bl memset
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x18]
	add r2, r4, #0
	add r3, r1, #0
_0221BF92:
	add r0, r2, #0
	add r0, #0xcc
	add r1, r1, #1
	add r2, r2, #4
	str r3, [r0]
	cmp r1, #4
	blt _0221BF92
	mov r0, #0x59
	add r2, r4, #0
	mov r1, #0
	lsl r0, r0, #2
_0221BFA8:
	add r3, r3, #1
	str r1, [r2, r0]
	add r2, r2, #4
	cmp r3, #5
	blt _0221BFA8
	mov r0, #0x5e
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov07_0221BEDC

