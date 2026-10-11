#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_020947C0

	.text

	.text
	thumb_func_start sub_020947C0
sub_020947C0: ; 0x020947C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0x34
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x66
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020947E4
	bl Sprite_GetDrawFlag
	cmp r0, #0
	bne _020947E4
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_020947E4:
	mov r0, #0x69
	add r1, r5, r6
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _020947F4
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_020947F4:
	mov r1, #0
	mov r0, #0
	mvn r1, r1
	add r2, r0, #0
	b _0209481A
_020947FE:
	mov r3, #0x8d
	lsl r3, r3, #4
	ldr r3, [r5, r3]
	ldrb r6, [r5, #0xf]
	add r7, r3, r2
	ldr r3, [r7, #8]
	cmp r6, r3
	bne _02094816
	ldr r3, [r7, #4]
	cmp r4, r3
	bne _02094816
	add r1, r0, #0
_02094816:
	add r2, #0xc
	add r0, r0, #1
_0209481A:
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _02094828
	ldrb r3, [r5, #0xd]
	cmp r0, r3
	blt _020947FE
_02094828:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0209485C
	ldrb r3, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	cmp r0, r3
	bne _0209483C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0209483C:
	mov r4, #0
	cmp r3, #0
	ble _0209485C
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	sub r0, r4, #1
_0209484A:
	ldr r1, [r2, #4]
	cmp r1, r0
	bne _02094854
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02094854:
	add r4, r4, #1
	add r2, #0xc
	cmp r4, r3
	blt _0209484A
_0209485C:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020947C0

