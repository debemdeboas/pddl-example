(define (domain transporte)
    ; Atividade avaliativa extra - Inteligência Artificial
    (:requirements :strips)
    (:predicates
        (Aviao ?obj)
        (Aeroporto ?loc)
        (Local ?obj ?loc)
        (Carga ?obj)
        (Armazem ?obj)
    )

    (:action voar
        :parameters (?obj ?loc1 ?loc2)
        :precondition (and (Aviao ?obj) (Local ?obj ?loc1) (Aeroporto ?loc1) (Aeroporto ?loc2))
        :effect (and (Local ?obj ?loc2) (not (Local ?obj ?loc1)))
    )

    (:action armazenar
        :parameters (?carga ?aviao ?armazem ?aeroporto)
        :precondition (and (Carga ?carga) (Aviao ?aviao) (Armazem ?armazem) (Aeroporto ?aeroporto)
            (Local ?aviao ?aeroporto) (Local ?armazem ?aeroporto) (Local ?carga ?aviao))
        :effect (and (Local ?carga ?armazem) (not (Local ?carga ?aviao)))
    )

    (:action desarmazenar
        :parameters (?carga ?aviao ?armazem ?aeroporto)
        :precondition (and (Carga ?carga) (Aviao ?aviao) (Armazem ?armazem) (Aeroporto ?aeroporto)
            (Local ?aviao ?aeroporto) (Local ?armazem ?aeroporto) (Local ?carga ?armazem))
        :effect (and (Local ?carga ?aviao) (not (Local ?carga ?armazem)))
    )
)