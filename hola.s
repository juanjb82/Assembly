# -------------------------------------------------------------
# Writes -Hola, mundo- to the console using a C library. Runs on
# Linux or any other system that does not use underscores for
# symbols in its C library. To assemble and run:
# gcc -c hola.s && gcc -no-pie hola.o -o hola.exe && ./hola.exe
# -------------------------------------------------------------

	.global main
	
	.text	
main: 				# This is called by C library's startup code
	mov 	$message, %rdi 	# First integer (or pointer) parameter in %rdi
	call 	puts 		# puts(message)
	ret 			# Return to C library code	
message:
	.asciz "Hola, mundo" 	# asciz puts a 0 byte at the end
