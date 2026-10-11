	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FCCC

	.text

	.text
	thumb_func_start ov40_0222FCCC
ov40_0222FCCC: ; 0x0222FCCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_0222FCD8:
	mov r0, #0x83
	str r5, [sp]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0x6d
	add r2, sp, #4
	mov r3, #0
	bl sub_0202FC90
	ldr r0, [sp, #4]
	cmp r0, #3
	bhi _0222FDA4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222FCFC: ; jump table
	.short _0222FD04 - _0222FCFC - 2 ; case 0
	.short _0222FD74 - _0222FCFC - 2 ; case 1
	.short _0222FD28 - _0222FCFC - 2 ; case 2
	.short _0222FD4E - _0222FCFC - 2 ; case 3
_0222FD04:
	ldr r0, _0222FDBC ; =0x0000087C
	str r7, [r4, r0]
	add r0, #0x10
	str r7, [r4, r0]
	cmp r5, #0
	bne _0222FDA4
	mov r0, #0x6d
	bl sub_020314A4
	ldr r1, _0222FDC0 ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_020314C4
	b _0222FDA4
_0222FD28:
	ldr r0, _0222FDBC ; =0x0000087C
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _0222FDA4
	mov r0, #0x6d
	bl sub_020314A4
	ldr r1, _0222FDC0 ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_020314C4
	b _0222FDA4
_0222FD4E:
	ldr r0, _0222FDBC ; =0x0000087C
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _0222FDA4
	mov r0, #0x6d
	bl sub_020314A4
	ldr r1, _0222FDC0 ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_020314C4
	b _0222FDA4
_0222FD74:
	mov r0, #0x6d
	bl sub_0203077C
	ldr r1, _0222FDBC ; =0x0000087C
	cmp r5, #0
	str r0, [r4, r1]
	bne _0222FD9A
	mov r0, #0x6d
	bl sub_020314A4
	ldr r1, _0222FDC0 ; =0x0000088C
	str r0, [r4, r1]
	add r0, r1, #0
	sub r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl sub_020314C4
	b _0222FDA4
_0222FD9A:
	mov r0, #0x6d
	bl sub_020307AC
	ldr r1, _0222FDC0 ; =0x0000088C
	str r0, [r4, r1]
_0222FDA4:
	bl sub_0202FC48
	cmp r0, #1
	bne _0222FDB0
	bl sub_0202FC24
_0222FDB0:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _0222FCD8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222FDBC: .word 0x0000087C
_0222FDC0: .word 0x0000088C
	thumb_func_end ov40_0222FCCC

