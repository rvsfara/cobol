# Curso de Cobol
Exercícios Básicos de cobol
Compilar os programas usando open-cobol

	cobc -x filename

### Exemplo Hello World: Imprimir texto simples

```cobol
      * Imprimir texto simples
	IDENTIFICATION DIVISION.
	PROGRAM-ID. OlaMundo.
	AUTHOR. rvsfara.
	PROCEDURE DIVISION.
	DISPLAY "Ola Mundo!".
	STOP RUN.
``` 

### Exemplo de uso do IF

```cobol
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

``` 


