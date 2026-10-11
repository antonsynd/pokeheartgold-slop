	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_28
	.extern _020F5EEC
	.extern _020F5EFC
	.extern sub_02011FF8
	.extern sub_02012030

	.text
	thumb_func_start FadeFunc_28
FadeFunc_28: ; 0x0201063C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010680
	ldr r0, _02010688 ; =_020F5EEC
	mov r1, #4
	str r0, [sp]
	ldr r0, _0201068C ; =_020F5EFC
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	mov r1, #1
	strh r1, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011FF8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010680:
	bl sub_02012030
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02010688: .word _020F5EEC
_0201068C: .word _020F5EFC
	thumb_func_end FadeFunc_28

