	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238680
	.public ov72_022387D0
	.public ov72_022390D8
	.public ov72_02239108
	.public ov72_02239168
	.public ov72_0223A350
	.public ov72_0223A420
	.public ov72_0223AF48

	.text

	thumb_func_start ov72_022390D8
ov72_022390D8: ; 0x022390D8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239100 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239104 ; =0x00000BDC
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #1
	bl ov72_02238680
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239100: .word 0x00000F0F
_02239104: .word 0x00000BDC
	thumb_func_end ov72_022390D8

	thumb_func_start ov72_02239108
ov72_02239108: ; 0x02239108
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0223915C ; =0x0000136C
	add r0, r4, r0
	bl ov72_0223AF48
	cmp r0, #0
	beq _02239154
	cmp r0, #2
	bne _02239132
	bl sub_0203946C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov72_022387D0
	mov r0, #0x2e
	str r0, [r4, #0x1c]
	b _02239154
_02239132:
	ldr r0, _02239160 ; =0x00000F0F
	ldr r1, _02239164 ; =0x00000BD8
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #2
	bl ov72_02238680
	add r0, r4, #0
	bl ov72_0223A420
_02239154:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223915C: .word 0x0000136C
_02239160: .word 0x00000F0F
_02239164: .word 0x00000BD8
	thumb_func_end ov72_02239108

	thumb_func_start ov72_02239168
ov72_02239168: ; 0x02239168
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239190 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239194 ; =0x00000BD8
	mov r2, #0xc
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x34
	bl ov72_02238680
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239190: .word 0x00000F0F
_02239194: .word 0x00000BD8
	thumb_func_end ov72_02239168

