	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022217D0
	.public ov13_022217FC
	.public ov13_0222189C
	.public ov13_02221978
	.public ov13_02221A50
	.public ov13_02221AF4
	.public ov13_02221BE8
	.extern _0224CF98
	.extern ov13_022208E8
	.extern ov13_022208F8
	.extern ov13_022214AC
	.extern ov13_022214B8
	.extern ov13_02221C2C
	.extern ov13_02221C78
	.extern ov13_02221F94
	.extern ov13_022220A4
	.extern ov13_022225B0
	.extern ov13_022227A0
	.extern ov13_02222948
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_02222A44
	.extern ov13_02222A5C
	.extern ov13_02222A84
	.extern ov13_02222A9C
	.extern ov13_02223100
	.extern ov13_022459B4
	.extern ov13_02245A20
	.extern ov13_0224CFD8
	.extern ov13_0224D658
	.extern ov13_0224DCF8

	.text

	.text
	thumb_func_start ov13_022217D0
ov13_022217D0: ; 0x022217D0
	push {r3, lr}
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022217E2
	ldr r1, _022217F8 ; =ov13_022459B4
	str r0, [r1, #4]
	mov r0, #0
	pop {r3, pc}
_022217E2:
	ldr r1, _022217F8 ; =ov13_022459B4
	ldr r2, [r1, #4]
	cmp r2, r0
	beq _022217F2
	str r0, [r1, #4]
	bl ov13_02223100
	pop {r3, pc}
_022217F2:
	mov r0, #0
	pop {r3, pc}
	nop
_022217F8: .word ov13_022459B4
	thumb_func_end ov13_022217D0

	thumb_func_start ov13_022217FC
ov13_022217FC: ; 0x022217FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldrh r0, [r6, #0xc]
	add r7, r6, #0
	add r4, r2, #0
	str r3, [sp]
	add r7, #0xc
	bl ov13_02222A84
	cmp r0, #1
	bhs _0222181E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222181E:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x11
	beq _0222182E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222182E:
	add r0, r6, #0
	add r0, #0xc
	bl ov13_02221AF4
	cmp r0, #0
	ble _02221844
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02221844:
	ldrh r0, [r7, #6]
	bl ov13_02222A84
	ldr r1, _02221890 ; =0x00001010
	cmp r0, r1
	beq _0222185E
	ldr r1, _02221894 ; =0x00002010
	cmp r0, r1
	beq _0222186E
	ldr r1, _02221898 ; =0x00003010
	cmp r0, r1
	beq _0222187E
	b _0222188C
_0222185E:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov13_0222189C
	add r5, r0, #0
	b _0222188C
_0222186E:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov13_02221978
	add r5, r0, #0
	b _0222188C
_0222187E:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov13_02221A50
	add r5, r0, #0
_0222188C:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221890: .word 0x00001010
_02221894: .word 0x00002010
_02221898: .word 0x00003010
	thumb_func_end ov13_022217FC

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

	thumb_func_start ov13_02221A50
ov13_02221A50: ; 0x02221A50
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #2
	beq _02221A62
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r4, r5, r6, pc}
_02221A62:
	add r4, r1, #0
	add r3, #0x10
	add r1, #0xc
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl ov13_02221C2C
	cmp r0, #0
	bge _02221A80
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02221A80:
	ldrb r0, [r4]
	cmp r0, #7
	beq _02221A90
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02221A90:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	cmp r0, #0
	bne _02221AA4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02221AA4:
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	cmp r0, #0
	bne _02221AB2
	mov r0, #0x64
	pop {r4, r5, r6, pc}
_02221AB2:
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _02221ACC
	mov r0, #0x14
	bl ov13_022214AC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02221ACC:
	ldr r0, [r4, #4]
	bl ov13_02222A5C
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _02221AE6
	mov r0, #0x15
	bl ov13_022214AC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02221AE6:
	mov r0, #0x18
	bl ov13_022214AC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov13_02221A50

	thumb_func_start ov13_02221AF4
ov13_02221AF4: ; 0x02221AF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r4, r5, #0
	add r0, sp, #0xc
	add r1, #0x10
	mov r2, #8
	add r4, #0x18
	bl ov13_02222968
	ldr r0, _02221BE0 ; =ov13_02245A20
	bl ov13_02222A9C
	add r3, r0, #0
	ldr r2, _02221BE0 ; =ov13_02245A20
	add r0, sp, #0xc
	mov r1, #8
	bl ov13_022227A0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02221B32
	mov r0, #2
	bl ov13_022214AC
	mov r0, #0x63
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02221B32:
	ldrh r0, [r5, #6]
	bl ov13_02222A84
	add r1, sp, #0xc
	bl ov13_02221BE8
	cmp r0, #0
	bne _02221BDA
	ldrh r0, [r5, #6]
	bl ov13_02222A84
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _02221B5A
	ldr r0, _02221BE4 ; =ov13_0224DCF8
	add r1, sp, #0xc
	mov r2, #8
	bl ov13_02222968
_02221B5A:
	ldrh r0, [r5, #0xc]
	bl ov13_02222A84
	mov r1, #0xf
	tst r0, r1
	bne _02221B6C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02221B6C:
	ldrh r0, [r4]
	bl ov13_02222A84
	add r6, r0, #0
	bl ov13_022208E8
	add r7, r0, #0
	bne _02221B88
	mov r0, #2
	bl ov13_022214AC
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02221B88:
	add r0, r4, #2
	str r0, [sp]
	ldr r0, _02221BE4 ; =ov13_0224DCF8
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldrb r3, [r5, #0xe]
	add r0, r4, #4
	add r2, r6, #0
	bl ov13_022225B0
	cmp r0, #0
	bge _02221BBE
	add r0, r7, #0
	bl ov13_022208F8
	bl ov13_022214B8
	cmp r0, #2
	bne _02221BB8
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_02221BB8:
	add sp, #0x14
	mov r0, #0xc8
	pop {r4, r5, r6, r7, pc}
_02221BBE:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov13_02222968
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #0xa]
	add r0, r7, #0
	bl ov13_022208F8
	mov r0, #0
_02221BDA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02221BE0: .word ov13_02245A20
_02221BE4: .word ov13_0224DCF8
	thumb_func_end ov13_02221AF4

	thumb_func_start ov13_02221BE8
ov13_02221BE8: ; 0x02221BE8
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _02221C28 ; =ov13_0224DCF8
	add r5, r4, #0
	add r3, r4, #0
_02221BF2:
	ldrb r2, [r6]
	cmp r2, #0
	beq _02221BFC
	mov r5, #1
	b _02221C04
_02221BFC:
	add r3, r3, #1
	add r6, r6, #1
	cmp r3, #6
	blt _02221BF2
_02221C04:
	cmp r5, #0
	beq _02221C18
	ldr r0, _02221C28 ; =ov13_0224DCF8
	mov r2, #6
	bl ov13_02222948
	cmp r0, #0
	beq _02221C22
	mov r4, #1
	b _02221C22
_02221C18:
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	beq _02221C22
	mov r4, #2
_02221C22:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02221C28: .word ov13_0224DCF8
	thumb_func_end ov13_02221BE8

