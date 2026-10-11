	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_16
	.extern _020F5EC8
	.extern sub_02011884
	.extern sub_020118BC

	.text
	thumb_func_start FadeFunc_16
FadeFunc_16: ; 0x0201042C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201044E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010454 ; =_020F5EC8
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201044E:
	bl sub_020118BC
	pop {r4, pc}
	.balign 4, 0
_02010454: .word _020F5EC8
	thumb_func_end FadeFunc_16

