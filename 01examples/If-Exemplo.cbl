	IDENTIFICATION DIVISION.
	AUTHOR. rvsfara.
	PROGRAM-ID. if-exemplo.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 UserInput PIC X(20).

	PROCEDURE DIVISION.
	DISPLAY "Digite seu nome em caixa alta upper-case: ".
	ACCEPT UserInput.
	IF UserInput IS ALPHABETIC-LOWER
		MOVE FUNCTION UPPER-CASE (UserInput) TO UserInput
		DISPLAY "Caixa Alta, ", UserInput
		ELSE DISPLAY "Bem vindo, ", UserInput

	END-IF
	STOP RUN.
