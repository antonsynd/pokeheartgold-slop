#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221BFEC
	.public ov65_0221FB4C

	.text

	thumb_func_start ov65_0221BFEC
ov65_0221BFEC: ; 0x0221BFEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0203769C
	bl sub_02034818
	add r4, r0, #0
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x1a
	bl PlayerProfile_GetPlayerName_NewString
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x1a
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x32
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0221C080 ; =0x00000444
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0
	bl ov65_0221FB4C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0221C084 ; =0x00000454
	add r1, r6, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0
	bl ov65_0221FB4C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0221C088 ; =0x000004A4
	add r1, r7, #0
	add r0, r5, r0
	mov r2, #5
	mov r3, #0
	bl ov65_0221FB4C
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221C080: .word 0x00000444
_0221C084: .word 0x00000454
_0221C088: .word 0x000004A4
	thumb_func_end ov65_0221BFEC

