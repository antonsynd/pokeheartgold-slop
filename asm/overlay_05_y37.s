	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221D240
	.public ov05_0221D318
	.extern ov05_0221CD24
	.extern ov05_0221CDC4
	.extern ov05_0221D3AC
	.extern ov05_0221D4D0
	.extern ov05_0221D5DC
	.extern ov05_0221D664
	.extern ov05_0221EB04
	.extern ov05_0221EDA4

	.text

	.text
	thumb_func_start ov05_0221D240
ov05_0221D240: ; 0x0221D240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _0221D310 ; =ov05_0221EB04
	add r3, sp, #0
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #0x15
	bl ov05_0221CD24
	add r0, r6, #0
	bl ov05_0221D318
	ldr r4, _0221D314 ; =ov05_0221EDA4
	mov r7, #0
	add r5, r6, #0
_0221D26E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov05_0221CDC4
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #0xc
	blo _0221D26E
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov05_0221D3AC
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov05_0221D3AC
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov05_0221D3AC
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov05_0221D3AC
	add r0, r6, #0
	bl ov05_0221D4D0
	mov r0, #0x21
	mov r1, #0xc
	lsl r0, r0, #4
	str r1, [r6, r0]
	add r0, r6, #0
	bl ov05_0221D5DC
	mov r1, #0
	mov r2, #0xff
	add r0, r6, #0
	mvn r2, r2
	add r3, r1, #0
	bl ov05_0221D664
	mov r2, #0xff
	add r0, r6, #0
	mov r1, #1
	mvn r2, r2
	mov r3, #0
	bl ov05_0221D664
	mov r1, #2
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfe
	mov r3, #0
	bl ov05_0221D664
	mov r1, #3
	add r2, r1, #0
	add r0, r6, #0
	add r2, #0xfd
	mov r3, #0
	bl ov05_0221D664
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221D310: .word ov05_0221EB04
_0221D314: .word ov05_0221EDA4
	thumb_func_end ov05_0221D240

	thumb_func_start ov05_0221D318
ov05_0221D318: ; 0x0221D318
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #8
	ldr r1, [r1, #0x24]
	bl NARC_New
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0221D3A8 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xd0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0221D3A8 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x68
	mov r3, #8
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0221D3A8 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xcf
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _0221D3A8 ; =0x0000B807
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0xd1
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0221D3A8: .word 0x0000B807
	thumb_func_end ov05_0221D318

