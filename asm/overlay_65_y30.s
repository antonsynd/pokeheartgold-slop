#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DC34
	.extern ov65_0221FE6C

	.text

	.text
	thumb_func_start ov65_0221DC34
ov65_0221DC34: ; 0x0221DC34
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	bge _0221DCAA
	ldr r0, _0221DCAC ; =ov65_0221FE6C
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0221DCAA
	cmp r0, #6
	bge _0221DCAA
	lsl r0, r0, #4
	ldr r1, _0221DCB0 ; =0x0000069C
	add r0, r4, r0
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0221DCAA
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	lsl r0, r0, #4
	add r2, r4, r0
	add r0, r1, #5
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0221DCAA
	ldrh r0, [r2, r1]
	add r1, r1, #6
	ldrb r2, [r2, r1]
	ldr r1, _0221DCB4 ; =0x000001B9
	cmp r0, r1
	bne _0221DC8E
	ldr r0, [r4, #4]
	bl Save_Chatot_Get
	mov r1, #0
	mov r2, #0x64
	add r3, r1, #0
	bl sub_02006E4C
	b _0221DC96
_0221DC8E:
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl PlayCry
_0221DC96:
	ldr r0, _0221DCB8 ; =0x0000040C
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0221DCB8 ; =0x0000040C
	mov r1, #4
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
_0221DCAA:
	pop {r4, pc}
	.balign 4, 0
_0221DCAC: .word ov65_0221FE6C
_0221DCB0: .word 0x0000069C
_0221DCB4: .word 0x000001B9
_0221DCB8: .word 0x0000040C
	thumb_func_end ov65_0221DC34

