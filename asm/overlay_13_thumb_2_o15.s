	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_0222189C
	.public ov13_02221978
	.extern _0224CF98
	.extern ov13_022214AC
	.extern ov13_02221C2C
	.extern ov13_02221C78
	.extern ov13_02221F94
	.extern ov13_022220A4
	.extern ov13_02222978
	.extern ov13_02222A5C
	.extern ov13_02222A84
	.extern ov13_0224CFD8
	.extern ov13_0224D658

	.text

	.text
	thumb_func_start ov13_0222189C
ov13_0222189C: ; 0x0222189C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _022218AE
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022218AE:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov13_02221C2C
	cmp r0, #0
	bge _022218CE
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022218CE:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	cmp r0, #0
	bne _022218E2
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022218E2:
	ldrb r0, [r4]
	cmp r0, #7
	bne _02221920
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022218FE
	mov r0, #0x14
	bl ov13_022214AC
	b _0222191A
_022218FE:
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _02221914
	mov r0, #0x15
	bl ov13_022214AC
	b _0222191A
_02221914:
	mov r0, #0x18
	bl ov13_022214AC
_0222191A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221920:
	cmp r0, #1
	beq _0222192E
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222192E:
	ldr r1, _02221970 ; =ov13_0224CFD8
	add r0, r4, #4
	bl ov13_02221C78
	cmp r0, #0
	bge _02221958
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0222194E
	mov r0, #0x16
	bl ov13_022214AC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0222194E:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221958:
	ldrh r0, [r7, #0xc]
	bl ov13_02222A84
	bl ov13_022220A4
	ldr r1, _02221974 ; =_0224CF98
	str r0, [r1]
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221970: .word ov13_0224CFD8
_02221974: .word _0224CF98
	thumb_func_end ov13_0222189C

	thumb_func_start ov13_02221978
ov13_02221978: ; 0x02221978
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #1
	beq _0222198A
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222198A:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r3, #8
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov13_02221C2C
	cmp r0, #0
	bge _022219AC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022219AC:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	cmp r0, #0
	bne _022219C0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022219C0:
	ldrb r0, [r4]
	cmp r0, #7
	bne _022219FE
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _022219DC
	mov r0, #0x14
	bl ov13_022214AC
	b _022219F8
_022219DC:
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _022219F2
	mov r0, #0x15
	bl ov13_022214AC
	b _022219F8
_022219F2:
	mov r0, #0x18
	bl ov13_022214AC
_022219F8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022219FE:
	mov r2, #0x6a
	ldr r0, _02221A44 ; =ov13_0224D658
	mov r1, #0
	lsl r2, r2, #4
	bl ov13_02222978
	ldrh r0, [r7, #0xa]
	bl ov13_02222A84
	add r2, r0, #0
	ldr r0, _02221A48 ; =ov13_0224CFD8
	ldr r3, _02221A44 ; =ov13_0224D658
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	bl ov13_02221F94
	cmp r0, #0
	bge _02221A2E
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221A2E:
	ldr r0, _02221A4C ; =_0224CF98
	ldr r1, [r0, #0x30]
	ldr r0, [r0, #0x2c]
	tst r0, r1
	bne _02221A3C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221A3C:
	mov r0, #0
	str r0, [r5]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221A44: .word ov13_0224D658
_02221A48: .word ov13_0224CFD8
_02221A4C: .word _0224CF98
	thumb_func_end ov13_02221978

