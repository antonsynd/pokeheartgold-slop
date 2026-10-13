#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095BF0
	.public sub_02095C90

	.text

	.text
	thumb_func_start sub_02095BF0
sub_02095BF0: ; 0x02095BF0
	push {r4, r5, r6, r7}
	add r7, r2, #0
	ldrb r2, [r7, #1]
	add r4, r1, #0
	mov r0, #0
	ldrb r1, [r7]
	mov ip, r2
	cmp r3, #0
	beq _02095C3C
	ldrsb r2, [r4, r0]
	add r2, r2, r3
	lsl r2, r2, #0x18
	asr r5, r2, #0x18
	ldr r2, _02095C8C ; =FS_OVERLAY_ID(field)
	ldrsb r6, [r4, r2]
	bpl _02095C14
	add r0, r2, #0
	b _02095C2E
_02095C14:
	cmp r5, r1
	blt _02095C1C
	mov r0, #2
	b _02095C2E
_02095C1C:
	add r2, r6, #0
	mul r2, r1
	add r2, r5, r2
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	ldrb r2, [r7, #2]
	cmp r3, r2
	blo _02095C2E
	mov r0, #2
_02095C2E:
	cmp r0, #0
	bne _02095C86
	add r2, r6, #0
	mul r2, r1
	strb r5, [r4]
	add r2, r5, r2
	strb r2, [r4, #2]
_02095C3C:
	add r3, sp, #0
	mov r2, #0x10
	ldrsb r2, [r3, r2]
	cmp r2, #0
	beq _02095C84
	mov r5, #1
	ldrsb r5, [r4, r5]
	mov r3, #0
	ldrsb r3, [r4, r3]
	add r2, r5, r2
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bpl _02095C5A
	mov r0, #3
	b _02095C76
_02095C5A:
	mov r5, ip
	cmp r2, r5
	blt _02095C64
	mov r0, #4
	b _02095C76
_02095C64:
	add r5, r2, #0
	mul r5, r1
	add r5, r3, r5
	lsl r5, r5, #0x18
	lsr r6, r5, #0x18
	ldrb r5, [r7, #2]
	cmp r6, r5
	blo _02095C76
	mov r0, #4
_02095C76:
	cmp r0, #0
	bne _02095C86
	add r0, r2, #0
	mul r0, r1
	strb r2, [r4, #1]
	add r0, r3, r0
	strb r0, [r4, #2]
_02095C84:
	mov r0, #0
_02095C86:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02095C8C: .word FS_OVERLAY_ID(field)
	thumb_func_end sub_02095BF0

	thumb_func_start sub_02095C90
sub_02095C90: ; 0x02095C90
	push {r4, r5}
	ldrb r5, [r0, #1]
	mov r3, #0
	cmp r5, #0
	ble _02095CB2
	ldr r4, [r0, #8]
_02095C9C:
	ldr r2, [r4]
	ldrb r2, [r2, #3]
	cmp r1, r2
	bne _02095CAA
	strb r3, [r0]
	pop {r4, r5}
	bx lr
_02095CAA:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r5
	blt _02095C9C
_02095CB2:
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02095C90

