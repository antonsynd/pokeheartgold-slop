	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221CF54
	.public ov07_0221CFA8
	.public ov07_0221D000
	.extern ov07_0221BE20
	.extern ov07_0221FE88
	.extern ov07_0221FEB0
	.extern ov07_0221FF2C

	.text

	.text
	thumb_func_start ov07_0221CF54
ov07_0221CF54: ; 0x0221CF54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0221CF78
	bl GF_AssertFail
_0221CF78:
	ldr r0, [r5, #0x18]
	mov r2, #0
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5]
	bl ov07_0221FE88
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r1, r1, r4
	str r0, [r1, #0x1c]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _0221CFA4 ; =ov07_0221BE20
	add r5, #0xbc
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_0221CFA4: .word ov07_0221BE20
	thumb_func_end ov07_0221CF54

	thumb_func_start ov07_0221CFA8
ov07_0221CFA8: ; 0x0221CFA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0221CFCE
	bl GF_AssertFail
_0221CFCE:
	ldr r0, [r5, #0x18]
	mov r1, #0x60
	ldr r2, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5]
	mov r3, #0
	bl ov07_0221FEB0
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r1, r1, r4
	str r0, [r1, #0x1c]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _0221CFFC ; =ov07_0221BE20
	add r5, #0xbc
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_0221CFFC: .word ov07_0221BE20
	thumb_func_end ov07_0221CFA8

	thumb_func_start ov07_0221D000
ov07_0221D000: ; 0x0221D000
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	lsl r4, r1, #2
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	bl ov07_0221FF2C
	add r5, #0xc0
	ldr r0, [r5]
	mov r1, #0
	add r0, r0, r4
	str r1, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov07_0221D000

