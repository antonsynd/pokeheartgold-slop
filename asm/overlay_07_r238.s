	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02220978
	.public ov07_02220CAC
	.extern ov07_0221BFC0
	.extern ov07_0221F9A8
	.extern ov07_022208F8
	.extern ov07_02220938
	.extern ov07_02221664
	.extern ov07_022216A8
	.extern ov07_02221734
	.extern ov07_02231924
	.extern ov07_0223192C
	.extern ov07_02231B90
	.extern ov07_02231BC0
	.extern ov07_02231BF0
	.extern ov07_02231C20
	.extern ov07_02231C50
	.extern ov07_02231C80
	.extern ov07_02231CB0
	.extern ov07_02231CE0
	.extern ov07_02231D10
	.extern ov07_02231D40
	.extern ov07_02231DA0
	.extern ov07_022354D0
	.extern ov07_022354E0
	.extern ov07_02235510
	.extern ov07_02235540
	.extern ov07_02235578
	.extern ov07_022355B0
	.extern ov07_02235620
	.extern ov07_02235624
	.extern ov07_02235628
	.extern ov07_022357D0
	.extern ov07_02235980
	.extern ov07_02235984
	.extern ov07_02235988
	.extern ov07_02235B30
	.extern ov07_02235B34
	.extern ov07_02235B38
	.extern ov07_02235CE0
	.extern ov07_02235CE4
	.extern ov07_02235CE8
	.extern ov07_02235E90
	.extern ov07_02235E94
	.extern ov07_02235E98
	.extern ov07_02236040
	.extern ov07_02236044
	.extern ov07_02236048
	.extern ov07_022361F0
	.extern ov07_022361F4
	.extern ov07_022361F8

	.text

	.text
	thumb_func_start ov07_02220978
ov07_02220978: ; 0x02220978
	push {r3, r4, r5, r6, lr}
	sub sp, #0xbc
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, #0x64
	bgt _022209E0
	blt _0222098A
	b _02220B54
_0222098A:
	cmp r2, #0x22
	bhi _022209E6
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0222099A: ; jump table
	.short _02220C5E - _0222099A - 2 ; case 0
	.short _022209E8 - _0222099A - 2 ; case 1
	.short _022209F4 - _0222099A - 2 ; case 2
	.short _02220AF0 - _0222099A - 2 ; case 3
	.short _02220B2C - _0222099A - 2 ; case 4
	.short _02220B40 - _0222099A - 2 ; case 5
	.short _02220A00 - _0222099A - 2 ; case 6
	.short _02220A0C - _0222099A - 2 ; case 7
	.short _02220AD8 - _0222099A - 2 ; case 8
	.short _02220AE4 - _0222099A - 2 ; case 9
	.short _02220A18 - _0222099A - 2 ; case 10
	.short _02220A24 - _0222099A - 2 ; case 11
	.short _02220B80 - _0222099A - 2 ; case 12
	.short _02220B90 - _0222099A - 2 ; case 13
	.short _02220A30 - _0222099A - 2 ; case 14
	.short _02220A3C - _0222099A - 2 ; case 15
	.short _02220A48 - _0222099A - 2 ; case 16
	.short _02220A54 - _0222099A - 2 ; case 17
	.short _02220A60 - _0222099A - 2 ; case 18
	.short _02220A6C - _0222099A - 2 ; case 19
	.short _02220A78 - _0222099A - 2 ; case 20
	.short _02220A84 - _0222099A - 2 ; case 21
	.short _02220A90 - _0222099A - 2 ; case 22
	.short _02220A9C - _0222099A - 2 ; case 23
	.short _02220AA8 - _0222099A - 2 ; case 24
	.short _02220AB4 - _0222099A - 2 ; case 25
	.short _02220AC0 - _0222099A - 2 ; case 26
	.short _02220ACC - _0222099A - 2 ; case 27
	.short _02220BA0 - _0222099A - 2 ; case 28
	.short _02220C5E - _0222099A - 2 ; case 29
	.short _02220BF0 - _0222099A - 2 ; case 30
	.short _02220BC6 - _0222099A - 2 ; case 31
	.short _02220C28 - _0222099A - 2 ; case 32
	.short _02220BAC - _0222099A - 2 ; case 33
	.short _02220BBA - _0222099A - 2 ; case 34
_022209E0:
	cmp r2, #0x65
	bne _022209E6
	b _02220B6A
_022209E6:
	b _02220C5E
_022209E8:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231B90
	b _02220C5E
_022209F4:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231B90
	b _02220C5E
_02220A00:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231BC0
	b _02220C5E
_02220A0C:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231BC0
	b _02220C5E
_02220A18:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231BF0
	b _02220C5E
_02220A24:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231BF0
	b _02220C5E
_02220A30:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231C20
	b _02220C5E
_02220A3C:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231C20
	b _02220C5E
_02220A48:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231C50
	b _02220C5E
_02220A54:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231C50
	b _02220C5E
_02220A60:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231C80
	b _02220C5E
_02220A6C:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231C80
	b _02220C5E
_02220A78:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231CB0
	b _02220C5E
_02220A84:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231CB0
	b _02220C5E
_02220A90:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231CE0
	b _02220C5E
_02220A9C:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231CE0
	b _02220C5E
_02220AA8:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231D10
	b _02220C5E
_02220AB4:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231D10
	b _02220C5E
_02220AC0:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231D40
	b _02220C5E
_02220ACC:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231D40
	b _02220C5E
_02220AD8:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231DA0
	b _02220C5E
_02220AE4:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231DA0
	b _02220C5E
_02220AF0:
	ldr r0, [r4]
	add r1, sp, #0xa0
	mov r2, #4
	bl ov07_0221F9A8
	add r0, r4, #0
	bl ov07_02221664
	strb r0, [r4, #8]
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0xb4]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0xa0]
	cmp r0, #1
	bne _02220B18
	mov r0, #1
	strb r0, [r4, #8]
_02220B18:
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #0xb0]
	mul r1, r2
	str r1, [sp, #0xb0]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #0xb4]
	mul r0, r1
	str r0, [sp, #0xb4]
	b _02220C5E
_02220B2C:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231B90
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov07_02221734
	b _02220C5E
_02220B40:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231B90
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov07_02221734
	b _02220C5E
_02220B54:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231B90
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov07_022216A8
	b _02220C5E
_02220B6A:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov07_02231B90
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov07_022216A8
	b _02220C5E
_02220B80:
	add r2, sp, #0xb0
	bl ov07_02220938
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov07_02221734
	b _02220C5E
_02220B90:
	add r2, sp, #0xb0
	bl ov07_022208F8
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov07_02221734
	b _02220C5E
_02220BA0:
	ldr r0, _02220C94 ; =0x00002CE0
	str r0, [sp, #0xb0]
	mov r0, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	b _02220C5E
_02220BAC:
	ldr r0, _02220C98 ; =0xFFFFEC78
	str r0, [sp, #0xb0]
	ldr r0, _02220C9C ; =0xFFFFE890
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _02220C5E
_02220BBA:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov07_02231B90
	b _02220C5E
_02220BC6:
	ldr r6, _02220CA0 ; =ov07_022354E0
	add r3, sp, #0x70
	mov r2, #6
_02220BCC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220BCC
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	bl ov07_02231924
	lsl r1, r0, #3
	add r0, sp, #0x70
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x74
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _02220C5E
_02220BF0:
	ldr r6, _02220CA4 ; =ov07_02235578
	add r3, sp, #0x38
	mov r2, #7
_02220BF6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220BF6
	ldr r0, [r4]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220C0C
	mov r0, #6
	b _02220C14
_02220C0C:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	bl ov07_02231924
_02220C14:
	lsl r1, r0, #3
	add r0, sp, #0x38
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x3c
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _02220C5E
_02220C28:
	ldr r6, _02220CA8 ; =ov07_02235540
	add r3, sp, #0
	mov r2, #7
_02220C2E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02220C2E
	ldr r0, [r4]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220C44
	mov r0, #6
	b _02220C4C
_02220C44:
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	bl ov07_02231924
_02220C4C:
	lsl r1, r0, #3
	add r0, sp, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #4
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
_02220C5E:
	add r2, sp, #0xb0
	ldmia r2!, {r0, r1}
	add r4, #0x2c
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb0]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xbc
	pop {r3, r4, r5, r6, pc}
	nop
_02220C94: .word 0x00002CE0
_02220C98: .word 0xFFFFEC78
_02220C9C: .word 0xFFFFE890
_02220CA0: .word ov07_022354E0
_02220CA4: .word ov07_02235578
_02220CA8: .word ov07_02235540
	thumb_func_end ov07_02220978

	thumb_func_start ov07_02220CAC
ov07_02220CAC: ; 0x02220CAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x148
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r1]
	ldr r1, [r1, #0x24]
	bl ov07_02231924
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x28]
	bl ov07_02231924
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1a
	bls _02220CD6
	b _022214D0
_02220CD6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02220CE2: ; jump table
	.short _02220D18 - _02220CE2 - 2 ; case 0
	.short _02220D24 - _02220CE2 - 2 ; case 1
	.short _02220D24 - _02220CE2 - 2 ; case 2
	.short _0222143A - _02220CE2 - 2 ; case 3
	.short _02220D8C - _02220CE2 - 2 ; case 4
	.short _02220E46 - _02220CE2 - 2 ; case 5
	.short _02221178 - _02220CE2 - 2 ; case 6
	.short _02221178 - _02220CE2 - 2 ; case 7
	.short _02220F00 - _02220CE2 - 2 ; case 8
	.short _02220F00 - _02220CE2 - 2 ; case 9
	.short _02220F68 - _02220CE2 - 2 ; case 10
	.short _02220F68 - _02220CE2 - 2 ; case 11
	.short _02220FB6 - _02220CE2 - 2 ; case 12
	.short _02220FB6 - _02220CE2 - 2 ; case 13
	.short _02220FFE - _02220CE2 - 2 ; case 14
	.short _02220FFE - _02220CE2 - 2 ; case 15
	.short _02221046 - _02220CE2 - 2 ; case 16
	.short _02221046 - _02220CE2 - 2 ; case 17
	.short _022210E8 - _02220CE2 - 2 ; case 18
	.short _022210E8 - _02220CE2 - 2 ; case 19
	.short _02221130 - _02220CE2 - 2 ; case 20
	.short _02221130 - _02220CE2 - 2 ; case 21
	.short _0222144E - _02220CE2 - 2 ; case 22
	.short _022214D0 - _02220CE2 - 2 ; case 23
	.short _022214A2 - _02220CE2 - 2 ; case 24
	.short _0222145E - _02220CE2 - 2 ; case 25
	.short _02221470 - _02220CE2 - 2 ; case 26
_02220D18:
	mov r1, #0
	add r0, sp, #0x20
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	b _022214D0
_02220D24:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220D5E
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _02220D4C
	ldr r1, _02221080 ; =0xFFFFF2F8
	strh r1, [r0]
	mov r1, #0x73
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220D4C:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _02221084 ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220D5E:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221088 ; =ov07_02235CE0
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _0222108C ; =ov07_02235CE4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221090 ; =ov07_02235CE8
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220D8C:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220DC8
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221088 ; =ov07_02235CE0
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _0222108C ; =ov07_02235CE4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221090 ; =ov07_02235CE8
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220DC8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_0223192C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x28]
	bl ov07_0223192C
	cmp r4, r0
	bne _02220E14
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221088 ; =ov07_02235CE0
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _0222108C ; =ov07_02235CE4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221090 ; =ov07_02235CE8
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220E14:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_0223192C
	cmp r0, #3
	add r0, sp, #0x20
	bne _02220E38
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _02221094 ; =0x000005FC
	strh r1, [r0, #4]
	b _022214D0
_02220E38:
	ldr r1, _02221098 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _0222109C ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _02221094 ; =0x000005FC
	strh r1, [r0, #4]
	b _022214D0
_02220E46:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220E82
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221088 ; =ov07_02235CE0
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _0222108C ; =ov07_02235CE4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221090 ; =ov07_02235CE8
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220E82:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_0223192C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x28]
	bl ov07_0223192C
	cmp r4, r0
	bne _02220ECE
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221088 ; =ov07_02235CE0
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _0222108C ; =ov07_02235CE4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221090 ; =ov07_02235CE8
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220ECE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_0223192C
	cmp r0, #3
	add r0, sp, #0x20
	bne _02220EF2
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _02221094 ; =0x000005FC
	strh r1, [r0, #4]
	b _022214D0
_02220EF2:
	ldr r1, _02221098 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _0222109C ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _02221094 ; =0x000005FC
	strh r1, [r0, #4]
	b _022214D0
_02220F00:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220F3A
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _02220F28
	ldr r1, _022210A0 ; =0xFFFFF6E0
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220F28:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _02221084 ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220F3A:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022210A4 ; =ov07_02235620
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022210A8 ; =ov07_02235624
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022210AC ; =ov07_02235628
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220F68:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220F88
	ldr r1, _022210A0 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220F88:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022210B0 ; =ov07_022357D0
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022210A8 ; =ov07_02235624
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022210AC ; =ov07_02235628
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _022214D0
_02220FB6:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02220FD6
	ldr r1, _022210B4 ; =0xFFFFF488
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02220FD6:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022210B8 ; =ov07_02235B30
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022210BC ; =ov07_02235B34
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022210C0 ; =ov07_02235B38
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _022214D0
_02220FFE:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0222101E
	ldr r1, _022210A0 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_0222101E:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022210C4 ; =ov07_02235E90
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022210C8 ; =ov07_02235E94
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022210CC ; =ov07_02235E98
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _022214D0
_02221046:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221066
	ldr r1, _022210A0 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02221066:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022210D0 ; =ov07_02235980
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022210D4 ; =ov07_02235984
	b _022210D8
	.balign 4, 0
_02221080: .word 0xFFFFF2F8
_02221084: .word 0xFFFFFA60
_02221088: .word ov07_02235CE0
_0222108C: .word ov07_02235CE4
_02221090: .word ov07_02235CE8
_02221094: .word 0x000005FC
_02221098: .word 0xFFFFEF7C
_0222109C: .word 0xFFFFF558
_022210A0: .word 0xFFFFF6E0
_022210A4: .word ov07_02235620
_022210A8: .word ov07_02235624
_022210AC: .word ov07_02235628
_022210B0: .word ov07_022357D0
_022210B4: .word 0xFFFFF488
_022210B8: .word ov07_02235B30
_022210BC: .word ov07_02235B34
_022210C0: .word ov07_02235B38
_022210C4: .word ov07_02235E90
_022210C8: .word ov07_02235E94
_022210CC: .word ov07_02235E98
_022210D0: .word ov07_02235980
_022210D4: .word ov07_02235984
_022210D8:
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022213F8 ; =ov07_02235988
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _022214D0
_022210E8:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221108
	ldr r1, _022213FC ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02221108:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221400 ; =ov07_02236040
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02221404 ; =ov07_02236044
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221408 ; =ov07_02236048
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _022214D0
_02221130:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221150
	ldr r1, _0222140C ; =0xFFFFEF10
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _022214D0
_02221150:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02221410 ; =ov07_022361F0
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02221414 ; =ov07_022361F4
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02221418 ; =ov07_022361F8
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _022214D0
_02221178:
	ldr r4, _0222141C ; =ov07_022355B0
	add r3, sp, #0xd8
	mov r2, #0xe
_0222117E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222117E
	ldr r3, _02221420 ; =ov07_022354D0
	add r2, sp, #0x58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, sp, #0xc8
	mov r0, #0
	str r1, [sp, #0xc]
	add r1, sp, #0xb8
	mov ip, r0
	str r1, [sp, #0x1c]
	add r0, sp, #0xd8
	add r7, sp, #0xa8
	add r6, sp, #0x98
	add r5, sp, #0x88
	add r1, sp, #0x78
	add r2, sp, #0x68
_022211AA:
	ldr r4, [r0]
	ldr r3, [sp, #0xc]
	str r4, [r3]
	ldr r4, [r0, #0x10]
	ldr r3, [sp, #0x1c]
	str r4, [r3]
	ldr r3, [r0, #0x20]
	stmia r7!, {r3}
	ldr r3, [r0, #0x30]
	stmia r6!, {r3}
	ldr r3, [r0, #0x40]
	stmia r5!, {r3}
	ldr r3, [r0, #0x50]
	stmia r1!, {r3}
	ldr r3, [r0, #0x60]
	add r0, r0, #4
	stmia r2!, {r3}
	ldr r3, [sp, #0xc]
	add r3, r3, #4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r3, r3, #4
	str r3, [sp, #0x1c]
	mov r3, ip
	add r3, r3, #1
	mov ip, r3
	cmp r3, #4
	blt _022211AA
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221226
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x58
	str r0, [sp, #0x10]
	add r7, sp, #0xc8
	add r6, sp, #0xb8
	add r0, sp, #0xa8
	add r1, sp, #0x98
	add r2, sp, #0x88
	add r3, sp, #0x78
	add r4, sp, #0x68
_02221204:
	ldr r5, [sp, #0x10]
	ldr r5, [r5]
	stmia r7!, {r5}
	stmia r6!, {r5}
	stmia r0!, {r5}
	stmia r1!, {r5}
	stmia r2!, {r5}
	stmia r3!, {r5}
	stmia r4!, {r5}
	ldr r5, [sp, #0x10]
	add r5, r5, #4
	str r5, [sp, #0x10]
	ldr r5, [sp, #8]
	add r5, r5, #1
	str r5, [sp, #8]
	cmp r5, #4
	blt _02221204
_02221226:
	ldr r0, [sp, #0x18]
	cmp r0, #5
	bhi _02221244
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221238: ; jump table
	.short _02221244 - _02221238 - 2 ; case 0
	.short _02221254 - _02221238 - 2 ; case 1
	.short _02221280 - _02221238 - 2 ; case 2
	.short _022212B8 - _02221238 - 2 ; case 3
	.short _02221346 - _02221238 - 2 ; case 4
	.short _0222137E - _02221238 - 2 ; case 5
_02221244:
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _022214D0
_02221254:
	ldr r0, [sp, #0xd4]
	cmp r0, #1
	bne _0222126A
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _022214D0
_0222126A:
	ldr r0, [sp, #0xc8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_02221280:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02221296
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _022214D0
_02221296:
	cmp r0, #5
	add r0, sp, #0x20
	bne _022212AA
	ldr r1, [sp, #0x98]
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _022214D0
_022212AA:
	ldr r1, [sp, #0xa8]
	strh r1, [r0]
	ldr r1, [sp, #0xac]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xb0]
	strh r1, [r0, #4]
	b _022214D0
_022212B8:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _022212EA
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _022212D4
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _022214D0
_022212D4:
	ldr r0, [sp, #0xb8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_022212EA:
	cmp r0, #5
	bne _0222131A
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _0222130A
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_0222130A:
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _022214D0
_0222131A:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02221330
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _022214D0
_02221330:
	ldr r0, [sp, #0x78]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_02221346:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _0222135C
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _022214D0
_0222135C:
	cmp r0, #5
	add r0, sp, #0x20
	bne _02221370
	ldr r1, [sp, #0x68]
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _022214D0
_02221370:
	ldr r1, [sp, #0x88]
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _022214D0
_0222137E:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _022213B0
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _0222139A
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _022214D0
_0222139A:
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_022213B0:
	cmp r0, #2
	bne _022213E0
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _022213CA
	ldr r1, [sp, #0x98]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _022214D0
_022213CA:
	ldr r0, [sp, #0x98]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_022213E0:
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02221424
	ldr r1, [sp, #0x68]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _022214D0
	nop
_022213F8: .word ov07_02235988
_022213FC: .word 0xFFFFF6E0
_02221400: .word ov07_02236040
_02221404: .word ov07_02236044
_02221408: .word ov07_02236048
_0222140C: .word 0xFFFFEF10
_02221410: .word ov07_022361F0
_02221414: .word ov07_022361F4
_02221418: .word ov07_022361F8
_0222141C: .word ov07_022355B0
_02221420: .word ov07_022354D0
_02221424:
	ldr r0, [sp, #0x68]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	neg r1, r1
	strh r1, [r0, #4]
	b _022214D0
_0222143A:
	ldr r1, _022214F0 ; =0xFFFFFCE0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x4b
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x7d
	lsl r1, r1, #2
	strh r1, [r0, #4]
	b _022214D0
_0222144E:
	ldr r1, _022214F4 ; =0xFFFFF2AE
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, _022214F8 ; =0xFFFFF5AC
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _022214D0
_0222145E:
	ldr r1, _022214FC ; =0xFFFFF290
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x7a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _022214D0
_02221470:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_0223192C
	cmp r0, #3
	add r0, sp, #0x20
	bne _02221494
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _022214D0
_02221494:
	ldr r1, _02221500 ; =0xFFFFE890
	strh r1, [r0]
	ldr r1, _02221504 ; =0xFFFFF768
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _022214D0
_022214A2:
	ldr r4, _02221508 ; =ov07_02235510
	add r3, sp, #0x28
	mov r2, #6
_022214A8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022214A8
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r1, [r1, #0x24]
	bl ov07_02231924
	lsl r2, r0, #3
	add r0, sp, #0x28
	ldr r1, [r0, r2]
	add r0, sp, #0x20
	strh r1, [r0]
	add r1, sp, #0x2c
	ldr r1, [r1, r2]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
_022214D0:
	add r1, sp, #0x20
	ldr r0, [sp]
	ldrh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r2, [r1, #2]
	add r0, #0x52
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	add r0, #0x54
	str r0, [sp]
	strh r1, [r0]
	add sp, #0x148
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022214F0: .word 0xFFFFFCE0
_022214F4: .word 0xFFFFF2AE
_022214F8: .word 0xFFFFF5AC
_022214FC: .word 0xFFFFF290
_02221500: .word 0xFFFFE890
_02221504: .word 0xFFFFF768
_02221508: .word ov07_02235510
	thumb_func_end ov07_02220CAC

