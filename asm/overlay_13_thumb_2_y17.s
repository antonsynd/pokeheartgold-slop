	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221F94
	.public ov13_022220A4
	.public ov13_022220B4
	.public ov13_02222108
	.public ov13_0222224C
	.public ov13_02222328
	.public ov13_02222394
	.public ov13_02222420
	.public ov13_02222474
	.public ov13_022224CC
	.public ov13_02222534
	.public ov13_022225B0
	.public ov13_02222638
	.extern _022459B0
	.extern _0224CF98
	.extern ov13_022208E8
	.extern ov13_022208F8
	.extern ov13_022214AC
	.extern ov13_022217D0
	.extern ov13_02221D58
	.extern ov13_02221EAC
	.extern ov13_02221F64
	.extern ov13_0222269C
	.extern ov13_02222708
	.extern ov13_022227A0
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_022229EC
	.extern ov13_02222A1C
	.extern ov13_02222A44
	.extern ov13_02222A84
	.extern ov13_02222A9C
	.extern ov13_02222AB0
	.extern ov13_02245A20
	.extern ov13_0224CFB8
	.extern ov13_0224DCF8
	.extern ov13_0224DD00
	.extern ov13_0224DD02

	.text

	.text
	thumb_func_start ov13_02221F94
ov13_02221F94: ; 0x02221F94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	str r3, [sp, #4]
	cmp r6, #0
	bgt _02221FAC
	add sp, #0x14
	sub r0, r5, #2
	pop {r4, r5, r6, r7, pc}
_02221FAC:
	ldr r7, _0222209C ; =_022459B0
_02221FAE:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	add r1, r4, #0
	cmp r0, r2
	beq _02221FD2
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r0, r0, #4
	sub r6, r6, r0
	add r4, r4, r0
	cmp r6, #0
	bgt _02221FAE
	mov r0, #3
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221FD2:
	ldrh r0, [r1, #2]
	add r4, r4, #4
	bl ov13_02222A84
	add r7, r0, #0
	mov r1, #0x35
	ldr r0, [sp]
	lsl r1, r1, #4
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #3
	lsl r0, r0, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
_02221FFC:
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _02222076
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222200E: ; jump table
	.short _02222076 - _0222200E - 2 ; case 0
	.short _02222076 - _0222200E - 2 ; case 1
	.short _02222076 - _0222200E - 2 ; case 2
	.short _02222024 - _0222200E - 2 ; case 3
	.short _02222032 - _0222200E - 2 ; case 4
	.short _02222044 - _0222200E - 2 ; case 5
	.short _02222056 - _0222200E - 2 ; case 6
	.short _02222076 - _0222200E - 2 ; case 7
	.short _02222076 - _0222200E - 2 ; case 8
	.short _02222076 - _0222200E - 2 ; case 9
	.short _02222068 - _0222200E - 2 ; case 10
_02222024:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov13_02221D58
	mov r1, #1
	orr r5, r1
	b _0222207A
_02222032:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221D58
	mov r1, #2
	orr r5, r1
	b _0222207A
_02222044:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221EAC
	mov r1, #4
	orr r5, r1
	b _0222207A
_02222056:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl ov13_02221EAC
	mov r1, #8
	orr r5, r1
	b _0222207A
_02222068:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl ov13_02221F64
	b _0222207A
_02222076:
	mov r0, #2
	mvn r0, r0
_0222207A:
	cmp r0, #0
	bne _02222098
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r0, r0, #4
	sub r7, r7, r0
	add r4, r4, r0
	cmp r7, #0
	bgt _02221FFC
	ldr r0, _022220A0 ; =_0224CF98
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_02222098:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222209C: .word _022459B0
_022220A0: .word _0224CF98
	thumb_func_end ov13_02221F94

	thumb_func_start ov13_022220A4
ov13_022220A4: ; 0x022220A4
	mov r1, #0x10
	mov r2, #0
	tst r0, r1
	beq _022220AE
	mov r2, #1
_022220AE:
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov13_022220A4

	thumb_func_start ov13_022220B4
ov13_022220B4: ; 0x022220B4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _022220CA
	cmp r0, #1
	beq _022220DC
	cmp r0, #2
	beq _022220EE
	b _02222100
_022220CA:
	mov r0, #2
	bl ov13_022217D0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_02222108
	pop {r4, r5, r6, pc}
_022220DC:
	mov r0, #3
	bl ov13_022217D0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_0222224C
	pop {r4, r5, r6, pc}
_022220EE:
	mov r0, #5
	bl ov13_022217D0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_02222328
	pop {r4, r5, r6, pc}
_02222100:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov13_022220B4

	thumb_func_start ov13_02222108
ov13_02222108: ; 0x02222108
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _0222223C ; =_0224CF98
	str r2, [sp, #0xc]
	ldr r5, [r0, #0x14]
	ldr r2, _02222240 ; =0x000005DC
	add r0, r5, #0
	bl ov13_02222978
	mov r0, #0x21
	lsl r0, r0, #4
	bl ov13_022208E8
	add r4, r0, #0
	bne _02222140
	mov r0, #2
	bl ov13_022214AC
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02222140:
	mov r2, #0x21
	mov r1, #0
	lsl r2, r2, #4
	bl ov13_02222978
	add r6, r5, #0
	ldr r0, _02222244 ; =ov13_0224DCF8
	add r1, r7, #0
	mov r2, #8
	add r6, #0x18
	bl ov13_02222968
	add r0, sp, #0x14
	ldr r1, _02222244 ; =ov13_0224DCF8
	add r0, #2
	mov r2, #8
	bl ov13_02222968
	add r0, r4, #4
	bl ov13_02222394
	add r1, sp, #0x10
	strh r0, [r1, #4]
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _0222218E
	mov r0, #3
	bl ov13_022214AC
	cmp r4, #0
	beq _02222186
	add r0, r4, #0
	bl ov13_022208F8
_02222186:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222218E:
	mov r0, #0
	strb r0, [r4]
	ldrh r0, [r1, #4]
	bl ov13_02222A44
	strh r0, [r4, #2]
	add r1, sp, #0x10
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r2, r4, #0
	add r3, sp, #0x14
	add r0, r0, #4
	strh r0, [r1, #4]
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	bl ov13_02222420
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r2, [r1, r0]
	mov r0, #0x10
	mov r3, #6
	orr r0, r2
	strh r0, [r1, #2]
	add r0, sp, #0x14
	ldr r2, _02222248 ; =ov13_02245A20
	add r0, #2
	mov r1, #8
	bl ov13_022227A0
	cmp r0, #0
	beq _022221F0
	mov r0, #2
	bl ov13_022214AC
	cmp r4, #0
	beq _022221E8
	add r0, r4, #0
	bl ov13_022208F8
_022221E8:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022221F0:
	add r3, sp, #0x10
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #1
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r0, #2
	str r0, [sp, #8]
	mov r6, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov13_02222474
	add r2, sp, #0x10
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0xff
	bl ov13_022224CC
	cmp r4, #0
	beq _02222234
	add r0, r4, #0
	bl ov13_022208F8
_02222234:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222223C: .word _0224CF98
_02222240: .word 0x000005DC
_02222244: .word ov13_0224DCF8
_02222248: .word ov13_02245A20
	thumb_func_end ov13_02222108

	thumb_func_start ov13_0222224C
ov13_0222224C: ; 0x0222224C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _0222231C ; =_0224CF98
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	add r0, sp, #0x14
	mov r2, #8
	bl ov13_02222978
	ldr r2, _02222320 ; =0x000005DC
	add r0, r4, #0
	mov r1, #0
	bl ov13_02222978
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	mov r0, #4
	bl ov13_02222A44
	add r1, sp, #0xc
	strh r0, [r1, #0xa]
	ldr r0, _0222231C ; =_0224CF98
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	bl ov13_02222A1C
	str r0, [sp, #0x18]
	mov r1, #8
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _0222231C ; =_0224CF98
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov13_02222420
	add r5, #8
	add r0, sp, #0x1c
	add r1, r5, #0
	mov r2, #8
	bl ov13_02222968
	ldr r2, _02222324 ; =ov13_02245A20
	add r0, sp, #0x1c
	mov r1, #8
	mov r3, #6
	bl ov13_022227A0
	cmp r0, #0
	beq _022222DE
	mov r0, #2
	bl ov13_022214AC
	mov r0, #0
	add sp, #0x24
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_022222DE:
	add r3, sp, #0xc
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #2
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	mov r5, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl ov13_02222474
	add r2, sp, #0xc
	mov r1, #4
	ldrsh r0, [r2, r1]
	add r3, r6, #0
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov13_022224CC
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222231C: .word _0224CF98
_02222320: .word 0x000005DC
_02222324: .word ov13_02245A20
	thumb_func_end ov13_0222224C

	thumb_func_start ov13_02222328
ov13_02222328: ; 0x02222328
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _02222388 ; =_0224CF98
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _0222238C ; =0x000005DC
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ov13_02222978
	add r5, #0x10
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #8
	bl ov13_02222968
	ldr r0, _02222390 ; =ov13_02245A20
	bl ov13_02222A9C
	add r3, r0, #0
	ldr r2, _02222390 ; =ov13_02245A20
	add r0, sp, #0xc
	mov r1, #8
	bl ov13_022227A0
	mov r2, #0
	mov r1, #3
	str r2, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r2, #0
	bl ov13_02222474
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl ov13_022224CC
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02222388: .word _0224CF98
_0222238C: .word 0x000005DC
_02222390: .word ov13_02245A20
	thumb_func_end ov13_02222328

	thumb_func_start ov13_02222394
ov13_02222394: ; 0x02222394
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02222418 ; =ov13_0224CFB8
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _0222241C ; =_0224CF98
	mov r6, #0
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5, #1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x24]
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #2]
	add r0, r4, #6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x11
	asr r7, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #4]
	add r0, r6, r7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x60
	strb r0, [r5, r7]
	add r4, r5, r7
	mov r0, #0
	strb r0, [r4, #1]
	bl ov13_02222A44
	strh r0, [r4, #4]
	mov r0, #0xe
	bl ov13_02222A1C
	str r0, [sp]
	add r0, r4, #6
	add r1, sp, #0
	mov r2, #4
	bl ov13_02222968
	mov r0, #4
	bl ov13_02222A44
	add r6, #0xa
	strh r0, [r4, #2]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222418: .word ov13_0224CFB8
_0222241C: .word _0224CF98
	thumb_func_end ov13_02222394

	thumb_func_start ov13_02222420
ov13_02222420: ; 0x02222420
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #1
	bne _02222460
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r0]
	add r0, r5, #2
	str r0, [sp]
	ldr r0, _02222470 ; =ov13_0224DCF8
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #4
	bl ov13_02222534
	ldrh r0, [r4]
	bl ov13_02222A44
	strh r0, [r5]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add sp, #0xc
	add r0, r0, #4
	strh r0, [r4]
	pop {r4, r5, pc}
_02222460:
	add r1, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl ov13_02222968
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02222470: .word ov13_0224DCF8
	thumb_func_end ov13_02222420

	thumb_func_start ov13_02222474
ov13_02222474: ; 0x02222474
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov13_02222A44
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #6]
	mov r0, #0
	strh r0, [r5, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #0xa]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #0xc]
	add r1, sp, #8
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	mov r2, #8
	strb r0, [r5, #0xe]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0xf]
	add r5, #0x10
	add r0, r5, #0
	bl ov13_02222968
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02222474

	thumb_func_start ov13_022224CC
ov13_022224CC: ; 0x022224CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #8
	add r7, r3, #0
	bl ov13_02222978
	mov r1, #2
	add r0, sp, #8
	strb r1, [r0, #1]
	ldr r0, _02222528 ; =0x00005790
	bl ov13_02222A44
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _0222252C ; =_0224CF98
	ldr r0, [r0, #0x34]
	bl ov13_02222A1C
	str r0, [sp, #0xc]
	cmp r4, #0xff
	beq _0222250A
	ldr r1, _02222530 ; =ov13_0224CFB8
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _02222510
_0222250A:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xc]
_02222510:
	add r0, sp, #8
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov13_022229EC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02222528: .word 0x00005790
_0222252C: .word _0224CF98
_02222530: .word ov13_0224CFB8
	thumb_func_end ov13_022224CC

	thumb_func_start ov13_02222534
ov13_02222534: ; 0x02222534
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	add r1, r5, #0
	add r6, r0, #0
	bl ov13_02222708
	strb r0, [r4]
	add r0, r5, #0
	bl ov13_022208E8
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0222255C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0222255C:
	bl ov13_02222AB0
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	mov r2, #2
	bl ov13_02222968
	ldr r0, _022225A8 ; =ov13_0224DD00
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl ov13_02222968
	ldr r0, _022225AC ; =ov13_0224DD02
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov13_02222968
	ldr r2, [sp, #0x30]
	ldr r1, _022225A8 ; =ov13_0224DD00
	add r0, sp, #4
	add r2, r2, #2
	add r3, r5, #0
	bl ov13_02222638
	add r0, sp, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov13_0222269C
	ldr r0, [sp, #0xc]
	bl ov13_022208F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022225A8: .word ov13_0224DD00
_022225AC: .word ov13_0224DD02
	thumb_func_end ov13_02222534

	thumb_func_start ov13_022225B0
ov13_022225B0: ; 0x022225B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov13_022208E8
	str r0, [sp, #8]
	cmp r0, #0
	bne _022225D6
	mov r0, #2
	bl ov13_022214AC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022225D6:
	ldr r0, _02222630 ; =ov13_0224DD00
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl ov13_02222968
	ldr r0, _02222634 ; =ov13_0224DD02
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov13_02222968
	ldr r2, [sp, #0x30]
	ldr r1, _02222630 ; =ov13_0224DD00
	add r0, sp, #0
	add r2, r2, #2
	add r3, r4, #0
	bl ov13_02222638
	add r0, sp, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov13_0222269C
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02222708
	cmp r0, r6
	beq _02222624
	mov r0, #0x12
	bl ov13_022214AC
	ldr r0, [sp, #8]
	bl ov13_022208F8
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02222624:
	ldr r0, [sp, #8]
	bl ov13_022208F8
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02222630: .word ov13_0224DD00
_02222634: .word ov13_0224DD02
	thumb_func_end ov13_022225B0

	thumb_func_start ov13_02222638
ov13_02222638: ; 0x02222638
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r4, [r0, #8]
	ldr r1, [sp]
	mov r0, #0
	str r0, [r1, #4]
	str r2, [sp, #8]
	str r0, [r1]
	add r2, r3, #0
	str r2, [r1, #0xc]
	str r3, [sp, #0xc]
	add r1, r3, #0
	beq _02222660
_02222656:
	ldr r1, [sp, #0xc]
	strb r0, [r4, r0]
	add r0, r0, #1
	cmp r0, r1
	blo _02222656
_02222660:
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r6, r1, #0
	add r5, r1, #0
	cmp r0, #0
	bls _02222696
_0222266C:
	ldr r0, [sp, #4]
	ldrb r7, [r4, r5]
	ldrb r0, [r0, r6]
	add r0, r1, r0
	ldr r1, [sp]
	add r0, r7, r0
	ldr r1, [r1, #0xc]
	bl _u32_div_f
	ldrb r0, [r4, r1]
	add r6, r6, #1
	strb r7, [r4, r1]
	strb r0, [r4, r5]
	ldr r0, [sp, #8]
	cmp r6, r0
	blo _0222268E
	mov r6, #0
_0222268E:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blo _0222266C
_02222696:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02222638

