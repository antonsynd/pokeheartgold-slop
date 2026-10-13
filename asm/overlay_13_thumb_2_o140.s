	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226D74
	.extern ov13_02223EE0
	.extern ov13_02225320
	.extern ov13_02226CBC
	.extern ov13_02226F3C
	.extern ov13_02245A58
	.extern ov13_0224DF30
	.extern ov13_0224DFDC
	.extern ov13_0224E09C

	.text

	.text
	thumb_func_start ov13_02226D74
ov13_02226D74: ; 0x02226D74
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02226E44 ; =ov13_0224DF30
	ldr r0, [r0, #0x38]
	cmp r0, #1
	blt _02226D8E
	cmp r0, #5
	bgt _02226D8E
	mov r0, #9
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02226D8E:
	ldr r5, _02226E48 ; =ov13_02245A58
	ldr r0, _02226E44 ; =ov13_0224DF30
	mov r6, #7
	str r1, [r5, #0x10]
	str r6, [r0, #0x38]
	str r2, [r0, #0x7c]
	ldr r2, [sp, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #8]
	add r0, r1, #0
	bl ov13_02223EE0
	mov r2, #1
	ldr r1, _02226E44 ; =ov13_0224DF30
	cmp r0, #0
	str r2, [r1, #0x74]
	bge _02226DBA
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_02226DBA:
	add r0, r5, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx r1
	ldr r1, _02226E44 ; =ov13_0224DF30
	cmp r0, #0
	str r0, [r1, #0x30]
	bne _02226DD4
	add r0, r6, #0
	sub r0, #8
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_02226DD4:
	bl OS_IsThreadAvailable
	cmp r0, #1
	beq _02226DE8
	add r0, r6, #0
	ldr r1, _02226E44 ; =ov13_0224DF30
	sub r0, #0x10
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_02226DE8:
	add r0, r5, #0
	ldr r3, [r0, #8]
	ldr r0, _02226E4C ; =ov13_0224DFDC
	str r3, [sp]
	str r4, [sp, #4]
	ldr r4, _02226E44 ; =ov13_0224DF30
	ldr r1, _02226E50 ; =ov13_02225320
	ldr r5, [r4, #0x30]
	mov r4, #7
	bic r3, r4
	mov r2, #0
	add r3, r5, r3
	bl OS_CreateThread
	ldr r0, _02226E44 ; =ov13_0224DF30
	mov r1, #1
	str r1, [r0, #0x38]
	bl ov13_02226CBC
	ldr r1, _02226E54 ; =0x0000EA60
	ldr r5, _02226E58 ; =ov13_0224E09C
	add r1, r0, r1
	ldr r0, _02226E48 ; =ov13_02245A58
	add r4, r6, #0
	str r1, [r0, #0xc]
	mov r0, #0
	ldr r1, _02226E44 ; =ov13_0224DF30
	add r2, r0, #0
	str r0, [r1, #0x10]
	add r1, r0, #0
	add r3, r0, #0
_02226E26:
	stmia r5!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _02226E26
	stmia r5!, {r0, r1}
	bl ov13_02226F3C
	ldr r0, _02226E4C ; =ov13_0224DFDC
	bl OS_WakeupThreadDirect
	ldr r1, _02226E44 ; =ov13_0224DF30
	mov r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02226E44: .word ov13_0224DF30
_02226E48: .word ov13_02245A58
_02226E4C: .word ov13_0224DFDC
_02226E50: .word ov13_02225320
_02226E54: .word 0x0000EA60
_02226E58: .word ov13_0224E09C
	thumb_func_end ov13_02226D74

