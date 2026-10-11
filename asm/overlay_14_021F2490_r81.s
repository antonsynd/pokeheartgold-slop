#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3E70
	.extern ov14_021F2A18
	.extern ov14_021F81A8
	.extern ov14_021F81DC
	.extern ov14_021F8278
	.extern ov14_021F82AC
	.extern ov14_021F82E0
	.extern ov14_021F8314
	.extern ov14_021F8348
	.extern ov14_021F837C
	.extern ov14_021F83B0

    .text

	.text
	thumb_func_start ov14_021F3E70
ov14_021F3E70: ; 0x021F3E70
	push {r4, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021F3F48 ; =ov14_021F81A8
	bl SpriteSystem_NewSprite
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F4C ; =ov14_021F81DC
	bl SpriteSystem_NewSprite
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xc
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F50 ; =ov14_021F8278
	bl SpriteSystem_NewSprite
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x18
	sub r1, #0x14
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F54 ; =ov14_021F82AC
	bl SpriteSystem_NewSprite
	mov r1, #0x31
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x1c
	sub r1, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F58 ; =ov14_021F82E0
	bl SpriteSystem_NewSprite
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x20
	sub r1, #0x1c
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F5C ; =ov14_021F8314
	bl SpriteSystem_NewSprite
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x24
	sub r1, #0x20
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F60 ; =ov14_021F8348
	bl SpriteSystem_NewSprite
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F64 ; =ov14_021F837C
	bl SpriteSystem_NewSprite
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x2c
	sub r1, #0x28
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, _021F3F68 ; =ov14_021F83B0
	bl SpriteSystem_NewSprite
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov14_021F2A18
	pop {r4, pc}
	nop
_021F3F48: .word ov14_021F81A8
_021F3F4C: .word ov14_021F81DC
_021F3F50: .word ov14_021F8278
_021F3F54: .word ov14_021F82AC
_021F3F58: .word ov14_021F82E0
_021F3F5C: .word ov14_021F8314
_021F3F60: .word ov14_021F8348
_021F3F64: .word ov14_021F837C
_021F3F68: .word ov14_021F83B0
	thumb_func_end ov14_021F3E70

