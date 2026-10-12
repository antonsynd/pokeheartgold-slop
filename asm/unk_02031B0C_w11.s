#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_02031C08
	.public sub_02031C30
	.public sub_02031CA0
	.public sub_02031CCC
	.extern ApricornBox_TakeApricorn

	.text
	thumb_func_start sub_02031C08
sub_02031C08: ; 0x02031C08
	push {r3, r4}
	ldrh r4, [r0, #0xa]
	mov r3, #0
	add r2, r3, #0
	mov r1, #7
_02031C12:
	add r0, r4, #0
	tst r0, r1
	beq _02031C1E
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02031C1E:
	lsl r0, r4, #0xd
	add r2, r2, #1
	lsr r4, r0, #0x10
	cmp r2, #5
	blt _02031C12
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02031C08

	thumb_func_start sub_02031C30
sub_02031C30: ; 0x02031C30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r6, [r5, #0xa]
	cmp r4, #7
	blt _02031C44
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_02031C44:
	mov r3, #0
	mov r1, #7
_02031C48:
	add r0, r6, #0
	tst r0, r1
	beq _02031C54
	lsl r0, r6, #0xd
	lsr r6, r0, #0x10
	b _02031C96
_02031C54:
	add r6, r4, #1
	mov r0, #7
	and r0, r6
	lsl r6, r3, #1
	add r3, r3, r6
	lsl r0, r3
	lsl r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r5, #0xa]
	mov r0, #2
	ldrh r1, [r5, #0xa]
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5, #0xa]
	str r2, [r5, #0x14]
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _02031C7E
	str r2, [r5, #0x18]
_02031C7E:
	mov r0, #3
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x1e
	and r0, r1
	str r0, [r5, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ApricornBox_TakeApricorn
	mov r0, #1
	pop {r4, r5, r6, pc}
_02031C96:
	add r3, r3, #1
	cmp r3, #5
	blt _02031C48
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02031C30

	thumb_func_start sub_02031CA0
sub_02031CA0: ; 0x02031CA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02031C08
	cmp r0, #0
	bne _02031CB0
	mov r0, #0
	pop {r4, pc}
_02031CB0:
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #2
	lsr r0, r0, #2
	cmp r0, #0x32
	bhs _02031CBE
	mov r0, #1
	pop {r4, pc}
_02031CBE:
	cmp r0, #0x50
	bhs _02031CC6
	mov r0, #2
	pop {r4, pc}
_02031CC6:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02031CA0

	thumb_func_start sub_02031CCC
sub_02031CCC: ; 0x02031CCC
	mov r2, #0xa
	mul r2, r1
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _02031CE6
	ldrb r1, [r0, #0xe]
	add r1, r1, r2
	cmp r1, #0xff
	ble _02031CE4
	mov r1, #0xff
	strb r1, [r0, #0xe]
	bx lr
_02031CE4:
	strb r1, [r0, #0xe]
_02031CE6:
	bx lr
	thumb_func_end sub_02031CCC

