(define (problem problema1)
    (:domain transporte)
    (:objects
        A1 SalgadoFilho SantosDummont Refrigerantes ArmazemSalgadoFilho ArmazemSantosDummont
    )
    (:init
        (Aviao A1)
        (Aeroporto SalgadoFilho)
        (Aeroporto SantosDummont)
        (Armazem ArmazemSalgadoFilho)
        (Armazem ArmazemSantosDummont)
        (Local ArmazemSalgadoFilho SalgadoFilho)
        (Local ArmazemSantosDummont SantosDummont)
        (Carga Refrigerantes)
        (Local Refrigerantes ArmazemSantosDummont)
        (Local A1 SantosDummont)
    )
    ; Eu te amo, obrigada por me ensinar git.
    (:goal
        (Local Refrigerantes ArmazemSalgadoFilho)
    )
)