	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F40A0
	.public ov18_021F40E4
	.public ov18_021F4134
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F619C
	.extern ov18_021F61DC
	.extern ov18_021F65EC
	.extern ov18_021FA35A

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F40A0
ov18_021F40A0: ; 0x021F40A0
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #9
	mov r2, #0x19
	str r1, [sp]
	add r4, r0, #0
	lsl r2, r2, #8
	ldr r2, [r4, r2]
	ldr r3, _021F40DC ; =ov18_021FA35A
	lsl r2, r2, #0x18
	mov r1, #5
	asr r2, r2, #0x18
	bl ov18_021F61DC
	add r0, r4, #0
	bl ov18_021F65EC
	ldr r2, _021F40E0 ; =0x000018CA
	add r0, r4, #0
	ldrsb r1, [r4, r2]
	add r2, #0x36
	ldr r2, [r4, r2]
	mov r3, #6
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bl ov18_021F619C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F40DC: .word ov18_021FA35A
_021F40E0: .word 0x000018CA
	thumb_func_end ov18_021F40A0

	thumb_func_start ov18_021F40E4
ov18_021F40E4: ; 0x021F40E4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r3, [r4]
	ldr r1, [r3, #0x10]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsl r0, r0, #0xb
	ldr r1, [r3, #0x14]
	lsr r2, r0, #0x10
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsl r0, r0, #0xb
	lsr r3, r0, #0x10
	cmp r2, #0x17
	blo _021F410E
	sub r2, #0x16
	lsl r0, r2, #0x10
	lsr r2, r0, #0x10
_021F410E:
	lsl r2, r2, #3
	lsl r3, r3, #3
	add r2, #0x44
	add r3, #0x2c
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r1, #2
	add r0, r4, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	str r1, [sp]
	bl ov18_021F1294
	add r0, r4, #0
	bl ov18_021F4134
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov18_021F40E4

	thumb_func_start ov18_021F4134
ov18_021F4134: ; 0x021F4134
	push {r3, lr}
	ldr r1, _021F4184 ; =0x000018C8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ldr r1, [r0]
	bne _021F4162
	ldr r2, [r1, #0x10]
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	asr r1, r1, #5
	cmp r1, #0x17
	blt _021F4158
	mov r1, #2
	mov r2, #0
	bl ov18_021F11C0
	pop {r3, pc}
_021F4158:
	mov r1, #2
	mov r2, #1
	bl ov18_021F11C0
	pop {r3, pc}
_021F4162:
	ldr r2, [r1, #0x10]
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	asr r1, r1, #5
	cmp r1, #0x17
	blt _021F417A
	mov r1, #2
	mov r2, #1
	bl ov18_021F11C0
	pop {r3, pc}
_021F417A:
	mov r1, #2
	mov r2, #0
	bl ov18_021F11C0
	pop {r3, pc}
	.balign 4, 0
_021F4184: .word 0x000018C8
	thumb_func_end ov18_021F4134

