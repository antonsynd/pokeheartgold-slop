	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_0205724C
	.extern _021D41C4

	.text
	thumb_func_start sub_0205724C
sub_0205724C: ; 0x0205724C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020572A8 ; =_021D41C4
	add r6, r1, #0
	ldr r1, [r0]
	cmp r1, #0
	beq _020572A4
	lsl r4, r5, #2
	add r0, r1, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02057284
	ldr r1, [r1, #0x30]
	ldr r1, [r1, #0x40]
	cmp r1, r0
	beq _0205727A
	cmp r2, #0
	beq _02057276
	bl PlayerAvatar_DeleteFromMap
	b _0205727A
_02057276:
	bl PlayerAvatar_FreeToHeap
_0205727A:
	ldr r0, _020572A8 ; =_021D41C4
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r4
	str r1, [r0, #4]
_02057284:
	ldr r0, _020572A8 ; =_021D41C4
	ldr r1, [r0]
	add r1, #0x24
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _02057298
	cmp r6, #0
	bne _02057298
	mov r0, #0
	strb r0, [r1, r5]
_02057298:
	ldr r0, _020572A8 ; =_021D41C4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, r5
	add r0, #0xcc
	strb r1, [r0]
_020572A4:
	pop {r4, r5, r6, pc}
	nop
_020572A8: .word _021D41C4
	thumb_func_end sub_0205724C

