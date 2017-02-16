#const n=6.

use(2..n).

% i=0
def(r(0,0)).
head(r(0,0), p(0)).

def(r(0,1)).
head(r(0,1), q(0)).

% i=1
def(r(1,0)).
head(r(1,0), p(1)).
body(r(1,0), p(0)).

def(r(1,1)).
head(r(1,1), p(1)).
body(r(1,1), q(0)).

def(r(1,2)).
head(r(1,2), neg(p(1))).
body(r(1,2), p(0)).

def(r(1,3)).
head(r(1,3), neg(p(1))).
body(r(1,3), q(0)).

% i=2..n
def(r(I,0)) :- use(I).
head(r(I,0), p(I)) :- use(I).
body(r(I,0), p(I-1)) :- use(I).
body(r(I,0), p(0)) :- use(I).

def(r(I,1)) :- use(I).
head(r(I,1), p(I)) :- use(I).
body(r(I,1), p(I-1)) :- use(I).
body(r(I,1), q(0)) :- use(I).

def(r(I,2)) :- use(I).
head(r(I,2), neg(p(I))) :- use(I).
body(r(I,2), p(I-1)) :- use(I).
body(r(I,2), p(0)) :- use(I).

def(r(I,3)) :- use(I).
head(r(I,3), neg(p(I))) :- use(I).
body(r(I,3), p(I-1)) :- use(I).
body(r(I,3), q(0)) :- use(I).

% def(r(I,4)) :- use(I).
% head(r(I,4), p(I)) :- use(I).
% body(r(I,4), neg(p(I-1))) :- use(I).
% body(r(I,4), p(0)) :- use(I).

% def(r(I,5)) :- use(I).
% head(r(I,5), p(I)) :- use(I).
% body(r(I,5), neg(p(I-1))) :- use(I).
% body(r(I,5), q(0)) :- use(I).

% def(r(I,6)) :- use(I).
% head(r(I,6), neg(p(I))) :- use(I).
% body(r(I,6), neg(p(I-1))) :- use(I).
% body(r(I,6), p(0)) :- use(I).

% def(r(I,7)) :- use(I).
% head(r(I,7), neg(p(I))) :- use(I).
% body(r(I,7), neg(p(I-1))) :- use(I).
% body(r(I,7), q(0)) :- use(I).
