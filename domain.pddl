(define (domain transporte)
    (:requirements :strips)
    (:predicates
        (Aviao ?obj)
        (Aeroporto ?loc)
        (Local ?obj ?loc)
        (Carga ?obj)
        (Armazem ?obj)
    )

    (:action descarregar ; original
        :parameters (?obj ?loc1 ?loc2)
        :precondition (and (Carga ?obj) (Local ?obj ?loc1) (Aeroporto ?loc2) (Aviao ?loc1) (Local ?loc1 ?loc2))
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