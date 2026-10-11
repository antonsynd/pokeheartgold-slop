	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_02010064
	.extern sub_02010050

	.text
	thumb_func_start sub_02010064
sub_02010064: ; 0x02010064
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _0201008A
	ldrh r2, [r1, #0x24]
	ldr r0, _0201008C ; =0x00007FFF
	cmp r2, r0
	beq _0201007A
	cmp r2, #0
	bne _0201008A
_0201007A:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _0201008A
	mov r2, #1
	ldr r0, _02010090 ; =sub_02010050
	lsl r2, r2, #0xa
	bl SysTask_CreateOnVWaitQueue
_0201008A:
	pop {r3, pc}
	.balign 4, 0
_0201008C: .word 0x00007FFF
_02010090: .word sub_02010050
	thumb_func_end sub_02010064

