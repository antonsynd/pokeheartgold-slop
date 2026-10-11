	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222BB20
	.public ov43_0222BBB8
	.public ov43_0222BC78
	.public ov43_0222BD18
	.public ov43_0222BEEC
	.public ov43_0222BFA4
	.extern ov43_0222A9F4
	.extern ov43_0222AA70
	.extern ov43_0222AD00
	.extern ov43_0222AD40
	.extern ov43_0222AD74
	.extern ov43_0222AD98
	.extern ov43_0222C378
	.extern ov43_0222C844
	.extern ov43_0222C890
	.extern ov43_0222C9A4
	.extern ov43_0222EF60

	.text

	.text
	thumb_func_start ov43_0222BB20
ov43_0222BB20: ; 0x0222BB20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r7, r1, #0
	add r1, r4, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, #0x64
	mov r2, #5
	add r6, r3, #0
	bl ov43_0222A9F4
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	mov r3, #0x14
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x11
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	add r0, r5, #0
	add r0, #0xb8
	bl ScheduleWindowCopyToVram
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r1, r7, #0
	str r0, [sp]
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r4, #0
	bl ov43_0222C378
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov43_0222AD74
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov43_0222AD98
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222BB20

	thumb_func_start ov43_0222BBB8
ov43_0222BBB8: ; 0x0222BBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov43_0222AA70
	add r0, r5, #0
	add r0, #0xb8
	bl ClearWindowTilemapAndScheduleTransfer
	mov r7, #2
	mov r6, #0
	add r5, #8
	lsl r7, r7, #8
_0222BBD6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r7
	bl ov43_0222C9A4
	add r6, r6, #1
	add r5, #0x38
	cmp r6, #3
	blt _0222BBD6
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xff
	bl ov43_0222AD74
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	bl ov43_0222AD98
	add r0, r4, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0x11
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r3, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r1, r0, #0
	str r2, [sp]
	mov r3, #4
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #0
	add r3, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222BBB8

	thumb_func_start ov43_0222BC78
ov43_0222BC78: ; 0x0222BC78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r3, #0
	bne _0222BC9C
	ldr r0, _0222BD14 ; =0x000005DD
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r4, #0
	mov r3, #1
	bl ov43_0222C890
	mov r0, #3
	pop {r3, r4, r5, pc}
_0222BC9C:
	cmp r3, #5
	bne _0222BCEA
	mov r0, #4
	ldrsh r2, [r5, r0]
	cmp r2, #8
	bne _0222BCC2
	ldr r0, _0222BD14 ; =0x000005DD
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r4, #0
	mov r3, #1
	bl ov43_0222C890
	mov r0, #3
	pop {r3, r4, r5, pc}
_0222BCC2:
	mov r0, #0
	ldrsh r3, [r5, r0]
	ldr r1, [r1, #0x10]
	lsl r3, r3, #3
	add r2, r2, r3
	cmp r1, r2
	bls _0222BD10
	ldr r0, _0222BD14 ; =0x000005DD
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r4, #0
	mov r3, #1
	bl ov43_0222C890
	mov r0, #4
	pop {r3, r4, r5, pc}
_0222BCEA:
	cmp r3, #1
	bne _0222BCFC
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov43_0222AD40
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222BCFC:
	cmp r3, #2
	bne _0222BD0E
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov43_0222AD40
	mov r0, #2
	pop {r3, r4, r5, pc}
_0222BD0E:
	mov r0, #0
_0222BD10:
	pop {r3, r4, r5, pc}
	nop
_0222BD14: .word 0x000005DD
	thumb_func_end ov43_0222BC78

	thumb_func_start ov43_0222BD18
ov43_0222BD18: ; 0x0222BD18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0222BEE0 ; =gSystem
	add r6, r1, #0
	ldr r1, [r0, #0x48]
	ldr r0, _0222BEE4 ; =0x00000CF3
	add r7, r2, #0
	tst r0, r1
	beq _0222BD30
	mov r0, #0
	str r0, [r6]
_0222BD30:
	ldr r0, _0222BEE0 ; =gSystem
	mov r2, #1
	ldr r1, [r0, #0x48]
	tst r2, r1
	beq _0222BD4A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #5
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BD4A:
	mov r2, #2
	tst r1, r2
	beq _0222BD72
	mov r0, #8
	strh r0, [r5, #4]
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r7, #0
	bl ov43_0222C844
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BD72:
	mov r1, #4
	ldrsh r1, [r5, r1]
	mov r4, #0
	lsl r2, r1, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	add r2, r4, #0
	str r2, [sp, #4]
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _0222BDBA
	cmp r1, #8
	bne _0222BDA0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r4, #1
	add r1, r4, #0
	strh r0, [r5, #4]
	add r0, r7, #0
	bl ov43_0222AD00
	b _0222BE62
_0222BDA0:
	cmp r1, #4
	bge _0222BDB0
	cmp r1, #0
	ble _0222BE62
	sub r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDB0:
	ble _0222BE62
	sub r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDBA:
	mov r0, #0x80
	tst r0, r2
	beq _0222BDEC
	cmp r1, #3
	beq _0222BDC8
	cmp r1, #7
	bne _0222BDD0
_0222BDC8:
	mov r0, #8
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDD0:
	cmp r1, #4
	bge _0222BDE0
	cmp r1, #3
	bge _0222BE62
	add r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDE0:
	cmp r1, #7
	bge _0222BE62
	add r0, r1, #1
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BDEC:
	mov r0, #0x20
	tst r0, r2
	beq _0222BE12
	cmp r1, #8
	beq _0222BE62
	cmp r1, #4
	bge _0222BE0A
	add r0, r1, #4
	mov r4, #1
	strh r0, [r5, #4]
	add r0, r4, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp]
	b _0222BE62
_0222BE0A:
	sub r0, r1, #4
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BE12:
	mov r3, #0x10
	add r0, r2, #0
	tst r0, r3
	beq _0222BE38
	cmp r1, #8
	beq _0222BE62
	cmp r1, #4
	bge _0222BE2A
	add r0, r1, #4
	strh r0, [r5, #4]
	mov r4, #1
	b _0222BE62
_0222BE2A:
	sub r0, r1, #4
	mov r4, #1
	strh r0, [r5, #4]
	add r0, r4, #0
	str r0, [sp, #4]
	str r0, [sp]
	b _0222BE62
_0222BE38:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0222BE62
	beq _0222BE50
	lsl r1, r3, #5
	tst r1, r2
	beq _0222BE50
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	str r0, [sp]
	b _0222BE62
_0222BE50:
	cmp r0, #0
	beq _0222BE62
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r2
	beq _0222BE62
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp]
_0222BE62:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0222BEBC
	ldr r0, [sp]
	cmp r0, #0
	beq _0222BE96
	mov r0, #0
	ldrsh r1, [r5, r0]
	mov r3, #2
	strh r1, [r5, #2]
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BE96:
	mov r0, #0
	ldrsh r1, [r5, r0]
	strh r1, [r5, #2]
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0222BEAC
	add r0, r0, #4
	strh r0, [r5]
_0222BEAC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov43_0222BC78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222BEBC:
	cmp r4, #1
	bne _0222BED8
	ldr r0, _0222BEE8 ; =0x000005E5
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r7, #0
	bl ov43_0222C844
	ldr r0, [sp, #8]
	strh r0, [r5, #6]
_0222BED8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222BEE0: .word gSystem
_0222BEE4: .word 0x00000CF3
_0222BEE8: .word 0x000005E5
	thumb_func_end ov43_0222BD18

	thumb_func_start ov43_0222BEEC
ov43_0222BEEC: ; 0x0222BEEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222BF9C ; =ov43_0222EF60
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222BF08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222BF08:
	cmp r0, #8
	bhi _0222BF34
	mov r1, #1
	str r1, [r6]
	strh r0, [r5, #4]
	ldr r0, _0222BFA0 ; =0x000005E5
	bl PlaySE
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r4, #0
	bl ov43_0222C844
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #5
	bl ov43_0222BC78
	pop {r3, r4, r5, r6, r7, pc}
_0222BF34:
	cmp r0, #9
	beq _0222BF4C
	cmp r0, #0xa
	bne _0222BF40
	mov r1, #1
	b _0222BF4C
_0222BF40:
	mov r1, #0
	ldrsh r1, [r5, r1]
	sub r0, #0xb
	sub r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_0222BF4C:
	cmp r1, #0
	bne _0222BF54
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222BF54:
	mov r0, #1
	str r0, [r6]
	mov r0, #0
	ldrsh r2, [r5, r0]
	strh r2, [r5, #2]
	ldrsh r2, [r5, r0]
	add r2, r2, r1
	strh r2, [r5]
	cmp r1, #0
	ldrsh r0, [r5, r0]
	blt _0222BF86
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #2
	bl ov43_0222BC78
	pop {r3, r4, r5, r6, r7, pc}
_0222BF86:
	cmp r0, #0
	bge _0222BF8E
	add r0, r0, #4
	strh r0, [r5]
_0222BF8E:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #1
	bl ov43_0222BC78
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222BF9C: .word ov43_0222EF60
_0222BFA0: .word 0x000005E5
	thumb_func_end ov43_0222BEEC

	thumb_func_start ov43_0222BFA4
ov43_0222BFA4: ; 0x0222BFA4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r3, #0
	str r3, [sp]
	add r3, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov43_0222BEEC
	ldr r1, [sp]
	cmp r1, #0
	beq _0222BFC6
	mov r1, #1
	add sp, #4
	str r1, [r4]
	pop {r3, r4, r5, r6, pc}
_0222BFC6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov43_0222BD18
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov43_0222BFA4

