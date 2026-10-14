	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02206E88
	.public ov96_02206F1C
	.public ov96_02206FA4
	.public ov96_0220703C
	.public ov96_02207300
	.extern ov96_021E60D8
	.extern ov96_02207390
	.extern ov96_0221CAE0
	.extern ov96_0221CB00

	.text

	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_InitPlayerProfiles
	.extern PokeathlonCourse_GetPlayerProfile
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetFieldBA4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021E5E04
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetField3D8_AtIndex
	.extern ov96_021E5E7C
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_GetSystem
	.extern ov96_021E5F24
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_ResetField3A4
	.extern PokeathlonCourse_GetField3A4
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern PokeathlonCourse_SetStateTransitionType
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern PokeathlonCourse_GetGraphicsSystem

	.text
	thumb_func_start ov96_02206E88
ov96_02206E88: ; 0x02206E88
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r1, #0
	add r1, r2, #0
	ldr r2, [sp]
	ldr r6, [sp, #0x18]
	bl ov96_021E60D8
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x14
	add r7, r0, #0
	ldrb r0, [r4]
	mul r7, r1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl _fflt
	bl _f2d
	ldr r3, _02206F18 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0x14]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	strb r0, [r1, #0x1c]
	ldrb r0, [r4, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl _fflt
	bl _f2d
	ldr r3, _02206F18 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0xc]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	bl _fflt
	bl _f2d
	ldr r3, _02206F18 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0x10]
	ldrb r0, [r4, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02206F18: .word 0x40240000
	thumb_func_end ov96_02206E88

	thumb_func_start ov96_02206F1C
ov96_02206F1C: ; 0x02206F1C
	push {r3, r4, r5, r6, r7, lr}
	mov ip, r3
	mov r3, #0
	ldr r6, [sp, #0x18]
	mov r5, ip
	add r4, r3, #0
_02206F28:
	add r3, r3, #1
	stmia r5!, {r4}
	cmp r3, #0x14
	blt _02206F28
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r3, r1, r3
	asr r1, r3, #0xc
	mov lr, r1
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r7, r1, #0xc
	ldr r1, _02206F9C ; =0x0000061C
	strb r4, [r6]
	add r3, r0, r1
_02206F48:
	mov r1, #0xdf
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02206F98
	mov r1, #0xe1
	lsl r1, r1, #2
	ldrh r2, [r0, r1]
	mov r1, lr
	mov r5, #0x1f
	sub r2, r2, r1
	ldr r1, _02206FA0 ; =0x00000386
	add r2, #0x80
	ldrh r1, [r0, r1]
	mvn r5, r5
	sub r1, r1, r7
	add r1, #0x60
	cmp r2, r5
	blt _02206F8E
	mov r5, #0x12
	lsl r5, r5, #4
	cmp r2, r5
	bgt _02206F8E
	mov r2, #0x1f
	mvn r2, r2
	cmp r1, r2
	blt _02206F8E
	cmp r1, #0xe0
	bgt _02206F8E
	ldrb r2, [r6]
	add r1, r2, #1
	strb r1, [r6]
	lsl r2, r2, #2
	mov r1, ip
	str r3, [r1, r2]
_02206F8E:
	add r4, r4, #1
	add r0, #0xc
	add r3, r3, #4
	cmp r4, #0x14
	blt _02206F48
_02206F98:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02206F9C: .word 0x0000061C
_02206FA0: .word 0x00000386
	thumb_func_end ov96_02206F1C

	thumb_func_start ov96_02206FA4
ov96_02206FA4: ; 0x02206FA4
	push {r4, r5}
	ldrh r5, [r1]
	ldrh r4, [r1, #2]
	add r3, r5, #0
	add r1, r4, #0
	sub r3, #0x10
	str r3, [r2]
	sub r1, #0x10
	str r1, [r2, #4]
	add r5, #0x10
	str r5, [r2, #8]
	str r1, [r2, #0xc]
	str r5, [r2, #0x10]
	add r4, #0x10
	str r4, [r2, #0x14]
	str r3, [r2, #0x18]
	str r4, [r2, #0x1c]
	ldr r3, [r2]
	ldr r1, [r2, #4]
	str r3, [r2, #0x20]
	str r1, [r2, #0x24]
	ldr r3, [r2, #8]
	ldr r1, [r2, #0xc]
	str r3, [r2, #0x28]
	str r1, [r2, #0x2c]
	ldr r3, [r2, #8]
	ldr r1, [r2, #0xc]
	str r3, [r2, #0x30]
	str r1, [r2, #0x34]
	ldr r3, [r2, #0x10]
	ldr r1, [r2, #0x14]
	str r3, [r2, #0x38]
	str r1, [r2, #0x3c]
	ldr r3, [r2, #0x10]
	ldr r1, [r2, #0x14]
	str r3, [r2, #0x40]
	str r1, [r2, #0x44]
	ldr r3, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	str r3, [r2, #0x48]
	str r1, [r2, #0x4c]
	ldr r3, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	str r3, [r2, #0x50]
	str r1, [r2, #0x54]
	ldr r3, [r2]
	ldr r1, [r2, #4]
	str r3, [r2, #0x58]
	str r1, [r2, #0x5c]
	ldr r1, [r2, #0x24]
	sub r1, r1, r0
	str r1, [r2, #0x24]
	ldr r1, [r2, #0x2c]
	sub r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r1, [r2, #0x30]
	add r1, r1, r0
	str r1, [r2, #0x30]
	ldr r1, [r2, #0x38]
	add r1, r1, r0
	str r1, [r2, #0x38]
	ldr r1, [r2, #0x44]
	add r1, r1, r0
	str r1, [r2, #0x44]
	ldr r1, [r2, #0x4c]
	add r1, r1, r0
	str r1, [r2, #0x4c]
	ldr r1, [r2, #0x50]
	sub r1, r1, r0
	str r1, [r2, #0x50]
	add r2, #0x58
	ldr r1, [r2]
	sub r0, r1, r0
	str r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov96_02206FA4

	thumb_func_start ov96_0220703C
ov96_0220703C: ; 0x0220703C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp, #4]
	ldr r0, [sp, #0xb8]
	str r2, [sp, #0xc]
	str r0, [sp, #0xb8]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r0]
	add r7, r3, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	add r6, r3, #0
	ldr r1, [r0, #4]
	ldr r2, _022072F8 ; =ov96_0221CB00
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	str r3, [sp, #0x10]
	ldr r1, [r0]
	add r5, r3, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r3, sp, #0x34
	ldr r1, [r0, #4]
	mov r4, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x20]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r7, #0x28
	add r6, #0x20
_0220709C:
	add r3, sp, #0x34
	add r2, sp, #0x94
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x2c
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl sub_02020F4C
	cmp r0, #0
	beq _022070DA
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0xb8]
	str r1, [r0]
	ldr r0, [sp, #0x30]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0xb8]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, sp, #0x94
	lsl r1, r4, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_022070DA:
	mov r0, #0
	cmp r4, #0
	bne _0220710A
	cmp r4, #2
	bne _0220710A
	ldr r2, [sp, #0x28]
	ldr r1, [r5, #0x24]
	cmp r2, r1
	bne _0220712E
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x20]
	cmp r3, r2
	bge _022070F8
	add r1, r3, #0
	b _022070FC
_022070F8:
	add r1, r2, #0
	add r2, r3, #0
_022070FC:
	ldr r3, [sp, #0x24]
	cmp r1, r3
	bgt _0220712E
	cmp r3, r2
	bgt _0220712E
	mov r0, #1
	b _0220712E
_0220710A:
	ldr r2, [sp, #0x24]
	ldr r1, [r5, #0x20]
	cmp r2, r1
	bne _0220712E
	ldr r2, [r5, #0x2c]
	ldr r3, [r5, #0x24]
	cmp r3, r2
	bge _0220711E
	add r1, r3, #0
	b _02207122
_0220711E:
	add r1, r2, #0
	add r2, r3, #0
_02207122:
	ldr r3, [sp, #0x28]
	cmp r1, r3
	bgt _0220712E
	cmp r3, r2
	bgt _0220712E
	mov r0, #1
_0220712E:
	cmp r0, #0
	beq _02207150
	ldr r2, [sp, #4]
	ldmia r2!, {r0, r1}
	str r2, [sp, #4]
	ldr r2, [sp, #0xb8]
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	str r2, [sp, #0xb8]
	ldr r1, [r0]
	add r0, r2, #0
	str r1, [r0]
	add r0, sp, #0x94
	lsl r1, r4, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_02207150:
	add r4, r4, #1
	add r7, #0x10
	add r6, #0x10
	add r5, #0x10
	cmp r4, #4
	blt _0220709C
	ldr r3, _022072FC ; =ov96_0221CAE0
	add r2, sp, #0x44
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x10]
	mov r5, #0
	lsl r6, r0, #0xc
	add r7, sp, #0x6c
_02207172:
	add r3, sp, #0x44
	add r2, sp, #0x84
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0x78
	lsl r0, r0, #0xc
	str r0, [sp, #0x78]
	ldr r0, [r4, #4]
	add r2, r7, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x80]
	ldr r0, [sp, #8]
	bl VEC_Subtract
	add r0, r7, #0
	bl VEC_Mag
	cmp r0, r6
	bgt _022071E0
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x78
	lsl r3, r3, #0xc
	bl ov96_02207390
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x60
	bl VEC_Subtract
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0x60
	add r3, sp, #0x54
	bl VEC_MultAdd
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0xb8]
	str r1, [r0]
	ldr r1, [sp, #0x58]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, sp, #0x84
	lsl r1, r5, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_022071E0:
	add r5, r5, #1
	add r4, #8
	cmp r5, #4
	blt _02207172
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	lsl r0, r0, #0xc
	cmp r0, r1
	bgt _022072F2
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _022072F2
	ldr r0, [sp, #8]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r0, r1
	bgt _022072F2
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _022072F2
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xb8]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldr r0, [r0]
	ldr r3, [r3, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	str r3, [sp, #0x14]
	ldr r2, [r0]
	ldr r0, [sp, #0x18]
	lsl r3, r3, #0xc
	lsl r0, r0, #0xc
	sub r0, r0, r2
	sub r3, r3, r2
	mov ip, r1
	cmp r0, #0
	bge _0220724A
	sub r2, r1, #1
	mul r0, r2
_0220724A:
	cmp r3, #0
	bge _02207254
	mov r2, #0
	mvn r2, r2
	mul r3, r2
_02207254:
	cmp r0, r3
	bge _0220725C
	mov r6, #0xc
	b _02207260
_0220725C:
	add r0, r3, #0
	mov r6, #0xa
_02207260:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	ldr r2, [r2, #4]
	ldr r5, [r3, #4]
	ldr r7, [r4, #0x14]
	lsl r3, r2, #0xc
	lsl r4, r7, #0xc
	sub r3, r3, r5
	sub r4, r4, r5
	cmp r3, #0
	bge _0220727E
	mov r5, #0
	mvn r5, r5
	mul r3, r5
_0220727E:
	cmp r4, #0
	bge _02207288
	mov r5, #0
	mvn r5, r5
	mul r4, r5
_02207288:
	cmp r3, r4
	bge _02207290
	mov r4, #9
	b _02207294
_02207290:
	add r3, r4, #0
	mov r4, #0xb
_02207294:
	cmp r0, r3
	bgt _022072A0
	mov r0, #1
	mov ip, r0
	add r0, r6, #0
	b _022072A4
_022072A0:
	mov r1, #1
	add r0, r4, #0
_022072A4:
	mov r3, ip
	cmp r3, #0
	beq _022072CE
	cmp r6, #0xc
	bne _022072BE
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1]
	pop {r4, r5, r6, r7, pc}
_022072BE:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	add r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1]
	pop {r4, r5, r6, r7, pc}
_022072CE:
	cmp r1, #0
	beq _022072F4
	cmp r4, #9
	bne _022072E4
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_022072E4:
	ldr r1, [sp, #0xc]
	add r1, r7, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_022072F2:
	mov r0, #0
_022072F4:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022072F8: .word ov96_0221CB00
_022072FC: .word ov96_0221CAE0
	thumb_func_end ov96_0220703C

	thumb_func_start ov96_02207300
ov96_02207300: ; 0x02207300
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	str r1, [sp, #4]
	ldr r1, [sp, #0xe0]
	add r7, r3, #0
	str r1, [sp, #0xe0]
	ldr r1, [sp, #0xe4]
	add r6, r2, #0
	str r1, [sp, #0xe4]
	add r1, sp, #0xc
	str r1, [sp]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	add r3, sp, #0x7c
	bl ov96_02206F1C
	mov r4, #0
	str r4, [sp, #8]
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #0
	ble _02207388
	add r5, sp, #0x7c
_0220732E:
	ldr r1, [r5]
	add r0, r6, #0
	add r2, sp, #0x1c
	bl ov96_02206FA4
	add r0, sp, #0x10
	str r0, [sp]
	ldr r1, [sp, #0xe0]
	add r0, r7, #0
	add r2, r6, #0
	add r3, sp, #0x1c
	bl ov96_0220703C
	cmp r0, #0
	beq _0220737C
	cmp r0, #9
	blt _02207360
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xe4]
	str r2, [r1]
	ldr r2, [sp, #0x14]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
	b _02207374
_02207360:
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _02207374
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xe4]
	str r2, [r1]
	ldr r2, [sp, #0x14]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
_02207374:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	b _02207388
_0220737C:
	add r0, sp, #0xc
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0220732E
_02207388:
	ldr r0, [sp, #8]
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02207300

