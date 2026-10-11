#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public _02246800
	.public ov70_02238130
	.public ov70_02238360
	.public ov70_02246268
	.public ov70_02246814
	.public ov70_02246900

	.text

	thumb_func_start ov70_02238130
ov70_02238130: ; 0x02238130
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02238194 ; =ov70_02246900
	add r6, r2, #0
	str r6, [r0, #0x40]
	add r4, r1, #0
	bl ov38_0221BE84
	ldrb r0, [r5]
	ldr r1, _02238198 ; =ov70_02246814
	mov r2, #7
	strb r0, [r1]
	ldrb r0, [r5, #1]
	add r3, r6, #0
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	ldrb r0, [r5, #4]
	strb r0, [r1, #4]
	ldrb r0, [r5, #5]
	strb r0, [r1, #5]
	ldr r0, _0223819C ; =_02246800
	strb r4, [r0, #0x1a]
	mov r0, #0x49
	lsl r0, r0, #2
	mul r0, r4
	str r0, [sp]
	ldr r0, _022381A0 ; =ov70_02246268
	bl ov70_02238360
	cmp r0, #0
	beq _02238180
	ldr r0, _0223819C ; =_02246800
	mov r1, #0xe
	str r1, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02238180:
	ldr r0, _0223819C ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02238194: .word ov70_02246900
_02238198: .word ov70_02246814
_0223819C: .word _02246800
_022381A0: .word ov70_02246268
	thumb_func_end ov70_02238130

