	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225CEB4
	.public ov91_0225DB18
	.public ov91_0225DB44
	.public ov91_0225DB5C
	.public ov91_0225DB7C
	.public ov91_0225DBAC
	.public ov91_0225DBC0
	.public ov91_0225DD20
	.public ov91_0225DD50
	.public ov91_0225F23C
	.public ov91_0225F25C
	.public ov91_0225F7A8
	.public ov91_022601AC
	.public ov91_022601F4
	.public ov91_02260218
	.public ov91_0226031C

	.text

	thumb_func_start ov91_0225CEB4
ov91_0225CEB4: ; 0x0225CEB4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0225D054 ; =0x00001F38
	add r6, r1, #0
	ldr r0, [r4, r0]
	mov r5, #1
	cmp r0, #4
	blo _0225CEE6
	ldr r0, _0225D058 ; =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0225CED2
	add r1, r5, #0
	sub r1, #0x79
	b _0225CED4
_0225CED2:
	mov r1, #0x78
_0225CED4:
	ldr r2, _0225D05C ; =0x000019CC
	add r0, r4, r2
	add r2, r2, #2
	ldrh r2, [r4, r2]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov91_0225DD50
_0225CEE6:
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, r1
	sub r1, #0xe8
	add r1, r4, r1
	bl ov91_0225DBC0
	ldr r0, _0225D064 ; =0x00001F74
	ldr r1, _0225D05C ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022601F4
	ldr r0, _0225D064 ; =0x00001F74
	ldr r1, _0225D05C ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_02260218
	ldr r0, _0225D054 ; =0x00001F38
	ldr r1, [r4, r0]
	cmp r1, #8
	bls _0225CF14
	b _0225D036
_0225CF14:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225CF20: ; jump table
	.short _0225CF32 - _0225CF20 - 2 ; case 0
	.short _0225CF44 - _0225CF20 - 2 ; case 1
	.short _0225CF62 - _0225CF20 - 2 ; case 2
	.short _0225CF7C - _0225CF20 - 2 ; case 3
	.short _0225CFD2 - _0225CF20 - 2 ; case 4
	.short _0225CFDC - _0225CF20 - 2 ; case 5
	.short _0225CFF4 - _0225CF20 - 2 ; case 6
	.short _0225D00A - _0225CF20 - 2 ; case 7
	.short _0225D020 - _0225CF20 - 2 ; case 8
_0225CF32:
	ldr r0, _0225D068 ; =0x0000878C
	add r0, r4, r0
	bl ov91_0225F23C
	ldr r0, _0225D054 ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0225D036
_0225CF44:
	ldr r0, _0225D068 ; =0x0000878C
	add r1, r4, #0
	add r0, r4, r0
	bl ov91_0225F25C
	cmp r0, #1
	bne _0225D036
	ldr r0, _0225D054 ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #2
	bl sub_02037AC0
	b _0225D036
_0225CF62:
	mov r0, #2
	bl sub_02037B38
	cmp r0, #0
	beq _0225D036
	ldr r0, _0225D054 ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0x41
	add r0, #8
	str r1, [r4, r0]
	b _0225D036
_0225CF7C:
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x32
	bne _0225CF98
	ldr r0, _0225D06C ; =0x00000619
	bl PlaySE
_0225CF98:
	mov r0, #0x7d
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0x14
	bne _0225CFA8
	ldr r0, _0225D070 ; =0x0000063D
	bl PlaySE
_0225CFA8:
	ldr r0, _0225D064 ; =0x00001F74
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl ov91_0226031C
	mov r0, #0x7d
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0225D036
	ldr r1, _0225D060 ; =0x00001AB4
	sub r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DB7C
	ldr r0, _0225D054 ; =0x00001F38
	mov r1, #4
	str r1, [r4, r0]
	b _0225D036
_0225CFD2:
	cmp r6, #1
	bne _0225D036
	mov r1, #5
	str r1, [r4, r0]
	b _0225D036
_0225CFDC:
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DB18
	ldr r0, _0225D074 ; =0x000005DD
	bl PlaySE
	ldr r0, _0225D054 ; =0x00001F38
	mov r1, #6
	str r1, [r4, r0]
	b _0225D036
_0225CFF4:
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DB44
	cmp r0, #0
	bne _0225D036
	ldr r0, _0225D054 ; =0x00001F38
	mov r1, #7
	str r1, [r4, r0]
	b _0225D036
_0225D00A:
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DBAC
	cmp r0, #0
	bne _0225D036
	ldr r0, _0225D054 ; =0x00001F38
	mov r1, #8
	str r1, [r4, r0]
	b _0225D036
_0225D020:
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DB5C
	ldr r0, _0225D05C ; =0x000019CC
	mov r1, #1
	add r0, r4, r0
	bl ov91_0225DD20
	mov r5, #0
_0225D036:
	ldr r0, _0225D064 ; =0x00001F74
	ldr r1, _0225D05C ; =0x000019CC
	ldr r2, [r4]
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022601AC
	ldr r1, _0225D060 ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225F7A8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0225D054: .word 0x00001F38
_0225D058: .word 0x00008785
_0225D05C: .word 0x000019CC
_0225D060: .word 0x00001AB4
_0225D064: .word 0x00001F74
_0225D068: .word 0x0000878C
_0225D06C: .word 0x00000619
_0225D070: .word 0x0000063D
_0225D074: .word 0x000005DD
	thumb_func_end ov91_0225CEB4

