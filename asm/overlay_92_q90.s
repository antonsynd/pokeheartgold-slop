	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225FF1C
	.extern ov92_02260428
	.extern ov92_02260798
	.extern ov92_022607F8
	.extern ov92_02263C34
	.extern ov92_02263C74
	.extern ov92_02263C80
	.extern ov92_02263C8C
	.extern ov92_02263D84
	.extern ov92_02263D88

	.text

	.text
	thumb_func_start ov92_0225FF1C
ov92_0225FF1C: ; 0x0225FF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, _0226023C ; =ov92_02263C34
	add r5, r0, #0
	ldrh r3, [r1, #0x20]
	add r0, sp, #0x18
	add r2, sp, #0x18
	strh r3, [r0]
	ldrh r3, [r1, #0x22]
	strh r3, [r0, #2]
	ldrh r3, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r3, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _02260240 ; =0x00002AE0
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x40
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _0225FF4C
	b _02260090
_0225FF4C:
	add r0, r1, #0
	add r0, #0x42
	ldrsh r0, [r5, r0]
	cmp r0, #9
	bge _0225FFC4
	cmp r0, #8
	bgt _0225FFAE
	add r0, r1, #0
	add r0, #0x74
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x8c
	add r1, #0x74
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov92_022607F8
	str r0, [sp, #0x10]
	ldr r0, _02260244 ; =0x00002B6C
	add r0, r5, r0
	bl ov92_022607F8
	ldr r2, _02260248 ; =0x00002B54
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _0225FF98
	cmp r0, #1
	bne _02260028
_0225FF98:
	ldr r1, _02260248 ; =0x00002B54
	ldr r0, [r5, r1]
	sub r0, r0, r7
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, #0x18
	sub r0, r0, r6
	str r0, [r5, r1]
	b _02260028
_0225FFAE:
	add r0, r1, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	add r1, #0x8c
	lsl r0, r0, #4
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	lsl r0, r0, #4
	asr r4, r0, #0x10
	b _02260028
_0225FFC4:
	add r0, r1, #0
	add r0, #0x44
	ldr r7, [r5, r0]
	add r0, r1, #0
	add r0, #0x5c
	add r1, #0x44
	ldr r6, [r5, r0]
	add r0, r5, r1
	bl ov92_022607F8
	str r0, [sp, #0x14]
	ldr r0, _0226024C ; =0x00002B3C
	add r0, r5, r0
	bl ov92_022607F8
	ldr r2, _02260250 ; =0x00002B24
	ldr r1, [r5, r2]
	add r2, #0x18
	sub r1, r1, r7
	lsl r1, r1, #4
	asr r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r5, r2]
	sub r1, r1, r6
	lsl r1, r1, #4
	asr r4, r1, #0x10
	ldr r1, [sp, #0x14]
	cmp r1, #1
	beq _02260002
	cmp r0, #1
	bne _02260028
_02260002:
	ldr r0, _02260254 ; =0x00002B88
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02260028
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x64
	ldr r1, [r5, r1]
	sub r2, r1, r7
	add r1, r0, #0
	sub r1, #0x64
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x4c
	ldr r1, [r5, r1]
	sub r0, #0x4c
	sub r1, r1, r6
	str r1, [r5, r0]
_02260028:
	ldr r0, _02260258 ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov92_02260428
	mov r1, #0
	ldr r0, _0226025C ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r3, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	bl ov92_02260428
	cmp r0, #0
	beq _0226007A
	ldr r4, _02260260 ; =ov92_02263C8C
	add r3, sp, #0x38
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _02260264 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
_0226007A:
	ldr r0, _02260268 ; =0x00002B22
	add sp, #0x44
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	sub r1, r0, #2
	ldrsh r1, [r5, r1]
	sub r0, r0, #2
	sub r1, r1, #1
	strh r1, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_02260090:
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	lsl r1, r1, #1
	ldrsh r1, [r2, r1]
	bl _s32_div_f
	cmp r1, #0
	bne _022600AE
	ldr r0, _02260240 ; =0x00002AE0
	mov r1, #0
	str r1, [r5, r0]
	mov r1, #1
	add r0, #0xac
	str r1, [r5, r0]
_022600AE:
	ldr r1, _0226026C ; =0x00002B84
	ldr r2, [r5, r1]
	cmp r2, #0
	bne _02260124
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02260124
	add r0, r1, #0
	sub r0, #0x48
	ldr r0, [r5, r0]
	sub r1, #0x60
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _02260258 ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r1, #0
	ldr r0, _0226025C ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov92_02260428
	cmp r0, #0
	beq _02260194
	ldr r4, _02260270 ; =ov92_02263C74
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _02260264 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	b _02260194
_02260124:
	cmp r2, #1
	bne _02260194
	ldr r1, _02260254 ; =0x00002B88
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _02260194
	add r0, r1, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	sub r1, #0x64
	lsl r0, r0, #4
	asr r4, r0, #0x10
	ldr r0, [r5, r1]
	mov r1, #0
	lsl r0, r0, #4
	asr r6, r0, #0x10
	ldr r0, _02260258 ; =0x3FF0A3D7
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r1, #0
	ldr r0, _0226025C ; =0x3F4CCCCD
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r2, r1, #0
	add r3, r6, #0
	str r1, [sp, #8]
	bl ov92_02260428
	cmp r0, #0
	beq _02260194
	ldr r4, _02260274 ; =ov92_02263C80
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _02260264 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
_02260194:
	ldr r1, _02260278 ; =0x00002B90
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _022601AE
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _022601AC
	sub r1, #8
	ldr r0, [r5, r1]
	cmp r0, #1
	beq _022601AE
_022601AC:
	b _02260408
_022601AE:
	bl GetLCRNGSeed
	add r4, r0, #0
	bl LCRandom
	add r6, r0, #0
	add r0, r4, #0
	bl SetLCRNGSeed
	add r0, r6, #0
	mov r1, #0x64
	bl _u32_div_f
	ldr r0, _0226027C ; =0x00002AEC
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r7, r0, #5
	ldr r0, _02260280 ; =ov92_02263D88
	add r3, r1, #0
	ldr r2, [r0, r7]
	ldr r0, _02260284 ; =ov92_02263D84
	add r0, r0, r7
_022601DC:
	cmp r4, r2
	blt _022601EE
	add r6, r3, r0
	ldr r6, [r6, #0xc]
	add r1, r1, #1
	add r2, r2, r6
	add r3, #8
	cmp r1, #3
	blt _022601DC
_022601EE:
	ldr r0, _02260284 ; =ov92_02263D84
	lsl r1, r1, #3
	add r0, r0, r7
	ldr r6, [r1, r0]
	ldr r1, _02260264 ; =0x00001FC8
	ldr r0, [r5, r1]
	add r1, #8
	lsl r0, r0, #4
	ldr r1, [r5, r1]
	asr r7, r0, #0x10
	lsl r0, r1, #4
	asr r0, r0, #0x10
	cmp r1, #0
	bne _02260224
	bl LCRandom
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	mov r4, #0x1f
	ror r0, r4
	add r0, r1, r0
	beq _02260220
	mov r4, #1
	b _02260236
_02260220:
	sub r4, #0x20
	b _02260236
_02260224:
	cmp r0, #0
	blt _0226022C
	mov r0, #1
	b _02260230
_0226022C:
	mov r0, #0
	mvn r0, r0
_02260230:
	neg r0, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02260236:
	ldr r0, _02260264 ; =0x00001FC8
	b _02260288
	nop
_0226023C: .word ov92_02263C34
_02260240: .word 0x00002AE0
_02260244: .word 0x00002B6C
_02260248: .word 0x00002B54
_0226024C: .word 0x00002B3C
_02260250: .word 0x00002B24
_02260254: .word 0x00002B88
_02260258: .word 0x3FF0A3D7
_0226025C: .word 0x3F4CCCCD
_02260260: .word ov92_02263C8C
_02260264: .word 0x00001FC8
_02260268: .word 0x00002B22
_0226026C: .word 0x00002B84
_02260270: .word ov92_02263C74
_02260274: .word ov92_02263C80
_02260278: .word 0x00002B90
_0226027C: .word 0x00002AEC
_02260280: .word ov92_02263D88
_02260284: .word ov92_02263D84
_02260288:
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022602A8
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r2
	mov r1, #0x1f
	ror r0, r1
	add r0, r2, r0
	beq _022602A4
	mov r1, #1
	b _022602C2
_022602A4:
	sub r1, #0x20
	b _022602C2
_022602A8:
	cmp r7, #0
	blt _022602B0
	mov r1, #1
	b _022602B4
_022602B0:
	mov r1, #0
	mvn r1, r1
_022602B4:
	cmp r4, #0
	bge _022602C2
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_022602C2:
	ldr r0, _0226040C ; =0x00002AEC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022602CC
	mov r1, #0
_022602CC:
	add r0, r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r6, #0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	mul r0, r4
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, _02260410 ; =0x00002B98
	lsl r1, r2, #0x10
	strh r7, [r5, r0]
	add r0, r0, #2
	asr r1, r1, #0x10
	strh r6, [r5, r0]
	cmp r1, #0
	ble _0226030A
	lsl r0, r1, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02260318
_0226030A:
	lsl r0, r1, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02260318:
	bl _ffix
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _02260414 ; =0x00002B54
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260798
	cmp r4, #0
	ble _02260344
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02260352
_02260344:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02260352:
	bl _ffix
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _02260418 ; =0x00002B6C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260798
	cmp r7, #0
	ble _0226037E
	lsl r0, r7, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226038C
_0226037E:
	lsl r0, r7, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226038C:
	bl _ffix
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _0226041C ; =0x00002B24
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260798
	cmp r6, #0
	ble _022603B8
	lsl r0, r6, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022603C6
_022603B8:
	lsl r0, r6, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022603C6:
	bl _ffix
	add r2, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02260420 ; =0x00002B3C
	mov r1, #0
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260798
	ldr r0, _02260424 ; =0x00002B20
	mov r1, #0x16
	strh r1, [r5, r0]
	mov r1, #0
	add r2, r0, #2
	strh r1, [r5, r2]
	sub r2, r0, #4
	strh r7, [r5, r2]
	sub r2, r0, #2
	strh r6, [r5, r2]
	add r2, r0, #0
	add r2, #0x64
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x6c
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #0x68
	str r1, [r5, r2]
	mov r1, #1
	add r0, #0x70
	str r1, [r5, r0]
_02260408:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0226040C: .word 0x00002AEC
_02260410: .word 0x00002B98
_02260414: .word 0x00002B54
_02260418: .word 0x00002B6C
_0226041C: .word 0x00002B24
_02260420: .word 0x00002B3C
_02260424: .word 0x00002B20
	thumb_func_end ov92_0225FF1C

