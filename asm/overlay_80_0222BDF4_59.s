	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222CC20
	.public ov80_0222CC70

	.text

	thumb_func_start ov80_0222CC20
ov80_0222CC20: ; 0x0222CC20
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0]
	ldr r0, [r4]
	bl Frontier_GetLaunchArgs
	add r1, r4, #0
	add r1, #0xb0
	str r1, [sp]
	add r1, r4, #0
	add r1, #0xb2
	str r1, [sp, #4]
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xb4
	add r2, #0xb6
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldr r0, [r0, #8]
	mov r3, #0
	bl sub_0202FE14
	sub r1, r0, #2
	cmp r1, #1
	bhi _0222CC68
	cmp r0, #2
	bne _0222CC5A
	mov r1, #1
	b _0222CC5C
_0222CC5A:
	mov r1, #0
_0222CC5C:
	add r4, #0xb8
	ldr r0, [r4]
	add sp, #8
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
_0222CC68:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov80_0222CC20

	thumb_func_start ov80_0222CC70
ov80_0222CC70: ; 0x0222CC70
	push {r4, lr}
	mov r4, #0xf
	cmp r0, #6
	bhi _0222CCB0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CC84: ; jump table
	.short _0222CD90 - _0222CC84 - 2 ; case 0
	.short _0222CC92 - _0222CC84 - 2 ; case 1
	.short _0222CCC0 - _0222CC84 - 2 ; case 2
	.short _0222CCEA - _0222CC84 - 2 ; case 3
	.short _0222CD14 - _0222CC84 - 2 ; case 4
	.short _0222CD3E - _0222CC84 - 2 ; case 5
	.short _0222CD68 - _0222CC84 - 2 ; case 6
_0222CC92:
	cmp r1, #6
	bhi _0222CCBA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CCA2: ; jump table
	.short _0222CCB0 - _0222CCA2 - 2 ; case 0
	.short _0222CCB2 - _0222CCA2 - 2 ; case 1
	.short _0222CCB6 - _0222CCA2 - 2 ; case 2
	.short _0222CCB6 - _0222CCA2 - 2 ; case 3
	.short _0222CCB8 - _0222CCA2 - 2 ; case 4
	.short _0222CCB8 - _0222CCA2 - 2 ; case 5
	.short _0222CCB6 - _0222CCA2 - 2 ; case 6
_0222CCB0:
	b _0222CD90
_0222CCB2:
	mov r4, #0x10
	b _0222CD90
_0222CCB6:
	mov r4, #0x11
_0222CCB8:
	b _0222CD90
_0222CCBA:
	bl GF_AssertFail
	b _0222CD90
_0222CCC0:
	cmp r1, #3
	bhi _0222CCE4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CCD0: ; jump table
	.short _0222CCD8 - _0222CCD0 - 2 ; case 0
	.short _0222CCDC - _0222CCD0 - 2 ; case 1
	.short _0222CCE0 - _0222CCD0 - 2 ; case 2
	.short _0222CCE0 - _0222CCD0 - 2 ; case 3
_0222CCD8:
	mov r4, #0x12
	b _0222CD90
_0222CCDC:
	mov r4, #0x13
	b _0222CD90
_0222CCE0:
	mov r4, #0x14
	b _0222CD90
_0222CCE4:
	bl GF_AssertFail
	b _0222CD90
_0222CCEA:
	cmp r1, #3
	bhi _0222CD0E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CCFA: ; jump table
	.short _0222CD02 - _0222CCFA - 2 ; case 0
	.short _0222CD06 - _0222CCFA - 2 ; case 1
	.short _0222CD0A - _0222CCFA - 2 ; case 2
	.short _0222CD0A - _0222CCFA - 2 ; case 3
_0222CD02:
	mov r4, #0x15
	b _0222CD90
_0222CD06:
	mov r4, #0x16
	b _0222CD90
_0222CD0A:
	mov r4, #0x17
	b _0222CD90
_0222CD0E:
	bl GF_AssertFail
	b _0222CD90
_0222CD14:
	cmp r1, #3
	bhi _0222CD38
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CD24: ; jump table
	.short _0222CD2C - _0222CD24 - 2 ; case 0
	.short _0222CD30 - _0222CD24 - 2 ; case 1
	.short _0222CD34 - _0222CD24 - 2 ; case 2
	.short _0222CD34 - _0222CD24 - 2 ; case 3
_0222CD2C:
	mov r4, #0x1b
	b _0222CD90
_0222CD30:
	mov r4, #0x1c
	b _0222CD90
_0222CD34:
	mov r4, #0x1d
	b _0222CD90
_0222CD38:
	bl GF_AssertFail
	b _0222CD90
_0222CD3E:
	cmp r1, #3
	bhi _0222CD62
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CD4E: ; jump table
	.short _0222CD56 - _0222CD4E - 2 ; case 0
	.short _0222CD5A - _0222CD4E - 2 ; case 1
	.short _0222CD5E - _0222CD4E - 2 ; case 2
	.short _0222CD5E - _0222CD4E - 2 ; case 3
_0222CD56:
	mov r4, #0x18
	b _0222CD90
_0222CD5A:
	mov r4, #0x19
	b _0222CD90
_0222CD5E:
	mov r4, #0x1a
	b _0222CD90
_0222CD62:
	bl GF_AssertFail
	b _0222CD90
_0222CD68:
	cmp r1, #3
	bhi _0222CD8C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CD78: ; jump table
	.short _0222CD80 - _0222CD78 - 2 ; case 0
	.short _0222CD84 - _0222CD78 - 2 ; case 1
	.short _0222CD88 - _0222CD78 - 2 ; case 2
	.short _0222CD88 - _0222CD78 - 2 ; case 3
_0222CD80:
	mov r4, #0x1e
	b _0222CD90
_0222CD84:
	mov r4, #0x1f
	b _0222CD90
_0222CD88:
	mov r4, #0x20
	b _0222CD90
_0222CD8C:
	bl GF_AssertFail
_0222CD90:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov80_0222CC70

