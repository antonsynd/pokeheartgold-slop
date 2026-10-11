#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_022460CC
	.public ov02_022460FC
	.extern ov02_02245E04
	.extern ov02_02245E68
	.extern ov02_02245FD0
	.extern ov02_02253264

	.text

	.text
	thumb_func_start ov02_022460CC
ov02_022460CC: ; 0x022460CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl Heap_Alloc
	add r4, r0, #0
	bne _022460E6
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_022460E6:
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4, #4]
	strh r6, [r4, #0x10]
	mov r0, #4
	str r0, [r4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov02_022460CC

	thumb_func_start ov02_022460FC
ov02_022460FC: ; 0x022460FC
	push {r3, r4, lr}
	sub sp, #0xc
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _02246116
	cmp r0, #1
	beq _02246158
	cmp r0, #2
	beq _0224616A
	b _0224617C
_02246116:
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	ldr r2, _02246184 ; =ov02_02253264
	mul r0, r1
	ldr r1, [r4]
	add r0, r2, r0
	bl ov02_02245E04
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_CopyPositionVector
	ldr r0, [r4, #8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, #0x10
	bl Field3dObject_SetPosEx
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02246188 ; =ov02_02253264 + 8
	ldrh r0, [r0, r2]
	bl PlaySE
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	b _0224617C
_02246158:
	ldr r0, [r4, #8]
	bl ov02_02245FD0
	cmp r0, #0
	beq _0224617C
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	strh r0, [r4, #0xc]
	b _0224617C
_0224616A:
	ldr r0, [r4, #8]
	bl ov02_02245E68
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0224617C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02246184: .word ov02_02253264
_02246188: .word ov02_02253264 + 8
	thumb_func_end ov02_022460FC

