	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C024
	.public ov43_0222C148
	.public ov43_0222C228
	.extern ov43_0222AB20
	.extern ov43_0222AD00
	.extern ov43_0222AD20
	.extern ov43_0222C378
	.extern ov43_0222C550
	.extern ov43_0222C5D8
	.extern ov43_0222C600
	.extern ov43_0222C620
	.extern ov43_0222C630
	.extern ov43_0222C890
	.extern ov43_0222C9A4
	.extern ov43_0222ED9C
	.extern ov43_0222F0EC
	.extern ov43_0222F0FC

	.text

	.text
	thumb_func_start ov43_0222C024
ov43_0222C024: ; 0x0222C024
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0xb0
	ldrsh r0, [r5, r0]
	str r1, [sp, #0xc]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #8
	blt _0222C0B4
	mov r2, #0
	ldr r0, [r4]
	mov r1, #2
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r2, #0
	ldr r0, [r4]
	mov r1, #3
	add r3, r2, #0
	bl ScheduleSetBgPosText
	ldr r3, _0222C140 ; =ov43_0222F0FC
	add r2, sp, #0x10
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	add r0, #8
	add r1, r7, #0
	bl GF_SetG2dRendererSurface
	add r0, r5, #0
	add r0, #0xb2
	ldrh r0, [r0]
	cmp r0, #2
	bne _0222C076
	mov r2, #2
	b _0222C078
_0222C076:
	mov r2, #1
_0222C078:
	mov r0, #0x38
	add r1, r5, #0
	mul r0, r2
	mov r2, #2
	add r1, #8
	lsl r2, r2, #8
	add r0, r1, r0
	add r1, r4, #0
	add r2, r4, r2
	bl ov43_0222C9A4
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r3, #0
	ldr r1, [sp, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r4, #0
	bl ov43_0222C378
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD20
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222C0B4:
	lsl r1, r0, #8
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r6, r0, #3
	add r0, r5, #0
	add r0, #0xb2
	ldrh r0, [r0]
	cmp r0, #2
	bne _0222C0CA
	neg r6, r6
_0222C0CA:
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl ScheduleSetBgPosText
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	add r3, r6, #0
	bl ScheduleSetBgPosText
	ldr r3, _0222C140 ; =ov43_0222F0FC
	add r2, sp, #0x10
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [sp, #0x10]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #8
	add r1, r7, #0
	bl GF_SetG2dRendererSurface
	mov r0, #0xb0
	ldrsh r3, [r5, r0]
	mov r0, #0x1f
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	beq _0222C130
	add r2, r3, r2
	asr r0, r2, #1
	lsl r1, r0, #2
	ldr r0, _0222C144 ; =ov43_0222F0EC
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _0222C130
	mov r2, #0
	mov r3, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r1, r4, #0
	blx r6
_0222C130:
	mov r0, #0xb0
	ldrsh r0, [r5, r0]
	add r5, #0xb0
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C140: .word ov43_0222F0FC
_0222C144: .word ov43_0222F0EC
	thumb_func_end ov43_0222C024

	thumb_func_start ov43_0222C148
ov43_0222C148: ; 0x0222C148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	str r3, [sp, #0x18]
	bl sub_0202C6F4
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl ov43_0222C620
	str r0, [sp, #0x20]
	add r7, r5, #0
	ldr r1, [sp, #0x20]
	add r7, #0x18
	ldrb r1, [r7, r1]
	ldr r0, [sp, #0x1c]
	mov r2, #8
	bl sub_0202C090
	str r0, [sp, #0x24]
	add r0, sp, #0x28
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r1, _0222C220 ; =ov43_0222ED9C
	add r0, sp, #0x28
	ldrh r2, [r1, #4]
	strh r2, [r0]
	ldrh r2, [r1, #6]
	strh r2, [r0, #2]
	ldrh r2, [r1, #8]
	strh r2, [r0, #4]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #6]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, [sp, #0x24]
	cmp r0, #2
	bne _0222C1AC
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x34]
	b _0222C1B4
_0222C1AC:
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	str r0, [sp, #0x34]
_0222C1B4:
	ldr r0, [r4]
	mov r1, #4
	str r0, [sp, #0x38]
	add r0, sp, #0x28
	strb r1, [r0, #0x14]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, _0222C224 ; =ov43_0222C630
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r2, [r5]
	ldr r0, [r4, #0x5c]
	lsl r2, r2, #0x18
	add r1, sp, #0x28
	lsr r2, r2, #0x18
	mov r3, #0xd
	bl TouchscreenListMenu_CreateWithCallback
	add r1, r6, #0
	add r1, #0xec
	str r0, [r1]
	ldr r2, [sp, #0x20]
	ldr r1, [r5, #4]
	ldrb r2, [r7, r2]
	ldr r3, [sp, #0x18]
	add r0, r4, #0
	bl ov43_0222AB20
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xc
	bl ov43_0222C550
	add r0, r4, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #8
	mov r2, #0
	mov r3, #0x3d
	bl StartBrightnessTransition
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C220: .word ov43_0222ED9C
_0222C224: .word ov43_0222C630
	thumb_func_end ov43_0222C148

	thumb_func_start ov43_0222C228
ov43_0222C228: ; 0x0222C228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bl ov43_0222C5D8
	cmp r0, #0
	bne _0222C23C
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0222C23C:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl TouchscreenListMenu_HandleInput
	add r4, r0, #0
	cmp r4, #3
	beq _0222C25E
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0222C25E
	add r0, r0, #1
	cmp r4, r0
	bne _0222C268
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0222C25E:
	add r0, r6, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r4, #2
_0222C268:
	add r0, r5, #0
	bl ov43_0222C600
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl TouchscreenListMenu_WasLastInputTouch
	str r0, [r7]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl TouchscreenListMenu_Destroy
	cmp r4, #2
	bne _0222C2A0
	add r0, r6, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	mov r3, #0
	bl ov43_0222C890
_0222C2A0:
	mov r0, #0
	mov r1, #0x3d
	mov r2, #1
	bl SetBlendBrightness
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222C228

