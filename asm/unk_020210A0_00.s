	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadInit
	.public sub_020210BC
	.public sub_020210D8
	.public sub_02021148
	.public sub_020211AC
	.extern GF_TouchpadStartAutoSampling
	.extern _021D2198
	.extern sub_020211E0

	.text
	thumb_func_start GF_TouchpadInit
GF_TouchpadInit: ; 0x020210A0
	mov r0, #0
	ldr r3, _020210B8 ; =_021D2198
	add r1, r0, #0
	mov r2, #5
_020210A8:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020210A8
	stmia r3!, {r0, r1}
	str r0, [r3]
	bx lr
	nop
_020210B8: .word _021D2198
	thumb_func_end GF_TouchpadInit

	thumb_func_start sub_020210BC
sub_020210BC: ; 0x020210BC
	push {r3, lr}
	ldr r0, _020210D4 ; =_021D2198 + 0x40
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _020210CA
	bl GF_AssertFail
_020210CA:
	ldr r0, _020210D4 ; =_021D2198 + 0x40
	mov r1, #0
	strh r1, [r0, #0x18]
	pop {r3, pc}
	nop
_020210D4: .word _021D2198 + 0x40
	thumb_func_end sub_020210BC

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

	thumb_func_start sub_02021148
sub_02021148: ; 0x02021148
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
	thumb_func_end sub_02021148

	thumb_func_start sub_020211AC
sub_020211AC: ; 0x020211AC
	push {r4, lr}
	ldr r4, _020211D0 ; =_021D2198 + 0x40
	strh r0, [r4, #0x18]
	ldr r0, _020211D4 ; =gSystem + 0x60
	strb r1, [r0, #8]
	ldr r0, _020211D8 ; =_021D2198
	ldr r1, [sp, #0xc]
	str r2, [r0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0x54]
	ldr r0, _020211DC ; =_021D2198 + 0xC
	mov r1, #9
	bl sub_020211E0
	pop {r4, pc}
	nop
_020211D0: .word _021D2198 + 0x40
_020211D4: .word gSystem + 0x60
_020211D8: .word _021D2198
_020211DC: .word _021D2198 + 0xC
	thumb_func_end sub_020211AC

