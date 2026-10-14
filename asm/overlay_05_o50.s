	.include "macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221D7AC
	.extern ov05_0221CD24
	.extern ov05_0221CDC4
	.extern ov05_0221D318
	.extern ov05_0221D3AC
	.extern ov05_0221D4D0
	.extern ov05_0221D5DC
	.extern ov05_0221D664
	.extern ov05_0221D890
	.extern ov05_0221D904
	.extern ov05_0221EAD4
	.extern ov05_0221EDA4

	.text

	.text
	thumb_func_start ov05_0221D7AC
ov05_0221D7AC: ; 0x0221D7AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _0221D888 ; =ov05_0221EAD4
	add r3, sp, #0
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #0x17
	bl ov05_0221CD24
	add r0, r6, #0
	bl ov05_0221D318
	add r0, r6, #0
	bl ov05_0221D890
	ldr r4, _0221D88C ; =ov05_0221EDA4
	mov r7, #0
	add r5, r6, #0
_0221D7E0:
	add r0, r6, #0
	add r1, r4, #0
	bl ov05_0221CDC4
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #0xe
	blo _0221D7E0
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov05_0221D3AC
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov05_0221D3AC
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov05_0221D3AC
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov05_0221D3AC
	add r0, r6, #0
	bl ov05_0221D4D0
	add r0, r6, #0
	bl ov05_0221D904
	add r0, r6, #0
	bl ov05_0221D5DC
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov05_0221D664
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov05_0221D664
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov05_0221D664
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov05_0221D664
	mov r0, #0x21
	mov r1, #0xe
	lsl r0, r0, #4
	str r1, [r6, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221D888: .word ov05_0221EAD4
_0221D88C: .word ov05_0221EDA4
	thumb_func_end ov05_0221D7AC

