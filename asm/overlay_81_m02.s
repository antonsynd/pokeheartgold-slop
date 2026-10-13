	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223E5B4
	.public ov81_0223E87C
	.extern ov81_02240658
	.extern ov81_0224086C
	.extern ov81_022408A0
	.extern ov81_022408C4
	.extern ov81_02240AD8
	.extern ov81_02240F38
	.extern ov81_022412C4
	.extern ov81_02241450
	.extern ov81_022414E0
	.extern ov81_02241524
	.extern ov81_02241C84
	.extern ov81_02241CA0
	.extern ov81_02241D0C
	.extern ov81_02241E68
	.extern ov81_02241F50
	.extern ov81_02241FEC
	.extern ov81_022420B4
	.extern ov81_0224218C
	.extern ov81_02242218
	.extern ov81_02242300
	.extern ov81_02242CBC
	.extern ov81_02242D18
	.extern ov81_02242D94
	.extern ov81_02242EB8
	.extern ov81_02242F48
	.extern ov81_02242F94
	.extern ov81_02242FB0
	.extern ov81_02243028
	.extern ov81_02243228

	.text

	.text
	thumb_func_start ov81_0223E5B4
ov81_0223E5B4: ; 0x0223E5B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldrb r0, [r5, #9]
	bl ov80_02236DD4
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0
	bl ov81_02240F38
	add r0, r5, #0
	bl ov81_02241524
	ldr r1, _0223E864 ; =0x00000464
	add r2, sp, #0x28
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r3, sp, #0x24
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x28]
	mov r2, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov81_02242D18
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0xdc
	ldr r0, [r5, r1]
	mov r1, #6
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x28]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov81_02242D18
	mov r1, #0xe3
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov81_02241CA0
	mov r2, #0
	str r2, [sp]
	ldr r0, [sp, #0x28]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r3, r2, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov81_02242CBC
	mov r1, #0x39
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov81_02241F50
	add r0, r5, #0
	bl ov81_02241FEC
	add r0, r5, #0
	bl ov81_022420B4
	add r0, r5, #0
	bl ov81_0224218C
	mov r2, #0
	str r2, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #4
	add r3, r2, #0
	bl ov81_02242D18
	mov r1, #0xe5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	str r2, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #5
	add r3, r2, #0
	bl ov81_02242D18
	mov r2, #0xe6
	lsl r2, r2, #2
	add r1, r2, #0
	str r0, [r5, r2]
	add r1, #0x28
	add r2, #0xd0
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r3, #6
	bl ov81_02242218
	ldr r1, _0223E868 ; =0x00000468
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #6
	bl ov81_02242300
	ldr r0, _0223E86C ; =0x00000474
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	mov r2, #0
	add r1, r5, #0
	str r2, [sp]
	add r0, r5, #0
	add r1, #0x50
	add r3, r2, #0
	bl ov81_022408C4
	ldrb r0, [r5, #0x11]
	mov r6, #0
	cmp r0, #0
	ble _0223E740
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_0223E6FA:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F48
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242FB0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	bl ov81_02242F94
	ldrb r0, [r5, #0x11]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blt _0223E6FA
_0223E740:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov81_02243028
	ldrb r2, [r5, #0x11]
	add r0, r5, #0
	mov r1, #0
	add r2, r2, #1
	bl ov81_022408A0
	add r0, r5, #0
	mov r1, #0
	bl ov81_0224086C
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223E85A
	add r0, r5, #0
	bl ov81_02241D0C
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #0x11]
	mov r6, #0
	cmp r0, #0
	ble _0223E79E
	mov r7, #0x6b
	add r4, r5, #0
	lsl r7, r7, #2
_0223E78A:
	ldr r0, [r4, r7]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	ldrb r0, [r5, #0x11]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0223E78A
_0223E79E:
	ldr r0, [sp, #0x1c]
	mov r2, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
	ldr r2, _0223E868 ; =0x00000468
	ldr r1, [sp, #0x1c]
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov81_02241E68
	add r0, r5, #0
	bl ov81_02241FEC
	ldr r1, _0223E870 ; =0x0000047C
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, r1]
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl ov81_02241C84
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	bl ov81_02242D94
	add r0, r5, #0
	mov r1, #0xff
	bl ov81_02240658
	add r0, r5, #0
	bl ov81_02241450
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0223E860
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0223E860
	add r7, r5, #0
	add r6, r5, #0
	add r7, #0x50
_0223E804:
	add r0, r4, #5
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	bge _0223E844
	mov r0, #0xf
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0223E874 ; =0x0000045A
	ldr r1, [sp, #0x20]
	ldrh r0, [r6, r0]
	mov r2, #0
	add r1, r7, r1
	str r0, [sp, #0x10]
	ldr r0, _0223E878 ; =0x0000045E
	add r3, r2, #0
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov81_02240AD8
_0223E844:
	ldr r0, [sp, #0x20]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _0223E804
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0223E85A:
	add r0, r5, #0
	bl ov81_022414E0
_0223E860:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E864: .word 0x00000464
_0223E868: .word 0x00000468
_0223E86C: .word 0x00000474
_0223E870: .word 0x0000047C
_0223E874: .word 0x0000045A
_0223E878: .word 0x0000045E
	thumb_func_end ov81_0223E5B4

	thumb_func_start ov81_0223E87C
ov81_0223E87C: ; 0x0223E87C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x12]
	mov r4, #0
	cmp r0, #0
	ble _0223E8AE
	mov r7, #0x36
	add r5, r6, #0
	lsl r7, r7, #4
_0223E88E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov81_022412C4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r7]
	mov r1, #1
	bl ov81_02242EB8
	ldrb r0, [r6, #0x12]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223E88E
_0223E8AE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_0223E87C

