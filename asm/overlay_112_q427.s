#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0E60
	.extern ov112_021FF2DC
	.public gApplication_TitleScreen

	.text

	.text
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

