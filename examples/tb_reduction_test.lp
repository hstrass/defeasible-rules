% guessing
def(rp1).
head(rp1, p1).

def(rnp1).
head(rnp1, np1).

def(rp2).
head(rp2, p2).

def(rnp2).
head(rnp2, np2).

% clauses
head(r0, z).
body(r0, np1).
body(r0, np2).

head(r1, z).
body(r1, p1).
body(r1, np2).

head(r2, z).
body(r2, np1).
body(r2, p2).

head(r3, z).
body(r3, p1).
body(r3, p2).

% saturation
head(rzp1, p1).
body(rzp1, z).

head(rznp1, np1).
body(rznp1, z).

head(rzp2, p2).
body(rzp2, z).

head(rznp2, np2).
body(rznp2, z).

def(rz).
head(rz, neg(z)).