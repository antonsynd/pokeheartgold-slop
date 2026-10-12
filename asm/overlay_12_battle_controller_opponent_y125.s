#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02260D28
	.public ov12_02260D84
	.public ov12_02260EA4
	.extern ov12_0225DAD4
	.extern ov12_0225E104
	.extern ov12_0225E134
	.extern ov12_0225E154
	.extern ov12_0225E1D4
	.extern ov12_0225E1FC
	.extern ov12_0225E250
	.extern ov12_0225E404
	.extern ov12_0225E4CC
	.extern ov12_0225E4EC
	.extern ov12_0225E568
	.extern ov12_0225E6FC
	.extern ov12_0225E740
	.extern ov12_0225E760
	.extern ov12_0225E830
	.extern ov12_0225F3A4
	.extern ov12_0225F3FC
	.extern ov12_0225F434
	.extern ov12_0225F4E0
	.extern ov12_0225F8AC
	.extern ov12_0225F960
	.extern ov12_0225F980
	.extern ov12_0225FA44
	.extern ov12_0225FC80
	.extern ov12_0225FCA0
	.extern ov12_0225FCC0

	.text

	.text
	thumb_func_start ov12_02260D28
ov12_02260D28: ; 0x02260D28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _02260D3C
	bl GF_AssertFail
_02260D3C:
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0]
	bl ov07_0221FE70
	cmp r0, #3
	bne _02260D56
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhs _02260D56
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_02260D56:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xd]
	add r0, #0x8c
	ldr r0, [r0]
	bl ov07_0221FE3C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_02260D28

	thumb_func_start ov12_02260D84
ov12_02260D84: ; 0x02260D84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetPaletteData
	add r4, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetPokepicManager
	add r7, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02260DAE
	cmp r0, #1
	beq _02260DE0
	cmp r0, #2
	beq _02260E84
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02260DAE:
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _02260DD2
	ldr r0, [r5]
	bl BattleSystem_GetMessageIcon
	mov r1, #1
	bl sub_0201649C
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0x10
	add r3, r1, #0
	bl Pokepic_StartPaletteFadeAll
	b _02260DDA
_02260DD2:
	mov r0, #0
	mov r1, #0x10
	bl GF_SndStartFadeOutBGM
_02260DDA:
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
_02260DE0:
	ldrb r0, [r5, #7]
	cmp r0, #0
	ldrb r0, [r5, #8]
	bne _02260E24
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa0
	bl PaletteData_BlendPalette
	ldrb r0, [r5, #8]
	mov r1, #0
	mov r2, #0xc0
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r3, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	bl PaletteData_BlendPalette
	ldrb r0, [r5, #8]
	mov r1, #2
	mov r2, #0
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r3, #0xe0
	str r0, [sp, #4]
	add r0, r4, #0
	bl PaletteData_BlendPalette
	b _02260E62
_02260E24:
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xa0
	mov r3, #0x20
	bl PaletteData_BlendPalette
	ldrb r0, [r5, #8]
	mov r1, #1
	add r3, r1, #0
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, #0xff
	bl PaletteData_BlendPalette
	ldrb r0, [r5, #8]
	mov r1, #3
	add r3, r1, #0
	str r0, [sp]
	ldr r0, _02260EA0 ; =0x0000FFFF
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, #0xfd
	bl PaletteData_BlendPalette
_02260E62:
	ldrb r1, [r5, #8]
	add r0, r1, #1
	strb r0, [r5, #8]
	cmp r1, #0x10
	bne _02260E9A
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _02260E7A
	mov r0, #0
	add r1, r0, #0
	bl ToggleBgLayer
_02260E7A:
	ldrb r0, [r5, #6]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
_02260E84:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_02260E9A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260EA0: .word 0x0000FFFF
	thumb_func_end ov12_02260D84

	thumb_func_start ov12_02260EA4
ov12_02260EA4: ; 0x02260EA4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl BattleSystem_GetBattleType
	add r4, r0, #0
	add r0, r6, #0
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x40
	tst r1, r4
	beq _02260F2C
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _02260EE6
	ldr r0, _022611E8 ; =ov12_0225E104
	mov r1, #1
	str r0, [r5]
	ldr r0, _022611EC ; =ov12_0225E404
	str r0, [r5, #4]
	ldr r0, _022611F0 ; =ov12_0225E6FC
	str r0, [r5, #8]
	ldr r0, _022611F4 ; =ov12_0225F3A4
	str r0, [r5, #0xc]
	ldr r0, _022611F8 ; =ov12_0225F8AC
	str r0, [r5, #0x10]
	ldr r0, _022611FC ; =ov12_0225FC80
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260EE6:
	mov r1, #0x10
	tst r0, r1
	beq _02260F0C
	ldr r0, _02261200 ; =ov12_0225E1FC
	mov r1, #0
	str r0, [r5]
	ldr r0, _02261204 ; =ov12_0225E4EC
	str r0, [r5, #4]
	ldr r0, _02261208 ; =ov12_0225E760
	str r0, [r5, #8]
	ldr r0, _0226120C ; =ov12_0225F434
	str r0, [r5, #0xc]
	ldr r0, _02261210 ; =ov12_0225F980
	str r0, [r5, #0x10]
	ldr r0, _02261214 ; =ov12_0225FCC0
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260F0C:
	ldr r0, _02261218 ; =ov12_0225DAD4
	mov r1, #0
	str r0, [r5]
	ldr r0, _0226121C ; =ov12_0225E250
	str r0, [r5, #4]
	ldr r0, _02261220 ; =ov12_0225E568
	str r0, [r5, #8]
	ldr r0, _02261224 ; =ov12_0225E830
	str r0, [r5, #0xc]
	ldr r0, _02261228 ; =ov12_0225F4E0
	str r0, [r5, #0x10]
	ldr r0, _0226122C ; =ov12_0225FA44
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260F2C:
	mov r1, #0x88
	and r1, r4
	cmp r1, #0x88
	bne _02261006
	ldr r2, _02261230 ; =0x00000195
	mov r1, #1
	ldrb r3, [r5, r2]
	tst r1, r3
	beq _02260F88
	add r0, r6, #0
	bl ov12_0223B688
	cmp r0, #0
	beq _02260F68
	ldr r0, _022611E8 ; =ov12_0225E104
	mov r1, #1
	str r0, [r5]
	ldr r0, _022611EC ; =ov12_0225E404
	str r0, [r5, #4]
	ldr r0, _022611F0 ; =ov12_0225E6FC
	str r0, [r5, #8]
	ldr r0, _022611F4 ; =ov12_0225F3A4
	str r0, [r5, #0xc]
	ldr r0, _022611F8 ; =ov12_0225F8AC
	str r0, [r5, #0x10]
	ldr r0, _022611FC ; =ov12_0225FC80
	str r0, [r5, #0x14]
	ldr r0, _02261234 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260F68:
	ldr r0, _02261238 ; =ov12_0225E134
	mov r1, #2
	str r0, [r5]
	ldr r0, _0226123C ; =ov12_0225E4CC
	str r0, [r5, #4]
	ldr r0, _02261240 ; =ov12_0225E740
	str r0, [r5, #8]
	ldr r0, _02261244 ; =ov12_0225F3FC
	str r0, [r5, #0xc]
	ldr r0, _02261248 ; =ov12_0225F960
	str r0, [r5, #0x10]
	ldr r0, _0226124C ; =ov12_0225FCA0
	str r0, [r5, #0x14]
	ldr r0, _02261234 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260F88:
	mov r1, #0x10
	tst r0, r1
	beq _02260FAE
	ldr r0, _02261200 ; =ov12_0225E1FC
	mov r1, #0
	str r0, [r5]
	ldr r0, _02261204 ; =ov12_0225E4EC
	str r0, [r5, #4]
	ldr r0, _02261208 ; =ov12_0225E760
	str r0, [r5, #8]
	ldr r0, _0226120C ; =ov12_0225F434
	str r0, [r5, #0xc]
	ldr r0, _02261210 ; =ov12_0225F980
	str r0, [r5, #0x10]
	ldr r0, _02261214 ; =ov12_0225FCC0
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02260FAE:
	add r0, r6, #0
	bl ov12_0223BFC0
	add r1, r0, #0
	add r0, r6, #0
	lsl r1, r1, #1
	bl ov12_0223AB0C
	ldr r1, _02261230 ; =0x00000195
	ldrb r2, [r5, r1]
	cmp r2, r0
	beq _02260FE6
	ldr r0, _02261238 ; =ov12_0225E134
	mov r2, #2
	str r0, [r5]
	ldr r0, _0226123C ; =ov12_0225E4CC
	str r0, [r5, #4]
	ldr r0, _02261240 ; =ov12_0225E740
	str r0, [r5, #8]
	ldr r0, _02261244 ; =ov12_0225F3FC
	str r0, [r5, #0xc]
	ldr r0, _02261248 ; =ov12_0225F960
	str r0, [r5, #0x10]
	ldr r0, _0226124C ; =ov12_0225FCA0
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02260FE6:
	ldr r0, _02261218 ; =ov12_0225DAD4
	mov r2, #0
	str r0, [r5]
	ldr r0, _0226121C ; =ov12_0225E250
	str r0, [r5, #4]
	ldr r0, _02261220 ; =ov12_0225E568
	str r0, [r5, #8]
	ldr r0, _02261224 ; =ov12_0225E830
	str r0, [r5, #0xc]
	ldr r0, _02261228 ; =ov12_0225F4E0
	str r0, [r5, #0x10]
	ldr r0, _0226122C ; =ov12_0225FA44
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02261006:
	mov r1, #8
	tst r1, r4
	beq _02261088
	mov r1, #0x10
	tst r0, r1
	beq _02261032
	ldr r0, _02261200 ; =ov12_0225E1FC
	mov r1, #0
	str r0, [r5]
	ldr r0, _02261204 ; =ov12_0225E4EC
	str r0, [r5, #4]
	ldr r0, _02261208 ; =ov12_0225E760
	str r0, [r5, #8]
	ldr r0, _0226120C ; =ov12_0225F434
	str r0, [r5, #0xc]
	ldr r0, _02261210 ; =ov12_0225F980
	str r0, [r5, #0x10]
	ldr r0, _02261214 ; =ov12_0225FCC0
	str r0, [r5, #0x14]
	ldr r0, _02261234 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02261032:
	add r0, r6, #0
	bl ov12_0223BFC0
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223AB0C
	ldr r1, _02261230 ; =0x00000195
	ldrb r2, [r5, r1]
	cmp r2, r0
	beq _02261068
	ldr r0, _02261238 ; =ov12_0225E134
	mov r2, #2
	str r0, [r5]
	ldr r0, _0226123C ; =ov12_0225E4CC
	str r0, [r5, #4]
	ldr r0, _02261240 ; =ov12_0225E740
	str r0, [r5, #8]
	ldr r0, _02261244 ; =ov12_0225F3FC
	str r0, [r5, #0xc]
	ldr r0, _02261248 ; =ov12_0225F960
	str r0, [r5, #0x10]
	ldr r0, _0226124C ; =ov12_0225FCA0
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02261068:
	ldr r0, _02261218 ; =ov12_0225DAD4
	mov r2, #0
	str r0, [r5]
	ldr r0, _0226121C ; =ov12_0225E250
	str r0, [r5, #4]
	ldr r0, _02261220 ; =ov12_0225E568
	str r0, [r5, #8]
	ldr r0, _02261224 ; =ov12_0225E830
	str r0, [r5, #0xc]
	ldr r0, _02261228 ; =ov12_0225F4E0
	str r0, [r5, #0x10]
	ldr r0, _0226122C ; =ov12_0225FA44
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02261088:
	mov r1, #4
	add r2, r4, #0
	tst r2, r1
	beq _02261100
	mov r1, #0x10
	tst r0, r1
	beq _022610B6
	ldr r0, _02261200 ; =ov12_0225E1FC
	mov r1, #0
	str r0, [r5]
	ldr r0, _02261204 ; =ov12_0225E4EC
	str r0, [r5, #4]
	ldr r0, _02261208 ; =ov12_0225E760
	str r0, [r5, #8]
	ldr r0, _0226120C ; =ov12_0225F434
	str r0, [r5, #0xc]
	ldr r0, _02261210 ; =ov12_0225F980
	str r0, [r5, #0x10]
	ldr r0, _02261214 ; =ov12_0225FCC0
	str r0, [r5, #0x14]
	ldr r0, _02261234 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022610B6:
	ldr r0, _02261230 ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r1, r2
	beq _022610E0
	ldr r1, _02261238 ; =ov12_0225E134
	add r0, r0, #1
	str r1, [r5]
	ldr r1, _0226123C ; =ov12_0225E4CC
	str r1, [r5, #4]
	ldr r1, _02261240 ; =ov12_0225E740
	str r1, [r5, #8]
	ldr r1, _02261244 ; =ov12_0225F3FC
	str r1, [r5, #0xc]
	ldr r1, _02261248 ; =ov12_0225F960
	str r1, [r5, #0x10]
	ldr r1, _0226124C ; =ov12_0225FCA0
	str r1, [r5, #0x14]
	mov r1, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022610E0:
	ldr r1, _02261218 ; =ov12_0225DAD4
	add r0, r0, #1
	str r1, [r5]
	ldr r1, _0226121C ; =ov12_0225E250
	str r1, [r5, #4]
	ldr r1, _02261220 ; =ov12_0225E568
	str r1, [r5, #8]
	ldr r1, _02261224 ; =ov12_0225E830
	str r1, [r5, #0xc]
	ldr r1, _02261228 ; =ov12_0225F4E0
	str r1, [r5, #0x10]
	ldr r1, _0226122C ; =ov12_0225FA44
	str r1, [r5, #0x14]
	mov r1, #0
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02261100:
	lsl r1, r1, #7
	tst r1, r4
	beq _0226113C
	ldr r0, _02261230 ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r2, r1
	beq _02261126
	ldr r2, _02261250 ; =ov12_0225E1D4
	add r0, r0, #1
	str r2, [r5]
	mov r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02261126:
	ldr r1, _02261218 ; =ov12_0225DAD4
	add r0, r0, #1
	str r1, [r5]
	mov r1, #0
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0226113C:
	mov r1, #0x20
	tst r1, r4
	beq _0226117A
	ldr r0, _02261230 ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r2, r1
	beq _02261162
	ldr r2, _02261254 ; =ov12_0225E154
	add r0, r0, #1
	str r2, [r5]
	mov r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02261162:
	ldr r1, _02261218 ; =ov12_0225DAD4
	mov r2, #0
	str r1, [r5]
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	ldr r1, _0226122C ; =ov12_0225FA44
	str r2, [r5, #0x10]
	str r1, [r5, #0x14]
	add r0, r0, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_0226117A:
	ldr r2, _02261230 ; =0x00000195
	mov r1, #1
	ldrb r3, [r5, r2]
	tst r3, r1
	beq _022611A2
	ldr r0, _022611E8 ; =ov12_0225E104
	str r0, [r5]
	ldr r0, _022611EC ; =ov12_0225E404
	str r0, [r5, #4]
	ldr r0, _022611F0 ; =ov12_0225E6FC
	str r0, [r5, #8]
	ldr r0, _022611F4 ; =ov12_0225F3A4
	str r0, [r5, #0xc]
	ldr r0, _022611F8 ; =ov12_0225F8AC
	str r0, [r5, #0x10]
	ldr r0, _022611FC ; =ov12_0225FC80
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022611A2:
	mov r1, #0x10
	tst r0, r1
	beq _022611C8
	ldr r0, _02261200 ; =ov12_0225E1FC
	mov r1, #0
	str r0, [r5]
	ldr r0, _02261204 ; =ov12_0225E4EC
	str r0, [r5, #4]
	ldr r0, _02261208 ; =ov12_0225E760
	str r0, [r5, #8]
	ldr r0, _0226120C ; =ov12_0225F434
	str r0, [r5, #0xc]
	ldr r0, _02261210 ; =ov12_0225F980
	str r0, [r5, #0x10]
	ldr r0, _02261214 ; =ov12_0225FCC0
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022611C8:
	ldr r0, _02261218 ; =ov12_0225DAD4
	mov r1, #0
	str r0, [r5]
	ldr r0, _0226121C ; =ov12_0225E250
	str r0, [r5, #4]
	ldr r0, _02261220 ; =ov12_0225E568
	str r0, [r5, #8]
	ldr r0, _02261224 ; =ov12_0225E830
	str r0, [r5, #0xc]
	ldr r0, _02261228 ; =ov12_0225F4E0
	str r0, [r5, #0x10]
	ldr r0, _0226122C ; =ov12_0225FA44
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022611E8: .word ov12_0225E104
_022611EC: .word ov12_0225E404
_022611F0: .word ov12_0225E6FC
_022611F4: .word ov12_0225F3A4
_022611F8: .word ov12_0225F8AC
_022611FC: .word ov12_0225FC80
_02261200: .word ov12_0225E1FC
_02261204: .word ov12_0225E4EC
_02261208: .word ov12_0225E760
_0226120C: .word ov12_0225F434
_02261210: .word ov12_0225F980
_02261214: .word ov12_0225FCC0
_02261218: .word ov12_0225DAD4
_0226121C: .word ov12_0225E250
_02261220: .word ov12_0225E568
_02261224: .word ov12_0225E830
_02261228: .word ov12_0225F4E0
_0226122C: .word ov12_0225FA44
_02261230: .word 0x00000195
_02261234: .word 0x00000196
_02261238: .word ov12_0225E134
_0226123C: .word ov12_0225E4CC
_02261240: .word ov12_0225E740
_02261244: .word ov12_0225F3FC
_02261248: .word ov12_0225F960
_0226124C: .word ov12_0225FCA0
_02261250: .word ov12_0225E1D4
_02261254: .word ov12_0225E154
	thumb_func_end ov12_02260EA4

