	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_02246CC0

    .text

	.text
	thumb_func_start ov41_02246CC0
ov41_02246CC0: ; 0x02246CC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl PokepicManager_Create
	str r0, [r5, #0x20]
	ldr r3, _02246D1C ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0
	ldr r3, [r3]
	add r0, r4, #0
	add r2, r1, #0
	blx r3
	str r0, [r5, #0x24]
	ldr r3, _02246D20 ; =NNS_GfdDefaultFuncAllocPlttVram
	add r0, r6, #0
	ldr r3, [r3]
	mov r1, #0
	mov r2, #1
	blx r3
	str r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r2, _02246D24 ; =0x7FFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl PokepicManager_SetCharBaseAddrAndSize
	ldr r3, [r5, #0x28]
	ldr r2, _02246D28 ; =0xFFFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl PokepicManager_SetPlttBaseAddrAndSize
	mov r0, #1
	str r0, [r5, #0x2c]
	pop {r4, r5, r6, pc}
	nop
_02246D1C: .word NNS_GfdDefaultFuncAllocTexVram
_02246D20: .word NNS_GfdDefaultFuncAllocPlttVram
_02246D24: .word 0x7FFF0000
_02246D28: .word 0xFFFF0000
	thumb_func_end ov41_02246CC0

