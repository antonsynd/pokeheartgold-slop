	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public sub_020210D8
	.extern GF_TouchpadStartAutoSampling
	.extern _021D2198
	.extern sub_020211AC

	.text
	thumb_func_start sub_020210D8
sub_020210D8: ; 0x020210D8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02021144 ; =_021D2198 + 0x40
	add r6, r1, #0
	ldrh r1, [r0, #0x1a]
	add r4, r2, #0
	cmp r1, #0
	beq _02021104
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02021104:
	cmp r4, #5
	bhs _0202110C
	cmp r4, #0
	bne _02021112
_0202110C:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021112:
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0202111E
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202111E:
	add r0, r4, #0
	bl GF_TouchpadStartAutoSampling
	cmp r0, #1
	bne _0202113E
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020211AC
	mov r0, #1
_0202113E:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02021144: .word _021D2198 + 0x40
	thumb_func_end sub_020210D8

