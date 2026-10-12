	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public sub_02021238
	.public sub_02021280
	.extern GF_TouchpadStopAutoSampling
	.extern _021D2198
	.extern sub_020211AC
	.extern sub_020212EC
	.extern sub_020213C8
	.extern sub_02021528
	.extern sub_02021540

	.text
	thumb_func_start sub_02021238
sub_02021238: ; 0x02021238
	push {r4, lr}
	sub sp, #8
	ldr r0, _0202127C ; =_021D2198 + 0x40
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0202125A
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0202125A:
	bl GF_TouchpadStopAutoSampling
	add r4, r0, #0
	cmp r4, #1
	bne _02021274
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020211AC
_02021274:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0202127C: .word _021D2198 + 0x40
	thumb_func_end sub_02021238

	thumb_func_start sub_02021280
sub_02021280: ; 0x02021280
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _020212E4 ; =_021D2198 + 0x40
	add r4, r1, #0
	ldrh r3, [r2, #0x1a]
	add r5, r0, #0
	mov r1, #3
	cmp r3, #0
	beq _020212A6
	cmp r5, #0
	beq _0202129A
	bl sub_02021528
_0202129A:
	cmp r4, #2
	bne _020212A2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020212A2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020212A6:
	ldrh r0, [r2, #0x18]
	cmp r0, #0
	beq _020212DE
	bl TP_GetLatestIndexInAuto
	add r6, r0, #0
	ldr r0, _020212E8 ; =_021D2198 + 0xC
	mov r1, #9
	bl sub_020212EC
	cmp r5, #0
	beq _020212C6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02021540
_020212C6:
	ldr r0, _020212E4 ; =_021D2198 + 0x40
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	bne _020212DC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020213C8
	add r1, r0, #0
	b _020212DE
_020212DC:
	mov r1, #1
_020212DE:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020212E4: .word _021D2198 + 0x40
_020212E8: .word _021D2198 + 0xC
	thumb_func_end sub_02021280

