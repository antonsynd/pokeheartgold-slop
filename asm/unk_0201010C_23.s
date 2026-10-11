	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_29
	.extern _020F5F0C
	.extern _020F5F1C
	.extern sub_02011FF8
	.extern sub_02012030

	.text
	thumb_func_start FadeFunc_29
FadeFunc_29: ; 0x02010690
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020106D0
	ldr r0, _020106D8 ; =_020F5F0C
	mov r1, #4
	str r0, [sp]
	ldr r0, _020106DC ; =_020F5F1C
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	strh r2, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02011FF8
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020106D0:
	bl sub_02012030
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_020106D8: .word _020F5F0C
_020106DC: .word _020F5F1C
	thumb_func_end FadeFunc_29

