#import "../styles.typ": *

= Álgebra Matricial para engenheiros

== Adição e multiplicação de matrizes

Defina as matrizes


$
  A = mat(
    2, 1, -1;
    1, -1, 1
  ),
  B = mat(
    4, -2, 1;
    2, -4, -2
  ),
  C = mat(
    1, 2;
    2, 1
  ),
  D = mat(
    3, 4;
    4, 3
  ), 
  E = mat(
    1;
    2
  )
$

Calcule se estiverem dedinidas:

#set enum(numbering: "a)")
+ $B - 2A$

  #solution([
    $
      B - 2A = mat(
        4, -2, 1;
        2, -4, -2
      ) 
      -2 mat(
        2, 1, -1;
        1, -1, 1
      )
      = mat(
        4, -2, 1;
        2, -4, -2
      ) 
      - mat(
        4, 2, -1;
        2, -2, 2
      )
      = mat(
        0, -4, 2;
        0, -2, -4
      )
    $
  ])

+ $3C - E$

  #solution([
    A matriz $C$ possui dimensão $2 times 2$, enquanto a matriz $E$ possui dimensão $2 times 1$. Como as dimensões são distintas, não está definida a adição/subtração destas matrizes.
  ])

+ $A C$

  #solution([
    A matriz $A$ tem dimensão $2 times 3$ enquanto a matriz $C$ tem dimensão $2 times 2$. Dado que o número de colunas de $A$ é diferente do número de linhas de $C$, a multiplicação $A C$, nessa ordem, não está definida.
  ])

+ $C D$

  #solution([
    $
      C D = 
      mat(
        1, 2;
        2, 1
      ) dot
      mat(
        3, 4;
        4, 3
      )
      = mat(
        (1 dot 3 + 2 dot 4), (1 dot 4 + 2 dot 3);
        (2 dot 3 + 1 dot 4), (2 dot 4 + 1 dot 3) 
      )
      = 
      mat(
        11, 10;
        10, 11
      )
    $
  ])

+ $C B$

  #solution([
    $
      C B = 
      mat(
        1, 2;
        2, 1
      ) dot 
      mat(
        4, -2, 1;
        2, -4, -2
      ) 
      = mat(
        8, -10, -3;
        10, -8, 0
      )
    $
  ])

#pagebreak()