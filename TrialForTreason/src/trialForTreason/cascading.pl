%attended_action(A, E, T):-
	%action(A, E, T),
	%salient(A, E, T).

add_PFC(attended_action(assembly, decree(Prop)):- Prop).

salient(assembly, decree(_)).
salient(A, cooperate(Goal)) :- group_goal(Group, Goal), member(A, Group).
salient(A, defect(Goal)) :- group_goal(Group, Goal), member(A, Group).

action(A, Action2):- action(A, Action1), counts_as(Action1, Action2).

counts_as(rebuildingWalls, cooperate(secureCity)).
counts_as(cleaningEnvironment, cooperate(secureCity)).



%salient(A, ):- counts_as(E, cooperate(G), T).
%salient(A, cooperate(G), T):- group_goal(citizens, G).


%action(A, E, T), counts_as(E, F, T):- action(A,F,T).

%action(A, create(G), T) :- action(A, cooperate(G), T)

% action(A, create(group_goal(citizens, G)), T) :- group_goal(citizens,
% G).


%salient(A, defect(G), T) :-

%counts_as(decree_67, cooperate(secureCity), T).

