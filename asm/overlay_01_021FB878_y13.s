#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021FB878.inc"
	.include "global.inc"
	.public Field3dModel_Unload
	.public ov01_021FBDFC

	.text

	.text
	thumb_func_start Field3dModel_Unload
Field3dModel_Unload: ; 0x021FBDA8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBDD8
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _021FBDF4 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _021FBDF4 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _021FBDF8 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
_021FBDD8:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FBDE2
	bl Heap_Free
_021FBDE2:
	mov r1, #0x10
	mov r0, #0
_021FBDE6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021FBDE6
	add sp, #8
	pop {r4, pc}
	nop
_021FBDF4: .word NNS_GfdDefaultFuncFreeTexVram
_021FBDF8: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end Field3dModel_Unload

	thumb_func_start ov01_021FBDFC
ov01_021FBDFC: ; 0x021FBDFC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBE2C
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _021FBE3C ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _021FBE3C ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _021FBE40 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
_021FBE2C:
	mov r1, #0x10
	mov r0, #0
_021FBE30:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021FBE30
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021FBE3C: .word NNS_GfdDefaultFuncFreeTexVram
_021FBE40: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov01_021FBDFC

