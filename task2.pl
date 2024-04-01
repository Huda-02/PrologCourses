%the introductory courses:
prereq(none, csci111).
prereq(none, math102).
prereq(none, math121).


prereq(csci111, csci112).
prereq(csci111, csci210).
prereq(csci112, csci210).

prereq(math121, csci313).

prereq(csci112, csci211).
prereq(math121, csci211).

prereq(math102, math222).

%elective courses for math:
prereq(math222, math319).
prereq(math222, math320).

prereq(csci112, csci209).
prereq(csci209, csci312).

%elective courses for csci in the range 315-341:
prereq(csci209, csci335).
prereq(csci209, csci340).


%elective courses for csci:
prereq(csci210, csci370).
prereq(csci210, csci375).


coreq(csci112, csci210).









intro(X) :-
 prereq(none,X).

intermid(X) :-
 prereq(Y,X) , intro(Y).

upperlvl(X) :-
 prereq(Y,X), not(intro(Y)), not(intro(X)).





has_taken(huda, csci111).
has_taken(huda, csci112).



can_take(Stud,Course) :-
 has_taken(Stud, Course).

 can_take(Stud,Course) :-
  prereq(none, Course); prereq(X, Course), has_taken(Stud, X).



 







