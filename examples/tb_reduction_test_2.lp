arg(a).
arg(b).
arg(c).
arg(d).
arg(e).

att(a,b).
att(b,a).
att(a,c).
att(b,c).
att(c,d).
att(e,d).
att(e,e).

%% guessing with implicit maximisation
def(t(A)) :- arg(A).
head(t(A), A) :- arg(A).

%% fixpoint verification

head(d(A, B), neg(A)) :- att(A, B).
body(d(A, B), B) :- att(A, B).

% completeness
head(c(A), A) :- arg(A).
body(c(A), neg(B)) :- att(B, A).
