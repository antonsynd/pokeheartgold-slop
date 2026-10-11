#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E96C8
	.public ov14_021E98AC
	.public ov14_021E9920
	.extern ov14_021E85BC

    .text

	.text
	thumb_func_start ov14_021E96C8
ov14_021E96C8: ; 0x021E96C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0x2f
	ldr r6, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02019B08
	add r5, r0, #0
	ldrh r0, [r6, #0x10]
	cmp r0, #0xa
	bls _021E96E6
	b _021E988A
_021E96E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E96F2: ; jump table
	.short _021E9708 - _021E96F2 - 2 ; case 0
	.short _021E972E - _021E96F2 - 2 ; case 1
	.short _021E9776 - _021E96F2 - 2 ; case 2
	.short _021E97DA - _021E96F2 - 2 ; case 3
	.short _021E97FC - _021E96F2 - 2 ; case 4
	.short _021E9844 - _021E96F2 - 2 ; case 5
	.short _021E988A - _021E96F2 - 2 ; case 6
	.short _021E988A - _021E96F2 - 2 ; case 7
	.short _021E988A - _021E96F2 - 2 ; case 8
	.short _021E988A - _021E96F2 - 2 ; case 9
	.short _021E97BC - _021E96F2 - 2 ; case 10
_021E9708:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #9
	bl CopyToBgTilemapRect
	b _021E988A
_021E972E:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #8
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	bl CopyToBgTilemapRect
	b _021E988A
_021E9776:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r3, #7
	str r3, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xa
	bl CopyToBgTilemapRect
	b _021E988A
_021E97BC:
	mov r0, #4
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r1, #0
	bl FillBgTilemapRect
_021E97DA:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #6
	bl CopyToBgTilemapRect
	b _021E988A
_021E97FC:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xc
	bl CopyToBgTilemapRect
	b _021E988A
_021E9844:
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #4
	bl CopyToBgTilemapRect
	mov r2, #0x20
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r0, #7
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	mov r3, #0xd
	bl CopyToBgTilemapRect
_021E988A:
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r6, #0x10]
	cmp r0, #0xa
	bne _021E98A2
	mov r0, #0
	add sp, #0x1c
	strh r0, [r6, #0x10]
	pop {r3, r4, r5, r6, pc}
_021E98A2:
	add r0, r0, #1
	strh r0, [r6, #0x10]
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021E96C8

	thumb_func_start ov14_021E98AC
ov14_021E98AC: ; 0x021E98AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r1, #0
	ldrh r0, [r4, #0x10]
	add r2, r1, #0
	add r3, r1, #0
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	bl FillBgTilemapRect
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	sub r0, r0, r1
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	add r3, r1, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021E9914
	mov r0, #0
	add sp, #0x10
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E9914:
	add r0, r0, #1
	strh r0, [r4, #0x10]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E98AC

	thumb_func_start ov14_021E9920
ov14_021E9920: ; 0x021E9920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021E9932
	cmp r0, #1
	beq _021E9956
	b _021E996C
_021E9932:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xf
	bl sub_02019978
	cmp r0, #0
	bne _021E996C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85BC
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E996C
_021E9956:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_02019978
	cmp r0, #0
	bne _021E996C
	mov r0, #0
	strh r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E996C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E9920

