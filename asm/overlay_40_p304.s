	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02238838
	.extern ov40_0222BF80
	.extern ov40_0222D980
	.extern ov40_0222DA00
	.extern ov40_0222EED0
	.extern ov40_0222EFD8
	.extern ov40_0222F5EC
	.extern ov40_0222F740
	.extern ov40_0222F858
	.extern ov40_0222F9E0
	.extern ov40_0222FA5C
	.extern ov40_0222FA88
	.extern ov40_0223077C
	.extern ov40_02230964
	.extern ov40_02237008
	.extern ov40_022371A0
	.extern ov40_02237410
	.extern ov40_02237564
	.extern ov40_02237AC0
	.extern ov40_02237C54
	.extern ov40_02237C9C

	.text

	.text
	thumb_func_start ov40_02238838
ov40_02238838: ; 0x02238838
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02238854
	cmp r0, #1
	beq _0223889A
	cmp r0, #2
	beq _022388A6
	b _0223891E
_02238854:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov40_0222D980
	add r0, r5, #0
	bl ov40_02237564
	add r0, r5, #0
	bl ov40_02237410
	add r0, r5, #0
	bl ov40_022371A0
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	bl ov40_02237008
	add r0, r5, #0
	bl ov40_02237C54
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223889A:
	ldr r0, _02238A38 ; =0x00002F64
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022388A6:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	bne _022388BE
	b _02238A30
_022388BE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4e
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02238A30
_0223891E:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02238A30
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_020879E0
	add r0, r5, #0
	bl ov40_02237C9C
	add r0, r5, #0
	bl ov40_02237AC0
	ldr r0, _02238A3C ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #2
	bl ov40_0222F9E0
	ldr r3, _02238A40 ; =0x00002EAC
	ldr r0, _02238A44 ; =0x0000049C
	add r2, r4, r3
	sub r3, #0xa0
	add r0, r5, r0
	add r1, r5, #0
	add r3, r4, r3
	bl ov40_0222EED0
	ldr r1, _02238A3C ; =0x0000047C
	add r0, r5, r1
	add r1, #0x20
	add r1, r5, r1
	bl ov40_0222FA5C
	ldr r0, _02238A44 ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov40_0222F740
	ldr r0, _02238A44 ; =0x0000049C
	mov r1, #0x38
	add r0, r5, r0
	mov r2, #0xb0
	bl ov40_0222F858
	ldr r3, _02238A48 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x44
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, _02238A38 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02238A10
	ldr r0, _02238A3C ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA88
	ldr r1, _02238A44 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov40_0222F5EC
	ldr r0, _02238A44 ; =0x0000049C
	ldr r2, _02238A4C ; =0x00002E0C
	add r0, r5, r0
	add r1, r5, #0
	add r2, r4, r2
	bl ov40_0222EFD8
	ldr r2, _02238A48 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x44
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_020878EC
_02238A10:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #5
	bl ov40_0222BF80
_02238A30:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02238A38: .word 0x00002F64
_02238A3C: .word 0x0000047C
_02238A40: .word 0x00002EAC
_02238A44: .word 0x0000049C
_02238A48: .word 0x000004D8
_02238A4C: .word 0x00002E0C
	thumb_func_end ov40_02238838

