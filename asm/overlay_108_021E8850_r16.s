	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9230
	.public ov108_021E929C
	.public ov108_021E9304
	.extern ov108_021E979C
	.extern ov108_021E9850
	.extern ov108_021E9A08
	.extern ov108_021E9A60
	.extern ov108_021E9BD4
	.extern ov108_021E9C14
	.extern ov108_021E9C2C
	.extern ov108_021E9C3C
	.extern ov108_021E9CD0
	.extern ov108_021E9D30
	.extern ov108_021E9DE0
	.extern ov108_021E9E10
	.extern ov108_021E9E80
	.extern ov108_021E9EB8
	.extern ov108_021E9F04
	.extern ov108_021EA50C
	.extern ov108_021EA9C4
	.extern ov108_021EA9D8

	.text

	.text
	thumb_func_start ov108_021E9230
ov108_021E9230: ; 0x021E9230
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	bl Camera_New
	str r0, [r4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, _021E928C ; =0x0015B000
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _021E9290 ; =ov108_021EA9C4
	ldr r3, _021E9294 ; =0x000005C1
	add r0, #0xdc
	bl Camera_Init_FromTargetDistanceAndAngle
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	mov r0, #0x19
	mov r1, #0x4b
	ldr r2, [r4]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x10
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, _021E9298 ; =ov108_021EA9D8
	ldr r1, [r4]
	bl Camera_OffsetLookAtPosAndTarget
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E928C: .word 0x0015B000
_021E9290: .word ov108_021EA9C4
_021E9294: .word 0x000005C1
_021E9298: .word ov108_021EA9D8
	thumb_func_end ov108_021E9230

	thumb_func_start ov108_021E929C
ov108_021E929C: ; 0x021E929C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021E92AC
	cmp r1, #1
	beq _021E92D6
	b _021E92F4
_021E92AC:
	bl ov108_021E9850
	add r0, r4, #0
	bl ov108_021E9A60
	add r0, r4, #0
	bl ov108_021E9C14
	add r0, r4, #0
	bl ov108_021E9C3C
	add r0, r4, #0
	bl ov108_021E9D30
	add r0, r4, #0
	bl ov108_021E9E10
	add r0, r4, #0
	bl ov108_021E9EB8
	b _021E92F4
_021E92D6:
	bl ov108_021EA50C
	ldr r0, _021E9300 ; =ov108_021E979C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E92F4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	nop
_021E9300: .word ov108_021E979C
	thumb_func_end ov108_021E929C

	thumb_func_start ov108_021E9304
ov108_021E9304: ; 0x021E9304
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E9314
	cmp r0, #2
	beq _021E934C
	b _021E9374
_021E9314:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r4, #0
	bl ov108_021E9F04
	add r0, r4, #0
	bl ov108_021E9E80
	add r0, r4, #0
	bl ov108_021E9DE0
	add r0, r4, #0
	bl ov108_021E9CD0
	add r0, r4, #0
	bl ov108_021E9C2C
	add r0, r4, #0
	bl ov108_021E9BD4
	add r0, r4, #0
	bl ov108_021E9A08
	b _021E9374
_021E934C:
	bl sub_02021238
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E9380 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E9384 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E9374:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	nop
_021E9380: .word 0xFFFFE0FF
_021E9384: .word 0x04001000
	thumb_func_end ov108_021E9304

