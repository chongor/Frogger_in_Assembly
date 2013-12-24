		.DATA
frog_sprite_N 		.FILL #24
		.FILL #189
		.FILL #189
		.FILL #255
		.FILL #60
		.FILL #189
		.FILL #189
		.FILL #255
		.DATA
frog_sprite_W 		.FILL #119
		.FILL #17
		.FILL #127
		.FILL #255
		.FILL #255
		.FILL #127
		.FILL #17
		.FILL #119
		.DATA
frog_sprite_S 		.FILL #255
		.FILL #189
		.FILL #60
		.FILL #255
		.FILL #189
		.FILL #189
		.FILL #189
		.FILL #24
		.DATA
frog_sprite_E 		.FILL #238
		.FILL #136
		.FILL #254
		.FILL #255
		.FILL #255
		.FILL #254
		.FILL #136
		.FILL #238
		.DATA
X_sprite 		.FILL #195
		.FILL #231
		.FILL #126
		.FILL #60
		.FILL #60
		.FILL #126
		.FILL #231
		.FILL #195
;;;;;;;;;;;;;;;;;;;;;;;;;;;;init_pattern;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
init_pattern
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LDR R7, R5, #3
	LDR R3, R5, #4
	STR R3, R7, #0
	LDR R7, R5, #3
	LDR R3, R7, #0
	LDR R2, R5, #5
	ADD R3, R3, R2
	STR R3, R7, #1
	LDR R7, R5, #3
	LDR R3, R7, #1
	LDR R2, R5, #6
	ADD R3, R3, R2
	STR R3, R7, #2
	LDR R7, R5, #3
	LDR R3, R7, #2
	LDR R2, R5, #7
	ADD R3, R3, R2
	STR R3, R7, #3
	LDR R7, R5, #3
	LDR R3, R7, #3
	LDR R2, R5, #8
	ADD R3, R3, R2
	STR R3, R7, #4
	LDR R7, R5, #3
	LDR R3, R7, #4
	LDR R2, R5, #9
	ADD R3, R3, R2
	STR R3, R7, #5
	LDR R7, R5, #3
	LDR R3, R7, #5
	LDR R2, R5, #10
	ADD R3, R3, R2
	STR R3, R7, #6
	LDR R7, R5, #3
	LDR R3, R7, #6
	LDR R2, R5, #11
	ADD R3, R3, R2
	STR R3, R7, #7
	LDR R7, R5, #3
	LDR R3, R7, #7
	LDR R2, R5, #12
	ADD R3, R3, R2
	STR R3, R7, #8
	LDR R7, R5, #3
	LDR R3, R7, #8
	LDR R2, R5, #13
	ADD R3, R3, R2
	STR R3, R7, #9
	LDR R7, R5, #3
	LDR R3, R5, #14
	STR R3, R7, #10
	LDR R7, R5, #3
	LDR R3, R5, #15
	STR R3, R7, #11
L2_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;abs;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
abs
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LDR R7, R5, #3
	CONST R3, #0
	CMP R7, R3
	BRzp L4_frogger
	LDR R7, R5, #3
	NOT R7,R7
	ADD R7,R7,#1
	JMP L3_frogger
L4_frogger
	LDR R7, R5, #3
L3_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;get_element_endpoints;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
get_element_endpoints
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-5	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #4
	STR R7, R5, #-5
	CONST R3, #0
	CMP R7, R3
	BRn L7_frogger
	CONST R7, #5
	LDR R3, R5, #-5
	CMP R3, R7
	BRzp L7_frogger
	LDR R7, R5, #3
	LDR R3, R7, #9
	STR R3, R5, #-2
	LDR R3, R5, #4
	SLL R3, R3, #1
	ADD R2, R3, R7
	LDR R2, R2, #0
	STR R2, R5, #-1
	ADD R3, R3, #1
	ADD R3, R3, R7
	LDR R3, R3, #0
	STR R3, R5, #-4
	LDR R3, R5, #5
	LDR R2, R5, #-1
	LDR R7, R7, #10
	SUB R7, R2, R7
	STR R7, R3, #0
	LDR R7, R5, #-2
	LDR R3, R5, #-1
	ADD R3, R3, R7
	LDR R2, R5, #3
	LDR R2, R2, #10
	SUB R3, R3, R2
	MOD R7, R3, R7
	STR R7, R5, #-3
	LDR R7, R5, #5
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR abs
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #1	;; free space for arguments
	LDR R3, R5, #-3
	CMP R3, R7
	BRzp L9_frogger
	LDR R7, R5, #5
	LDR R3, R5, #-3
	STR R3, R7, #0
L9_frogger
	LDR R7, R5, #6
	LDR R3, R5, #5
	LDR R3, R3, #0
	LDR R2, R5, #-4
	LDR R1, R5, #-1
	SUB R2, R2, R1
	ADD R3, R3, R2
	STR R3, R7, #0
L7_frogger
L6_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_pattern;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_pattern
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #3
	LDR R7, R7, #9
	STR R7, R5, #-1
	LDR R7, R5, #3
	ADD R3, R7, #10
	LDR R2, R5, #-1
	LDR R1, R3, #0
	LDR R7, R7, #11
	ADD R7, R1, R7
	ADD R7, R7, R2
	MOD R7, R7, R2
	STR R7, R3, #0
L11_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_lily_pads;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_lily_pads
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-4	;; allocate stack space for local variables
	;; function body
	CONST R7, #240
	HICONST R7, #127
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #128
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #0
	STR R7, R5, #-1
L13_frogger
	ADD R7, R5, #-3
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, lily_pads
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LDR R7, R5, #-2
	LDR R3, R5, #-3
	SUB R3, R3, R7
	STR R3, R5, #-4
	CONST R3, #240
	HICONST R3, #127
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R3, #8
	ADD R6, R6, #-1
	STR R3, R6, #0
	LDR R2, R5, #-4
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L14_frogger
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #5
	CMP R7, R3
	BRn L13_frogger
L12_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_logs;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_logs
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-5	;; allocate stack space for local variables
	;; function body
	CONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #40
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #16
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #0
	STR R7, R5, #-3
L18_frogger
	CONST R7, #0
	STR R7, R5, #-1
L22_frogger
	ADD R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #12
	LDR R3, R5, #-3
	MUL R7, R7, R3
	LEA R3, logs
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LDR R7, R5, #-2
	LDR R3, R5, #-4
	SUB R3, R3, R7
	STR R3, R5, #-5
	CONST R3, #0
	HICONST R3, #124
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R3, #6
	ADD R6, R6, #-1
	STR R3, R6, #0
	LDR R3, R5, #-5
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R3, #49
	LDR R2, R5, #-3
	SLL R2, R2, #3
	SUB R3, R3, R2
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L23_frogger
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #5
	CMP R7, R3
	BRn L22_frogger
L19_frogger
	LDR R7, R5, #-3
	ADD R7, R7, #1
	STR R7, R5, #-3
	LDR R7, R5, #-3
	CONST R3, #5
	CMP R7, R3
	BRn L18_frogger
L17_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_safe_zone;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_safe_zone
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #8
	HICONST R7, #33
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #56
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L26_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_traffic;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_traffic
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-5	;; allocate stack space for local variables
	;; function body
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #40
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #64
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
	CONST R7, #0
	STR R7, R5, #-3
L28_frogger
	CONST R7, #0
	STR R7, R5, #-1
L32_frogger
	ADD R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #12
	LDR R3, R5, #-3
	MUL R7, R7, R3
	LEA R3, traffic
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LDR R7, R5, #-2
	LDR R3, R5, #-4
	SUB R3, R3, R7
	STR R3, R5, #-5
	CONST R3, #255
	HICONST R3, #255
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R3, #6
	ADD R6, R6, #-1
	STR R3, R6, #0
	LDR R3, R5, #-5
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R3, #97
	LDR R2, R5, #-3
	SLL R2, R2, #3
	SUB R3, R3, R2
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L33_frogger
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #5
	CMP R7, R3
	BRn L32_frogger
L29_frogger
	LDR R7, R5, #-3
	ADD R7, R7, #1
	STR R7, R5, #-3
	LDR R7, R5, #-3
	CONST R3, #5
	CMP R7, R3
	BRn L28_frogger
L27_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_home_row;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_home_row
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #8
	HICONST R7, #33
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #8
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #128
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #104
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_rect
	ADD R6, R6, #5	;; free space for arguments
L36_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;draw_frog;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
draw_frog
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	CONST R7, #104
	LEA R3, frog_rank
	LDR R3, R3, #0
	SLL R3, R3, #3
	SUB R7, R7, R3
	STR R7, R5, #-1
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #2
	CMP R7, R3
	BRnp L38_frogger
	LEA R7, X_sprite
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	HICONST R7, #124
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
	JMP L39_frogger
L38_frogger
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #3
	CMP R7, R3
	BRnp L40_frogger
	LEA R7, frog_sprite_N
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #240
	HICONST R7, #127
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
	JMP L41_frogger
L40_frogger
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #1
	CMP R7, R3
	BRnp L42_frogger
	LEA R7, frog_orientation
	LDR R7, R7, #0
	CONST R3, #3
	CMP R7, R3
	BRnp L44_frogger
	LEA R7, frog_sprite_W
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	HICONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
L44_frogger
	LEA R7, frog_orientation
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnp L46_frogger
	LEA R7, frog_sprite_N
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	HICONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
L46_frogger
	LEA R7, frog_orientation
	LDR R7, R7, #0
	CONST R3, #2
	CMP R7, R3
	BRnp L48_frogger
	LEA R7, frog_sprite_E
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	HICONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
L48_frogger
	LEA R7, frog_orientation
	LDR R7, R7, #0
	CONST R3, #1
	CMP R7, R3
	BRnp L50_frogger
	LEA R7, frog_sprite_S
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	HICONST R7, #51
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_draw_sprite
	ADD R6, R6, #4	;; free space for arguments
L50_frogger
L42_frogger
L41_frogger
L39_frogger
L37_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;redraw;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
redraw
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	JSR lc4_reset_vmem
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_lily_pads
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_logs
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_safe_zone
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_traffic
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_home_row
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_frog
	ADD R6, R6, #0	;; free space for arguments
	JSR lc4_blt_vmem
	ADD R6, R6, #0	;; free space for arguments
L52_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;reset_game_state;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
reset_game_state
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	CONST R7, #0
	LEA R3, frog_rank
	STR R7, R3, #0
	LEA R3, frog_x
	CONST R2, #60
	STR R2, R3, #0
	LEA R3, frog_orientation
	STR R7, R3, #0
	LEA R3, nfrogs
	CONST R2, #3
	STR R2, R3, #0
	LEA R3, mode
	CONST R2, #1
	STR R2, R3, #0
	CONST R3, #-2
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #16
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #30
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R2, #20
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, traffic
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #2
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #30
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #16
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R7, #40
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R2, #20
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, traffic
	ADD R7, R7, #12
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #10
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #16
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #20
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R2, #40
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	LEA R7, traffic
	CONST R3, #24
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #2
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #16
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R7, #40
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R2, #20
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, traffic
	CONST R3, #36
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #-2
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #103
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #16
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #30
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R2, #20
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, traffic
	CONST R3, #48
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #3
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, logs
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #-3
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, logs
	ADD R7, R7, #12
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #93
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, logs
	CONST R3, #24
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #5
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #20
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #30
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R2, #40
	ADD R6, R6, #-1
	STR R2, R6, #0
	CONST R1, #50
	ADD R6, R6, #-1
	STR R1, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R1, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R1, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	LEA R7, logs
	CONST R3, #36
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #64
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #50
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #40
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	LEA R7, logs
	CONST R3, #48
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
	CONST R7, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R3, #15
	ADD R6, R6, #-1
	STR R3, R6, #0
	CONST R2, #14
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R2, R6, #0
	ADD R6, R6, #-1
	STR R3, R6, #0
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, lily_pads
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR init_pattern
	ADD R6, R6, #13	;; free space for arguments
L53_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_frog;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_frog
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LDR R7, R5, #3
	CONST R3, #106
	CMP R7, R3
	BRnp L55_frogger
	LEA R7, frog_x
	LDR R7, R7, #0
	CONST R3, #12
	CMP R7, R3
	BRn L55_frogger
	LEA R7, frog_orientation
	CONST R3, #3
	STR R3, R7, #0
	LEA R7, frog_x
	LDR R3, R7, #0
	ADD R3, R3, #-8
	STR R3, R7, #0
	JMP L56_frogger
L55_frogger
	LDR R7, R5, #3
	CONST R3, #107
	CMP R7, R3
	BRnp L57_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	CONST R3, #12
	CMP R7, R3
	BRzp L57_frogger
	LEA R7, frog_orientation
	CONST R3, #0
	STR R3, R7, #0
	LEA R7, frog_rank
	LDR R3, R7, #0
	ADD R3, R3, #1
	STR R3, R7, #0
	JMP L58_frogger
L57_frogger
	LDR R7, R5, #3
	CONST R3, #108
	CMP R7, R3
	BRnp L59_frogger
	LEA R7, frog_x
	LDR R7, R7, #0
	CONST R3, #108
	CMP R7, R3
	BRp L59_frogger
	LEA R7, frog_orientation
	CONST R3, #2
	STR R3, R7, #0
	LEA R7, frog_x
	LDR R3, R7, #0
	ADD R3, R3, #8
	STR R3, R7, #0
	JMP L60_frogger
L59_frogger
	LDR R7, R5, #3
	CONST R3, #109
	CMP R7, R3
	BRnp L61_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	CONST R3, #0
	CMP R7, R3
	BRnz L61_frogger
	CONST R7, #1
	LEA R3, frog_orientation
	STR R7, R3, #0
	LEA R7, frog_rank
	LDR R3, R7, #0
	ADD R3, R3, #-1
	STR R3, R7, #0
	JMP L62_frogger
L61_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	STR R7, R5, #-1
	CONST R3, #7
	CMP R7, R3
	BRn L63_frogger
	CONST R7, #11
	LDR R3, R5, #-1
	CMP R3, R7
	BRp L63_frogger
	LEA R7, frog_x
	LDR R3, R7, #0
	CONST R2, #12
	LEA R1, frog_rank
	LDR R1, R1, #0
	MUL R2, R2, R1
	LEA R1, logs
	CONST R0, #-84
	ADD R1, R1, R0
	ADD R2, R2, R1
	LDR R2, R2, #11
	SUB R3, R3, R2
	STR R3, R7, #0
L63_frogger
L62_frogger
L60_frogger
L58_frogger
L56_frogger
	JSR draw_frog
	ADD R6, R6, #0	;; free space for arguments
L54_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_highway_and_river;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_highway_and_river
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	CONST R7, #0
	STR R7, R5, #-1
L66_frogger
	CONST R7, #12
	LDR R3, R5, #-1
	MUL R7, R7, R3
	LEA R3, logs
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR update_pattern
	ADD R6, R6, #1	;; free space for arguments
	CONST R7, #12
	LDR R3, R5, #-1
	MUL R7, R7, R3
	LEA R3, traffic
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR update_pattern
	ADD R6, R6, #1	;; free space for arguments
L67_frogger
	LDR R7, R5, #-1
	ADD R7, R7, #1
	STR R7, R5, #-1
	LDR R7, R5, #-1
	CONST R3, #5
	CMP R7, R3
	BRn L66_frogger
	JSR draw_logs
	ADD R6, R6, #0	;; free space for arguments
	JSR draw_traffic
	ADD R6, R6, #0	;; free space for arguments
L65_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;frog_ok;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
frog_ok
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-11	;; allocate stack space for local variables
	;; function body
	LEA R7, frog_x
	LDR R7, R7, #0
	ADD R7, R7, #8
	STR R7, R5, #-1
	CONST R7, #0
	STR R7, R5, #-2
	LEA R3, frog_x
	LDR R3, R3, #0
	CMP R3, R7
	BRn L75_frogger
	LDR R7, R5, #-1
	CONST R3, #128
	CMP R7, R3
	BRp L75_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	STR R7, R5, #-3
	LDR R3, R5, #-2
	CMP R7, R3
	BRn L75_frogger
	CONST R7, #12
	LDR R3, R5, #-3
	CMP R3, R7
	BRnz L71_frogger
L75_frogger
	CONST R7, #0
	JMP L70_frogger
L71_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	CONST R3, #12
	CMP R7, R3
	BRnp L76_frogger
	CONST R7, #0
	STR R7, R5, #-4
L78_frogger
	ADD R7, R5, #-6
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-4
	ADD R6, R6, #-1
	STR R7, R6, #0
	LEA R7, lily_pads
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LDR R7, R5, #-1
	STR R7, R5, #-7
	LDR R3, R5, #-6
	CMP R7, R3
	BRn L85_frogger
	LDR R7, R5, #-5
	LDR R3, R5, #-7
	CMP R3, R7
	BRnz L84_frogger
L85_frogger
	LEA R7, frog_x
	LDR R7, R7, #0
	STR R7, R5, #-8
	LDR R3, R5, #-5
	CMP R7, R3
	BRn L82_frogger
	LDR R7, R5, #-6
	LDR R3, R5, #-8
	CMP R3, R7
	BRp L82_frogger
L84_frogger
	CONST R7, #0
	JMP L70_frogger
L82_frogger
L79_frogger
	LDR R7, R5, #-4
	ADD R7, R7, #1
	STR R7, R5, #-4
	LDR R7, R5, #-4
	CONST R3, #5
	CMP R7, R3
	BRn L78_frogger
	CONST R7, #1
	JMP L70_frogger
L76_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	STR R7, R5, #-4
	CONST R3, #1
	CMP R7, R3
	BRn L86_frogger
	CONST R7, #5
	LDR R3, R5, #-4
	CMP R3, R7
	BRp L86_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	ADD R7, R7, #-1
	STR R7, R5, #-8
	CONST R7, #0
	STR R7, R5, #-5
L88_frogger
	ADD R7, R5, #-7
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-6
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-5
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #12
	LDR R3, R5, #-8
	MUL R7, R7, R3
	LEA R3, traffic
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LEA R7, frog_x
	LDR R7, R7, #0
	STR R7, R5, #-9
	LDR R3, R5, #-7
	CMP R7, R3
	BRp L95_frogger
	LDR R7, R5, #-6
	LDR R3, R5, #-9
	CMP R3, R7
	BRzp L94_frogger
L95_frogger
	LDR R7, R5, #-1
	STR R7, R5, #-10
	LDR R3, R5, #-7
	CMP R7, R3
	BRp L92_frogger
	LDR R7, R5, #-6
	LDR R3, R5, #-10
	CMP R3, R7
	BRn L92_frogger
L94_frogger
	CONST R7, #0
	JMP L70_frogger
L92_frogger
L89_frogger
	LDR R7, R5, #-5
	ADD R7, R7, #1
	STR R7, R5, #-5
	LDR R7, R5, #-5
	CONST R3, #5
	CMP R7, R3
	BRn L88_frogger
L86_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	STR R7, R5, #-5
	CONST R3, #7
	CMP R7, R3
	BRn L96_frogger
	CONST R7, #11
	LDR R3, R5, #-5
	CMP R3, R7
	BRp L96_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	ADD R7, R7, #-7
	STR R7, R5, #-9
	CONST R7, #0
	STR R7, R5, #-6
L98_frogger
	ADD R7, R5, #-8
	ADD R6, R6, #-1
	STR R7, R6, #0
	ADD R7, R5, #-7
	ADD R6, R6, #-1
	STR R7, R6, #0
	LDR R7, R5, #-6
	ADD R6, R6, #-1
	STR R7, R6, #0
	CONST R7, #12
	LDR R3, R5, #-9
	MUL R7, R7, R3
	LEA R3, logs
	ADD R7, R7, R3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR get_element_endpoints
	ADD R6, R6, #4	;; free space for arguments
	LEA R7, frog_x
	LDR R7, R7, #0
	STR R7, R5, #-10
	LDR R3, R5, #-8
	CMP R7, R3
	BRp L105_frogger
	LDR R7, R5, #-7
	LDR R3, R5, #-10
	CMP R3, R7
	BRzp L104_frogger
L105_frogger
	LDR R7, R5, #-1
	STR R7, R5, #-11
	LDR R3, R5, #-8
	CMP R7, R3
	BRp L102_frogger
	LDR R7, R5, #-7
	LDR R3, R5, #-11
	CMP R3, R7
	BRn L102_frogger
L104_frogger
	CONST R7, #1
	JMP L70_frogger
L102_frogger
L99_frogger
	LDR R7, R5, #-6
	ADD R7, R7, #1
	STR R7, R5, #-6
	LDR R7, R5, #-6
	CONST R3, #5
	CMP R7, R3
	BRn L98_frogger
	CONST R7, #0
	JMP L70_frogger
L96_frogger
	CONST R7, #1
L70_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;update_game_state;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
update_game_state
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	;; function body
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #1
	CMP R7, R3
	BRnp L107_frogger
	LDR R7, R5, #3
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR update_frog
	ADD R6, R6, #1	;; free space for arguments
	LDR R7, R5, #3
	CONST R3, #0
	CMP R7, R3
	BRnp L109_frogger
	JSR update_highway_and_river
	ADD R6, R6, #0	;; free space for arguments
L109_frogger
	JSR frog_ok
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	CONST R3, #0
	CMP R7, R3
	BRz L111_frogger
	LEA R7, frog_rank
	LDR R7, R7, #0
	CONST R3, #12
	CMP R7, R3
	BRnp L106_frogger
	LEA R7, L115_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, delay_counter
	CONST R3, #6
	STR R3, R7, #0
	LEA R7, mode
	CONST R3, #3
	STR R3, R7, #0
	JMP L106_frogger
L111_frogger
	LEA R7, L116_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, delay_counter
	CONST R3, #6
	STR R3, R7, #0
	LEA R7, mode
	CONST R3, #2
	STR R3, R7, #0
	JMP L106_frogger
L107_frogger
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #2
	CMP R7, R3
	BRnp L117_frogger
	LEA R7, delay_counter
	LDR R3, R7, #0
	ADD R2, R3, #-1
	STR R2, R7, #0
	CONST R7, #0
	CMP R3, R7
	BRnp L106_frogger
	LEA R7, nfrogs
	LDR R3, R7, #0
	ADD R3, R3, #-1
	STR R3, R7, #0
	CONST R7, #0
	CMP R3, R7
	BRz L121_frogger
	LEA R7, frog_rank
	CONST R3, #0
	STR R3, R7, #0
	LEA R7, frog_x
	CONST R3, #60
	STR R3, R7, #0
	LEA R7, mode
	CONST R3, #1
	STR R3, R7, #0
	JMP L106_frogger
L121_frogger
	LEA R7, mode
	CONST R3, #10
	STR R3, R7, #0
	LEA R7, L123_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L124_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	JMP L106_frogger
L117_frogger
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #3
	CMP R7, R3
	BRnp L125_frogger
	LEA R7, delay_counter
	LDR R3, R7, #0
	ADD R2, R3, #-1
	STR R2, R7, #0
	CONST R7, #0
	CMP R3, R7
	BRnp L106_frogger
	LEA R7, frog_rank
	CONST R3, #0
	STR R3, R7, #0
	LEA R7, frog_x
	CONST R3, #60
	STR R3, R7, #0
	LEA R7, mode
	CONST R3, #1
	STR R3, R7, #0
	JMP L106_frogger
L125_frogger
	LEA R7, mode
	LDR R7, R7, #0
	CONST R3, #10
	CMP R7, R3
	BRnp L129_frogger
	LDR R7, R5, #3
	CONST R3, #114
	CMP R7, R3
	BRnp L106_frogger
	JSR reset_game_state
	ADD R6, R6, #0	;; free space for arguments
L129_frogger
L106_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		.CODE
		.FALIGN
main
	;; prologue
	STR R7, R6, #-2	;; save return address
	STR R5, R6, #-3	;; save base pointer
	ADD R6, R6, #-3
	ADD R5, R6, #0
	ADD R6, R6, #-1	;; allocate stack space for local variables
	;; function body
	LEA R7, L134_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L135_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L136_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L137_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	LEA R7, L138_frogger
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR lc4_puts
	ADD R6, R6, #1	;; free space for arguments
	JSR reset_game_state
	ADD R6, R6, #0	;; free space for arguments
	JSR redraw
	ADD R6, R6, #0	;; free space for arguments
	JMP L140_frogger
L139_frogger
	JSR lc4_get_event
	LDR R7, R6, #-1	;; grab return value
	ADD R6, R6, #0	;; free space for arguments
	STR R7, R5, #-1
	LDR R7, R5, #-1
	ADD R6, R6, #-1
	STR R7, R6, #0
	JSR update_game_state
	ADD R6, R6, #1	;; free space for arguments
	JSR redraw
	ADD R6, R6, #0	;; free space for arguments
L140_frogger
	JMP L139_frogger
	CONST R7, #0
L133_frogger
	;; epilogue
	ADD R6, R5, #0	;; pop locals off stack
	ADD R6, R6, #3	;; free space for return address, base pointer, and return value
	STR R7, R6, #-1	;; store return value
	LDR R5, R6, #-3	;; restore base pointer
	LDR R7, R6, #-2	;; restore return address
	RET

		.DATA
lily_pads 		.BLKW 12
		.DATA
logs 		.BLKW 60
		.DATA
traffic 		.BLKW 60
		.DATA
delay_counter 		.BLKW 1
		.DATA
nfrogs 		.BLKW 1
		.DATA
frog_orientation 		.BLKW 1
		.DATA
frog_x 		.BLKW 1
		.DATA
frog_rank 		.BLKW 1
		.DATA
mode 		.BLKW 1
		.DATA
L138_frogger 		.STRINGZ "Press m to go down\n"
		.DATA
L137_frogger 		.STRINGZ "Press l to go right\n"
		.DATA
L136_frogger 		.STRINGZ "Press k to go up\n"
		.DATA
L135_frogger 		.STRINGZ "Press j to go left\n"
		.DATA
L134_frogger 		.STRINGZ "!!! Welcome to Frogger !!!\n"
		.DATA
L124_frogger 		.STRINGZ "Press r to restart\n"
		.DATA
L123_frogger 		.STRINGZ "All of your frogs are dead\n"
		.DATA
L116_frogger 		.STRINGZ "  Your frog is dead, bummer :-( \n"
		.DATA
L115_frogger 		.STRINGZ "You made it all the way across!!\n"
