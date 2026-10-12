	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadStopAutoSampling
	.public sub_02021238
	.public sub_02021280
	.public sub_020212EC
	.extern _021D2198
	.extern sub_020211AC
	.extern sub_020213C8
	.extern sub_02021528
	.extern sub_02021540

	.text
	thumb_func_start GF_TouchpadStopAutoSampling
GF_TouchpadStopAutoSampling: ; 0x020211F4
	push {r4, r5, r6, lr}
	ldr r0, _02021234 ; =_021D2198 + 0x40
	mov r5, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _02021204
	mov r0, #1
	pop {r4, r5, r6, pc}
_02021204:
	mov r4, #4
	add r6, r4, #0
_02021208:
	bl TP_RequestAutoSamplingStopAsync
	add r0, r4, #0
	bl TP_WaitBusy
	add r0, r6, #0
	bl TP_CheckBusy
	cmp r0, #0
	beq _0202121E
	add r5, r5, #1
_0202121E:
	cmp r0, #0
	beq _02021226
	cmp r5, #5
	bls _02021208
_02021226:
	cmp r5, #5
	bls _0202122E
	mov r0, #2
	pop {r4, r5, r6, pc}
_0202122E:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02021234: .word _021D2198 + 0x40
	thumb_func_end GF_TouchpadStopAutoSampling

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

	thumb_func_start sub_020212EC
sub_020212EC: ; 0x020212EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	str r1, [sp]
	add r0, r1, #0
	beq _02021322
	add r4, r5, #0
	add r6, sp, #4
_020212FE:
	add r0, sp, #4
	add r1, r5, #0
	bl TP_GetCalibratedPoint
	ldrh r0, [r6]
	add r7, r7, #1
	add r5, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrh r0, [r6, #6]
	strh r0, [r4, #6]
	ldr r0, [sp]
	add r4, #8
	cmp r7, r0
	blo _020212FE
_02021322:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020212EC

