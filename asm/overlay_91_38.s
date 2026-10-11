	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225EC7C
	.public ov91_0225ED6C
	.public ov91_0225EDC8
	.public ov91_02260CB4
	.public ov91_022614D4

	.text

	thumb_func_start ov91_0225EC7C
ov91_0225EC7C: ; 0x0225EC7C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bne _0225ECA4
	bl ov91_0225ED6C
	cmp r0, #1
	bne _0225ECA4
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _0225ED5C ; =0x00008544
	add r0, r4, r0
	bl ov91_02260CB4
	ldr r0, _0225ED60 ; =0x000021A8
	add r0, r4, r0
	bl ov91_022614D4
_0225ECA4:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0225ED56
	ldr r1, _0225ED64 ; =0x000086EC
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _0225ECDA
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	sub r3, r3, #4
	add r4, #0x20
	strh r0, [r2, #2]
	ldrh r1, [r2]
	add r0, r4, #0
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov91_0225EDC8
	add sp, #4
	pop {r3, r4, pc}
_0225ECDA:
	cmp r0, #2
	blo _0225ED34
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	sub r3, r3, #4
	strh r0, [r2, #2]
	ldrh r1, [r2]
	add r0, r4, #0
	add r0, #0x20
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov91_0225EDC8
	ldr r0, _0225ED64 ; =0x000086EC
	ldrh r1, [r4, r0]
	sub r1, r1, #1
	lsl r1, r1, #3
	add r3, r4, r1
	add r1, r0, #2
	ldrh r2, [r3, r1]
	add r1, sp, #0
	add r0, r0, #4
	strh r2, [r1]
	ldrh r0, [r3, r0]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r4, #0x20
	add r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov91_0225EDC8
	add sp, #4
	pop {r3, r4, pc}
_0225ED34:
	ldr r0, _0225ED68 ; =gSystem + 0x40
	mov r3, sp
	ldrh r2, [r0, #0x20]
	add r1, sp, #0
	sub r3, r3, #4
	strh r2, [r1]
	ldrh r0, [r0, #0x22]
	add r4, #0x20
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov91_0225EDC8
_0225ED56:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225ED5C: .word 0x00008544
_0225ED60: .word 0x000021A8
_0225ED64: .word 0x000086EC
_0225ED68: .word gSystem + 0x40
	thumb_func_end ov91_0225EC7C

