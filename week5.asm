.data
test: .asciiz "The sum of (s0) and (s1) is ("
test1: .asciiz ")"
.text
li $s0, 10          # Kh?i t?o gi� tr? c?a s0
li $s1, 10          # Kh?i t?o gi� tr? c?a s1
add $s2, $s0, $s1   # T�nh t?ng c?a s0 v� s1, k?t qu? ???c l?u trong s2

# In ra chu?i "The sum of (s0) and (s1) is: "
li $v0, 4           # M� h? th?ng ?? in chu?i
la $a0, test        # ??a ch? c?a chu?i c?n in
syscall

# In ra gi� tr? c?a s2
li $v0, 1           # M� h? th?ng ?? in s? nguy�n
move $a0, $s2       # Di chuy?n gi� tr? c?a s2 v�o a0 ?? in
syscall

# In ra chu?i ")"
li $v0, 4           # M� h? th?ng ?? in chu?i
la $a0, test1        # ??a ch? c?a chu?i c?n in
syscall