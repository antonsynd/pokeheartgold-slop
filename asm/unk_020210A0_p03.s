	.include "macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public InitializeTouchPad
	.extern GF_TouchpadStartAutoSampling
	.extern _021D2198
	.extern sub_020211AC

	.text
	thumb_func_start InitializeTouchPad
InitializeTouchPad: ; 0x02021148
	push {r4, lr}
	sub sp, #8
	ldr r1, _020211A8 ; =_021D2198 + 0x40
	add r4, r0, #0
	ldrh r2, [r1, #0x1a]
	cmp r2, #0
	beq _0202116E
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0202116E:
	cmp r4, #5
	bhs _02021176
	cmp r4, #0
	bne _0202117C
_02021176:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0202117C:
	ldrh r1, [r1, #0x18]
	cmp r1, #0
	beq _02021188
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02021188:
	bl GF_TouchpadStartAutoSampling
	cmp r0, #1
	bne _020211A4
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_020211AC
	mov r0, #1
_020211A4:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_020211A8: .word _021D2198 + 0x40
	thumb_func_end InitializeTouchPad

