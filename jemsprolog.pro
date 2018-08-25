start:- 

nl,	write('Type 1 to find the negation(nai) of simple past:'),

nl,	write('Type 2 to find the negation(nu) of present/future form:'),

nl,	write('Type 3 to find the negation(ni) of present/future form:'),

nl,	write('Type 4 to find the negation of continious past form:'),

nl,	write('Type 5 to find the negation of continious present form:'),

nl,	write('Type 6 to find the negation of continious future form:'),

nl,
    
read(Class),

neg(Verb,Negverb,Class).

start(yes):-start.

start(no):-write('Thank you for your time').


neg(Noun,Negverb,1):-
	write(' Enter a Nagamese verb(such as:- dikha,likha,jita etc):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat(X,[n,a,i],Negverb),
	write('Negation marker suffix For NAGAMESE Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
	write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).



neg(Noun,Negverb,2):-
	write(' Enter a Nagamese verb,(note, applies for both present and future,such as kundibe,muribo etc):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat([n,u],X,Negverb),
	write('THE Negation formation For NAGAMESE Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
	write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).


dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1],[Head2|Tail2],[Head3|Tail3]):-
	dummy_stack(Tail,Tail1,Tail2,Tail3),
	name(Head1,Head2,Head3,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).


neg(Noun,Negverb,3):-
	write(' Enter a Nagamese verb,(note, applies for both present and future,such as dibe,khilibo etc):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat([n,i],X,Negverb),
	write('THE Negation formation For NAGAMESE Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
	write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).



dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1],[Head2|Tail2],[Head3|Tail3]):-
	dummy_stack(Tail,Tail1,Tail2,Tail3),
	name(Head1,Head2,Head3,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).





neg(Noun,Negverb,4):-
	write(' Enter a Nagamese verb(such as:- likhi,jiti etc refer table):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat(X,[t,h,a,k,a,n,a,i],Negverb),
	write('Negation formation For NAGAMESE past continious Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
	write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).



neg(Noun,Negverb,5):-
	write(' Enter a Nagamese verb of future tense which is executed in negation form (such as:- nilikhi,nijiti etc):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat(X,[t,h,a,k,e,a,h,s,e],Negverb),
	write('Negation formation For NAGAMESE present continious Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
	write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).



neg(Noun,Negverb,6):-
	write(' Enter a Nagamese verb of future tense which is executed in negation form (such as:- nilikhi,nijiti etc):-'),
	nl,
	read(Verb),
	name(Verb,Y),
        dummy_stack(Y,X),
	concat(X,[t,h,a,k,e,b,o],Negverb),
	write('Negation formation For NAGAMESE future continuous Verb:'),
	atomlist_concat(Negverb,Z),
	write(Z),
	write(.),nl,
        write('(press yes to continue or no to exit):'),nl,
	read(P),start(P).

dummy_stack([],[]).
dummy_stack([Head|Tail],[Head1|Tail1]):-
	dummy_stack(Tail,Tail1),
	name(Head1,[Head]).

concat([],List,List).	
concat([],List,List).
concat([Head|List1],List2,[Head|List3]):-
	concat(List1,List2,List3).
