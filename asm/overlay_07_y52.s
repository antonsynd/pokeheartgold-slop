	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221CCF4
	.public ov07_0221CD4C
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_02231924
	.extern ov07_02234CC8
	.extern ov07_02234D58

	.text

	.text
	thumb_func_start ov07_0221CCF4
ov07_0221CCF4: ; 0x0221CCF4
	push {r4, r5, r6, lr}
	sub sp, #0x90
	ldr r5, _0221CD48 ; =ov07_02234CC8
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_0221CD00:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221CD00
	add r0, r4, #0
	bl ov07_0221C468
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221C470
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov07_02231924
	mov r1, #0x18
	add r3, r5, #0
	mul r3, r1
	add r2, sp, #0
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r4, [r1, r0]
	cmp r4, #0xff
	bne _0221CD40
	bl GF_AssertFail
_0221CD40:
	sub r0, r4, #1
	add sp, #0x90
	pop {r4, r5, r6, pc}
	nop
_0221CD48: .word ov07_02234CC8
	thumb_func_end ov07_0221CCF4

	thumb_func_start ov07_0221CD4C
ov07_0221CD4C: ; 0x0221CD4C
	push {r4, r5, r6, lr}
	sub sp, #0x90
	ldr r5, _0221CDA0 ; =ov07_02234D58
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_0221CD58:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221CD58
	add r0, r4, #0
	bl ov07_0221C468
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221C470
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov07_02231924
	mov r1, #0x18
	add r3, r5, #0
	mul r3, r1
	add r2, sp, #0
	lsl r1, r0, #2
	add r0, r2, r3
	ldr r4, [r1, r0]
	cmp r4, #0xff
	bne _0221CD98
	bl GF_AssertFail
_0221CD98:
	add r0, r4, #0
	add sp, #0x90
	pop {r4, r5, r6, pc}
	nop
_0221CDA0: .word ov07_02234D58
	thumb_func_end ov07_0221CD4C

