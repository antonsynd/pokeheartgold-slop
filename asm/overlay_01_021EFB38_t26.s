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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F03F8
	.public ov01_021F0454
	.public ov01_021F0500

	.text

	.text
	thumb_func_start ov01_021F03F8
ov01_021F03F8: ; 0x021F03F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F044C ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _021F0450 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x44]
	mov r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x3c]
	bl ov01_021FB554
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x40]
	pop {r4, pc}
	nop
_021F044C: .word 0x04000048
_021F0450: .word 0xFFFF1FFF
	thumb_func_end ov01_021F03F8

	thumb_func_start ov01_021F0454
ov01_021F0454: ; 0x021F0454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x10]
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r3, [sp, #0x30]
	mov r2, #0
	lsl r3, r3, #5
	add r6, r0, #0
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, sp, #0x14
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	lsl r1, r4, #0x18
	ldr r2, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl LoadRectToBgTilemapRect
	ldr r1, [sp, #0x14]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl BgTilemapRectChangePalette
	add r0, r6, #0
	bl Heap_Free
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F0454

	thumb_func_start ov01_021F0500
ov01_021F0500: ; 0x021F0500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x38]
	add r5, r0, #0
	str r6, [sp, #0x38]
	ldr r6, [sp, #0x30]
	add r4, r1, #0
	str r6, [sp]
	ldr r6, [sp, #0x34]
	add r7, r2, #0
	str r6, [sp, #4]
	ldr r6, [sp, #0x38]
	str r3, [sp, #0x10]
	str r6, [sp, #8]
	ldr r6, [sp, #0x3c]
	str r6, [sp, #0xc]
	bl ov01_021F0454
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov01_021F0454
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	add r3, r0, #0
	mov r5, #0
	mov r0, #0xf
	mov ip, r5
	str r0, [sp, #0x14]
_021F0556:
	mov r4, #0
_021F0558:
	add r0, r4, r5
	lsl r0, r0, #0x10
	lsr r2, r0, #0xf
	ldr r0, [sp, #0x14]
	ldrh r1, [r3, r2]
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r6, r0, #0xf
	ldrh r0, [r3, r6]
	add r4, r4, #1
	strh r0, [r3, r2]
	strh r1, [r3, r6]
	ldrh r1, [r3, r2]
	ldr r0, _021F05C0 ; =0x0000FBFF
	add r7, r1, #0
	and r7, r0
	asr r1, r1, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r7
	strh r0, [r3, r2]
	ldrh r0, [r3, r6]
	ldr r1, _021F05C0 ; =0x0000FBFF
	add r2, r0, #0
	and r2, r1
	asr r1, r0, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r2
	strh r0, [r3, r6]
	cmp r4, #8
	blt _021F0558
	ldr r0, [sp, #0x14]
	add r5, #0x10
	add r0, #0x10
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x18
	blt _021F0556
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F05C0: .word 0x0000FBFF
	thumb_func_end ov01_021F0500

