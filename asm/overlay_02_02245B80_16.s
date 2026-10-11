#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_02246444
	.public ov02_02246490

	.text

	.text
	thumb_func_start ov02_02246444
ov02_02246444: ; 0x02246444
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldrb r1, [r4, #0xe]
	mov r0, #0
	bl SetBgPriority
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bl SetBgPriority
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #8]
	bl BgClearTilemapBufferAndCommit
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	mov r1, #0
	ldr r0, _0224648C ; =0x04000050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224648C: .word 0x04000050
	thumb_func_end ov02_02246444

	thumb_func_start ov02_02246490
ov02_02246490: ; 0x02246490
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _022464A2
	cmp r0, #1
	beq _022464B2
	b _022464F4
_022464A2:
	mov r0, #0
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	b _02246502
_022464B2:
	ldrb r1, [r4, #0xb]
	add r0, r1, #1
	strb r0, [r4, #0xb]
	cmp r1, #0
	bne _02246502
	ldrb r3, [r4, #0xd]
	mov r0, #0x1f
	mov r1, #2
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _02246508 ; =0x04000050
	mov r2, #5
	bl G2x_SetBlendAlpha_
	ldrb r1, [r4, #0xa]
	add r0, r1, #1
	strb r0, [r4, #0xa]
	cmp r1, #0xc
	ldrb r0, [r4, #0xd]
	bhs _022464DE
	add r0, r0, #1
	b _022464E0
_022464DE:
	sub r0, r0, #1
_022464E0:
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x18
	bls _02246502
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	b _02246502
_022464F4:
	mov r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #9]
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02246502:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02246508: .word 0x04000050
	thumb_func_end ov02_02246490

