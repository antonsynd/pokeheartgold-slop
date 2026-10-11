	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231A70
	.extern ov07_0223687C

	.text

	.text
	thumb_func_start ov07_02231A70
ov07_02231A70: ; 0x02231A70
	push {r4, r5, r6, r7}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x110
	mov r5, #0x12
	ldr r7, _02231AC8 ; =ov07_0223687C
	add r4, r0, #0
	add r2, r1, #0
	add r6, sp, #0
	lsl r5, r5, #4
_02231A88:
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r5, r5, #1
	bne _02231A88
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, sp, #0
	mul r0, r4
	add r0, r1, r0
	ldr r1, _02231ACC ; =0x00000900
	add r1, sp
	ldr r1, [r1, #0x10]
	lsl r1, r1, #1
	add r3, r3, r1
	mov r1, #0xc
	add r4, r3, #0
	mul r4, r1
	add r1, r0, r4
	ldr r3, [r1, #8]
	ldr r1, [r1, #4]
	ldr r0, [r0, r4]
	str r0, [r2]
	str r1, [r2, #4]
	str r3, [r2, #8]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x110
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02231AC8: .word ov07_0223687C
_02231ACC: .word 0x00000900
	thumb_func_end ov07_02231A70

