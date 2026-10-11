	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_003
	.public ov80_0222BEFC

	.text

	thumb_func_start FrtCmd_003
FrtCmd_003: ; 0x0222BED4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5]
	bl FrontierScript_ReadVar
	add r1, r0, #0
	ldr r0, [r4]
	ldr r2, _0222BEF4 ; =0x0000FFFF
	bl sub_02096854
	ldr r1, _0222BEF8 ; =ov80_0222BEFC
	add r0, r5, #0
	bl FrontierScriptContext_Pause
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222BEF4: .word 0x0000FFFF
_0222BEF8: .word ov80_0222BEFC
	thumb_func_end FrtCmd_003

