	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DB30
	.extern ov40_02244E40
	.extern ov40_02244E78
	.extern ov40_02244EB0
	.extern ov40_02244ECC

	.text

	.text
	thumb_func_start ov40_0222DB30
ov40_0222DB30: ; 0x0222DB30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, _0222DBDC ; =ov40_02244EB0
	add r5, r0, #0
	add r2, r1, #0
	add r3, sp, #0x58
	ldmia r4!, {r0, r1}
	str r3, [sp]
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _0222DBE0 ; =ov40_02244E40
	str r0, [r3]
	add r3, sp, #0x3c
	ldmia r4!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _0222DBE4 ; =ov40_02244ECC
	str r0, [r3]
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r7, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _0222DBE8 ; =ov40_02244E78
	str r0, [r3]
	add r3, sp, #4
	ldmia r4!, {r0, r1}
	add r6, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r5, #0x5c
	str r0, [r3]
	ldrb r0, [r5]
	cmp r2, #3
	bhi _0222DBD0
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222DBA4: ; jump table
	.short _0222DBAC - _0222DBA4 - 2 ; case 0
	.short _0222DBB6 - _0222DBA4 - 2 ; case 1
	.short _0222DBC0 - _0222DBA4 - 2 ; case 2
	.short _0222DBC8 - _0222DBA4 - 2 ; case 3
_0222DBAC:
	lsl r1, r0, #2
	ldr r0, [sp]
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0222DBB6:
	lsl r1, r0, #2
	mov r0, ip
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0222DBC0:
	lsl r0, r0, #2
	add sp, #0x74
	ldr r0, [r7, r0]
	pop {r4, r5, r6, r7, pc}
_0222DBC8:
	lsl r0, r0, #2
	add sp, #0x74
	ldr r0, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_0222DBD0:
	bl GF_AssertFail
	ldr r0, [sp, #0x58]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_0222DBDC: .word ov40_02244EB0
_0222DBE0: .word ov40_02244E40
_0222DBE4: .word ov40_02244ECC
_0222DBE8: .word ov40_02244E78
	thumb_func_end ov40_0222DB30

