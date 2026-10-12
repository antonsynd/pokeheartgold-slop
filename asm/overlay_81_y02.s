	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223E8BC
	.public ov81_0223EA98
	.public ov81_0223EBE4
	.extern ov81_02240658
	.extern ov81_0224086C
	.extern ov81_022408C4
	.extern ov81_02240F38
	.extern ov81_022412C4
	.extern ov81_0224174C
	.extern ov81_022417B4
	.extern ov81_0224185C
	.extern ov81_022419E0
	.extern ov81_02241A98
	.extern ov81_02241C84
	.extern ov81_02241D38
	.extern ov81_02241F50
	.extern ov81_02242058
	.extern ov81_022420B4
	.extern ov81_02242218
	.extern ov81_022423D0
	.extern ov81_02242420
	.extern ov81_02242CBC
	.extern ov81_02242D18
	.extern ov81_02242D94
	.extern ov81_02242E08
	.extern ov81_02242EB8
	.extern ov81_02242F48
	.extern ov81_02242F94
	.extern ov81_02242FB0
	.extern ov81_02243028
	.extern ov81_02243228
	.extern ov81_02243370
	.extern ov81_02243398

	.text

	.text
	thumb_func_start ov81_0223E8BC
ov81_0223E8BC: ; 0x0223E8BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	add r5, r0, #0
	bl ov81_02240F38
	ldr r1, _0223EA88 ; =0x00000464
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov81_02243370
	ldr r1, _0223EA88 ; =0x00000464
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov81_0224185C
	ldr r1, _0223EA88 ; =0x00000464
	add r2, sp, #0x10
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r3, sp, #0xc
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov81_02242D18
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	lsr r0, r1, #1
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	mov r1, #1
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov81_02242CBC
	mov r1, #0x39
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov81_02241D38
	ldr r0, _0223EA88 ; =0x00000464
	mov r1, #4
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
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
	bl ov81_02241F50
	add r0, r5, #0
	mov r1, #0
	bl ov81_02242058
	add r0, r5, #0
	bl ov81_022420B4
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
	mov r3, #4
	bl ov81_02242218
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov81_022423D0
	ldr r0, _0223EA8C ; =0x00000474
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	mov r2, #0
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	add r3, r2, #0
	str r2, [sp]
	bl ov81_022408C4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov81_02243028
	add r0, r5, #0
	mov r1, #9
	bl ov81_0224086C
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223EA70
	ldr r0, _0223EA90 ; =0x0000047C
	mov r6, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bls _0223EA38
	add r4, r5, #0
	add r7, r0, #0
_0223EA20:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r1, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r1
	blo _0223EA20
_0223EA38:
	ldr r0, _0223EA94 ; =0x00000468
	add r2, sp, #0x10
	ldr r0, [r5, r0]
	add r3, sp, #0xc
	bl ov81_02241C84
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov81_02242D94
	add r0, r5, #0
	mov r1, #0xff
	bl ov81_02240658
	add r0, r5, #0
	bl ov81_0224174C
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242E08
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223EA70:
	add r0, r5, #0
	bl ov81_022417B4
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242E08
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223EA88: .word 0x00000464
_0223EA8C: .word 0x00000474
_0223EA90: .word 0x0000047C
_0223EA94: .word 0x00000468
	thumb_func_end ov81_0223E8BC

	thumb_func_start ov81_0223EA98
ov81_0223EA98: ; 0x0223EA98
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r1, _0223EBD8 ; =0x00000464
	add r4, r0, #0
	ldr r1, [r4, r1]
	bl ov81_02243398
	ldr r1, _0223EBD8 ; =0x00000464
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov81_02241A98
	ldr r0, _0223EBD8 ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov81_02242D18
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0xe0
	add r1, #0xf4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov81_02241C84
	mov r2, #0
	str r2, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r3, r2, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov81_02242CBC
	mov r1, #0x39
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r1, #0xd4
	ldr r0, [r4, r1]
	mov r1, #6
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov81_02243228
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r3, r1, #0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov81_02242D18
	mov r1, #0xe3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov81_02241F50
	add r0, r4, #0
	mov r1, #1
	bl ov81_02242058
	add r0, r4, #0
	bl ov81_022420B4
	mov r2, #0
	str r2, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #4
	add r3, r2, #0
	bl ov81_02242D18
	mov r1, #0xe5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	str r2, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #5
	add r3, r2, #0
	bl ov81_02242D18
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0x2c
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	mov r3, #4
	bl ov81_02242218
	add r0, r4, #0
	mov r1, #0
	bl ov81_02242420
	ldr r0, _0223EBDC ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #7
	add r3, r1, #0
	bl sub_020196E8
	mov r2, #0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	add r3, r2, #0
	str r2, [sp]
	bl ov81_022408C4
	ldr r0, _0223EBE0 ; =0x00000468
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov81_022419E0
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223EBD8: .word 0x00000464
_0223EBDC: .word 0x00000474
_0223EBE0: .word 0x00000468
	thumb_func_end ov81_0223EA98

	thumb_func_start ov81_0223EBE4
ov81_0223EBE4: ; 0x0223EBE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223EC40
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_0223EBF6:
	add r0, r5, #0
	add r1, r6, #0
	bl ov81_022412C4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	mov r1, #1
	bl ov81_02242EB8
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0223EC36
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F48
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242FB0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242F94
_0223EC36:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0223EBF6
_0223EC40:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_0223EBE4

