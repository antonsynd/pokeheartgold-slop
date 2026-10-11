#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208F814.inc"
	.include "global.inc"
	.public sub_0208F960

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208F960
sub_0208F960: ; 0x0208F960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0208F9FA
	bl sub_0203769C
	cmp r0, #0
	bne _0208FA44
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	mov r0, #0xc6
	strb r6, [r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0208F99C
	cmp r0, #1
	b _0208F9EC
_0208F99C:
	bl sub_02037454
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0208F9CA
	bl ov37_021E75E0
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0208F9CA
	bl sub_02033250
	bl MATH_CountPopulation
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _0208F9D2
_0208F9CA:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _0208F9EC
_0208F9D2:
	ldr r0, _0208FA48 ; =0x000093B4
	mov r1, #1
	add r2, r1, #0
	ldr r3, [r4, r0]
	lsl r2, r6
	orr r2, r3
	str r2, [r4, r0]
	add r0, sp, #0
	strb r1, [r0, #3]
	bl sub_02037454
	bl sub_02038C1C
_0208F9EC:
	mov r0, #0x7e
	add r1, sp, #0
	mov r2, #4
	bl sub_02037108
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208F9FA:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0208FA08
	cmp r0, #1
	beq _0208FA3A
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FA08:
	ldrb r6, [r5]
	bl sub_0203769C
	cmp r6, r0
	bne _0208FA44
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0208FA26
	add r0, r4, #0
	mov r1, #9
	add r2, r6, #0
	bl ov37_021E6FC8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FA26:
	ldrb r1, [r5, #1]
	ldr r0, _0208FA4C ; =0x000093B8
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #8
	bl ov37_021E6FC8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FA3A:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x15
	bl ov37_021E6FC8
_0208FA44:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0208FA48: .word 0x000093B4
_0208FA4C: .word 0x000093B8
	thumb_func_end sub_0208F960

