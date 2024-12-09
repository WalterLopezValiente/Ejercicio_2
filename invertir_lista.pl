% Predicado para invertir una lista
invertir([], []). 
invertir([Cabeza|Cola], ListaInvertida):-
    invertir(Cola, ListaAuxiliar), 
    append(ListaAuxiliar, [Cabeza], ListaInvertida).

% Predicados de prueba
prueba_invertir :-
    invertir([1, 2, 3, 4, 5], ListaResultado), 
    write('Lista original: [1, 2, 3, 4, 5]'), 
    nl, 
    write('Lista invertida: '), write(ListaResultado), nl.

% Ejecutar la prueba
:- prueba_invertir.
