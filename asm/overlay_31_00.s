	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225D520
	.extern _0225EE40
	.extern ov31_0225D60C
	.extern ov31_0225D684
	.extern ov31_0225D7A0
	.extern ov31_0225DAC4
	.extern ov31_0225DB38
	.extern ov31_0225DD14
	.extern ov31_0225DE84
	.extern ov31_0225DF98

	.text

	.text
	thumb_func_start ov31_0225D520
ov31_0225D520: ; 0x0225D520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #3
	str r2, [sp]
	mov r1, #8
	lsl r2, r0, #0xf
	str r3, [sp, #4]
	bl Heap_Create
	mov r1, #0x19
	ldr r0, _0225D5FC ; =ov31_0225D7A0
	lsl r1, r1, #4
	mov r2, #0xa
	mov r3, #8
	bl CreateSysTaskAndEnvironment
	add r5, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	str r5, [r4, #8]
	mov r1, #0
	str r1, [r4]
	str r6, [r4, #4]
	ldr r0, [sp]
	str r7, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x30]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfile
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl Save_Pokeathlon_Get
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov31_0225DAC4
	add r0, r4, #0
	bl ov31_0225DB38
	add r0, r4, #0
	bl ov31_0225D60C
	add r0, r4, #0
	mov r1, #0
	bl ov31_0225D684
	add r0, r4, #0
	bl ov31_0225DE84
	add r0, r4, #0
	bl ov31_0225DF98
	add r0, r4, #0
	bl ov31_0225DD14
	ldr r0, [r4, #0x14]
	bl ov03_022581BC
	ldr r2, _0225D600 ; =0x04001000
	ldr r0, _0225D604 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _0225D608 ; =_0225EE40
	bl TextFlags_SetFastForwardTouchButtonHitbox
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D5FC: .word ov31_0225D7A0
_0225D600: .word 0x04001000
_0225D604: .word 0xFFFF1FFF
_0225D608: .word _0225EE40
	thumb_func_end ov31_0225D520

