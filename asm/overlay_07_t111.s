	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221EF54
	.public ov07_0221F024
	.extern ov07_0221BFC0
	.extern ov07_0221DDB0
	.extern ov07_0221DF1C
	.extern ov07_0221ED14
	.extern ov07_0221FB7C
	.extern ov07_0223192C

	.text

	.text
	thumb_func_start ov07_0221EF54
ov07_0221EF54: ; 0x0221EF54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov07_0221DF1C
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r4, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	mov r0, #3
	bl ToggleBgLayer
	add r0, r5, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0]
	mov r1, #3
	add r3, r2, #0
	bl SetBgControlParam
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221FB7C
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	add r2, r5, #0
	str r0, [sp, #0xc]
	add r2, #0xc4
	ldr r2, [r2]
	mov r0, #7
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	add r0, r4, #0
	mov r1, #1
	bl ov07_0221FB7C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	ldr r3, [r5]
	mov r1, #7
	bl PaletteData_LoadNarc
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #7
	mov r6, #2
	bl ov07_0221DDB0
	cmp r0, #1
	bne _0221EFEC
	mov r6, #3
_0221EFEC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov07_0221FB7C
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	add r5, #0xc4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #7
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #3
	mov r1, #1
	bl ToggleBgLayer
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov07_0221EF54

	thumb_func_start ov07_0221F024
ov07_0221F024: ; 0x0221F024
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov07_0221DF1C
	add r4, r0, #0
	ldr r0, [r5, #0x18]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1]
	str r0, [sp]
	add r0, r1, #4
	str r0, [r5, #0x18]
	ldr r7, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r6, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _0221F056
	str r6, [r4, #0x10]
	b _0221F06E
_0221F056:
	add r0, r5, #0
	add r5, #0xc0
	ldr r1, [r5]
	ldrh r1, [r1, #0x16]
	bl ov07_0223192C
	cmp r0, #3
	bne _0221F06A
	str r7, [r4, #0x10]
	b _0221F06E
_0221F06A:
	ldr r0, [sp]
	str r0, [r4, #0x10]
_0221F06E:
	ldr r0, _0221F07C ; =ov07_0221ED14
	ldr r2, _0221F080 ; =0x0000044C
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221F07C: .word ov07_0221ED14
_0221F080: .word 0x0000044C
	thumb_func_end ov07_0221F024

