	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221F94
	.extern _022459B0
	.extern _0224CF98
	.extern ov13_02221D58
	.extern ov13_02221EAC
	.extern ov13_02221F64
	.extern ov13_02222A84

	.text

	.text
	thumb_func_start ov13_02221F94
ov13_02221F94: ; 0x02221F94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	str r3, [sp, #4]
	cmp r6, #0
	bgt _02221FAC
	add sp, #0x14
	sub r0, r5, #2
	pop {r4, r5, r6, r7, pc}
_02221FAC:
	ldr r7, _0222209C ; =_022459B0
_02221FAE:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	add r1, r4, #0
	cmp r0, r2
	beq _02221FD2
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r0, r0, #4
	sub r6, r6, r0
	add r4, r4, r0
	cmp r6, #0
	bgt _02221FAE
	mov r0, #3
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221FD2:
	ldrh r0, [r1, #2]
	add r4, r4, #4
	bl ov13_02222A84
	add r7, r0, #0
	mov r1, #0x35
	ldr r0, [sp]
	lsl r1, r1, #4
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #3
	lsl r0, r0, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
_02221FFC:
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _02222076
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222200E: ; jump table
	.short _02222076 - _0222200E - 2 ; case 0
	.short _02222076 - _0222200E - 2 ; case 1
	.short _02222076 - _0222200E - 2 ; case 2
	.short _02222024 - _0222200E - 2 ; case 3
	.short _02222032 - _0222200E - 2 ; case 4
	.short _02222044 - _0222200E - 2 ; case 5
	.short _02222056 - _0222200E - 2 ; case 6
	.short _02222076 - _0222200E - 2 ; case 7
	.short _02222076 - _0222200E - 2 ; case 8
	.short _02222076 - _0222200E - 2 ; case 9
	.short _02222068 - _0222200E - 2 ; case 10
_02222024:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov13_02221D58
	mov r1, #1
	orr r5, r1
	b _0222207A
_02222032:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221D58
	mov r1, #2
	orr r5, r1
	b _0222207A
_02222044:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221EAC
	mov r1, #4
	orr r5, r1
	b _0222207A
_02222056:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221EAC
	mov r1, #8
	orr r5, r1
	b _0222207A
_02222068:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl ov13_02221F64
	b _0222207A
_02222076:
	mov r0, #2
	mvn r0, r0
_0222207A:
	cmp r0, #0
	bne _02222098
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r0, r0, #4
	sub r7, r7, r0
	add r4, r4, r0
	cmp r7, #0
	bgt _02221FFC
	ldr r0, _022220A0 ; =_0224CF98
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_02222098:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222209C: .word _022459B0
_022220A0: .word _0224CF98
	thumb_func_end ov13_02221F94

