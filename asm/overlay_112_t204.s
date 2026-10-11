#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED0D0
	.public ov112_021ED13C
	.extern ov112_021E9290
	.extern ov112_021EA670
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED0D0
ov112_021ED0D0: ; 0x021ED0D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021ED120 ; =0x0001E430
	ldr r2, _021ED124 ; =0x0001D7AC
	ldr r0, [r4, r0]
	add r1, r4, r2
	sub r2, #0x10
	add r2, r4, r2
	mov r3, #0
	bl ov112_021E9290
	ldr r0, _021ED128 ; =0x0001E550
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetOamMode
	add r0, r4, #0
	mov r1, #8
	bl ov112_021EA670
	mov r1, #0
	ldr r0, _021ED12C ; =0x0001F2D6
	mov r2, #8
	strh r1, [r4, r0]
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, _021ED130 ; =0x04000050
	add r3, r1, #0
	bl G2x_SetBlendAlpha_
	ldr r0, _021ED134 ; =ov112_021ED13C
	add r1, r4, #0
	mov r2, #2
	bl SysTask_CreateOnMainQueue
	ldr r1, _021ED138 ; =0x0001F2D8
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021ED120: .word 0x0001E430
_021ED124: .word 0x0001D7AC
_021ED128: .word 0x0001E550
_021ED12C: .word 0x0001F2D6
_021ED130: .word 0x04000050
_021ED134: .word ov112_021ED13C
_021ED138: .word 0x0001F2D8
	thumb_func_end ov112_021ED0D0

	thumb_func_start ov112_021ED13C
ov112_021ED13C: ; 0x021ED13C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021ED178 ; =0x0001F2D6
	add r4, r1, #0
	ldrh r1, [r4, r0]
	add r1, r1, #2
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	cmp r1, #0x1f
	blo _021ED154
	mov r1, #0x1f
	strh r1, [r4, r0]
_021ED154:
	ldr r0, _021ED178 ; =0x0001F2D6
	mov r1, #0
	ldrh r3, [r4, r0]
	mov r0, #0x1f
	mov r2, #8
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021ED17C ; =0x04000050
	bl G2x_SetBlendAlpha_
	ldr r0, _021ED178 ; =0x0001F2D6
	ldrh r0, [r4, r0]
	cmp r0, #0x1f
	bne _021ED176
	add r0, r5, #0
	bl SysTask_Destroy
_021ED176:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ED178: .word 0x0001F2D6
_021ED17C: .word 0x04000050
	thumb_func_end ov112_021ED13C

