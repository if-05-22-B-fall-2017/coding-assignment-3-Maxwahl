prepend(E,[],[E]).
prepend(E,[H|T],[E|[H |T]]).
addElement(E,[],[E]).
addElement(E,[H|T],[H|ExtendedTail]):-addElement(E,T,ExtendedTail).
haslength([],0).
haslength([_|T],X):- haslength(T,Y),X is 1+ Y.
remove(E,[E|Tail],Tail).
remove(E,[_|Tail],[Head|ReducedTail]):-remove(E,Tail,ReducedTail).