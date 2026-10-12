#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0DF4
	.public ov112_021F0E14
	.public ov112_021F0E60
	.public ov112_021F0EB4
	.public ov112_021F0EFC
	.public ov112_021F0F48
	.extern ov112_021FF2DC
	.extern ov112_021FF370
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0DF4
ov112_021F0DF4: ; 0x021F0DF4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F0E10 ; =ov112_021FF370
	add r3, sp, #0
	mov r2, #5
_021F0DFE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F0DFE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F0E10: .word ov112_021FF370
	thumb_func_end ov112_021F0DF4

	thumb_func_start ov112_021F0E14
ov112_021F0E14: ; 0x021F0E14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, #0
	ble _021F0E26
	ldr r1, _021F0E58 ; =0x000001ED
	cmp r5, r1
	ble _021F0E2A
_021F0E26:
	mov r4, #1
	b _021F0E52
_021F0E2A:
	bl SpeciesToOverworldModelIndexOffset
	ldr r1, _021F0E5C ; =0x00000129
	add r4, r0, r1
	add r0, r5, #0
	bl OverworldModelLookupHasFemaleForm
	cmp r0, #0
	beq _021F0E44
	cmp r7, #1
	bne _021F0E52
	add r4, r4, #1
	b _021F0E52
_021F0E44:
	add r0, r5, #0
	bl OverworldModelLookupFormCount
	cmp r6, r0
	ble _021F0E50
	mov r6, #0
_021F0E50:
	add r4, r4, r6
_021F0E52:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0E58: .word 0x000001ED
_021F0E5C: .word 0x00000129
	thumb_func_end ov112_021F0E14

	thumb_func_start ov112_021F0E60
ov112_021F0E60: ; 0x021F0E60
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021F0EA8 ; =ov112_021FF2DC
	add r4, r0, #0
	ldrb r3, [r2, #0xb]
	add r1, sp, #0
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #0xc]
	strb r3, [r1, #1]
	ldrb r3, [r2, #0xd]
	ldrb r2, [r2, #0xe]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0E8E
	ldr r0, _021F0EAC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _021F0EA0
_021F0E8E:
	ldr r0, _021F0EB0 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x78]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021F0EA0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F0EA8: .word ov112_021FF2DC
_021F0EAC: .word gSystem
_021F0EB0: .word 0x000005DC
	thumb_func_end ov112_021F0E60

	thumb_func_start ov112_021F0EB4
ov112_021F0EB4: ; 0x021F0EB4
	push {r3, lr}
	ldr r1, _021F0EF0 ; =0x0000013D
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021F0EEA
	ldr r2, _021F0EF4 ; =ov112_021FF2DC
	add r1, sp, #0
	ldrb r3, [r2, #3]
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #4]
	strb r3, [r1, #1]
	ldrb r3, [r2, #5]
	ldrb r2, [r2, #6]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0EE6
	ldr r0, _021F0EF8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021F0EEA
_021F0EE6:
	mov r0, #1
	pop {r3, pc}
_021F0EEA:
	mov r0, #0
	pop {r3, pc}
	nop
_021F0EF0: .word 0x0000013D
_021F0EF4: .word ov112_021FF2DC
_021F0EF8: .word gSystem
	thumb_func_end ov112_021F0EB4

	thumb_func_start ov112_021F0EFC
ov112_021F0EFC: ; 0x021F0EFC
	push {r3, lr}
	ldr r1, _021F0F3C ; =0x0000013D
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r0, [r0, r1]
	sub r0, r0, #1
	cmp r2, r0
	bge _021F0F38
	ldr r2, _021F0F40 ; =ov112_021FF2DC
	add r1, sp, #0
	ldrb r3, [r2, #7]
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #8]
	strb r3, [r1, #1]
	ldrb r3, [r2, #9]
	ldrb r2, [r2, #0xa]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0F34
	ldr r0, _021F0F44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021F0F38
_021F0F34:
	mov r0, #1
	pop {r3, pc}
_021F0F38:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F0F3C: .word 0x0000013D
_021F0F40: .word ov112_021FF2DC
_021F0F44: .word gSystem
	thumb_func_end ov112_021F0EFC

	thumb_func_start ov112_021F0F48
ov112_021F0F48: ; 0x021F0F48
	cmp r1, #0
	beq _021F0F56
	add r0, #0x85
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_021F0F56:
	add r0, #0x86
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov112_021F0F48

