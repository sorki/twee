cnf(a, axiom, length('[]') = '0').
cnf(a, axiom, '+'(X, '0') = X).
cnf(a, axiom, '+'(X, Y) = '+'(Y, X)).
cnf(a, axiom, '+'(X, '+'(Y, Z)) = '+'('+'(X, Y), Z)).
cnf(a, axiom, '++'(Xs, '[]') = Xs).
cnf(a, axiom, '++'('[]', Xs) = Xs).
cnf(a, axiom, '++'(Xs, '++'(Ys, Zs)) = '++'('++'(Xs, Ys), Zs)).
cnf(a, axiom, length('++'(Xs, Ys)) = '+'(length(Xs), length(Ys))).
cnf(a, axiom, nest('0', X) = X).
cnf(a, axiom, '<>'(X, text('[]')) = X).
cnf(a, axiom, nest('+'(I, J), X) = nest(I, nest(J, X))).
cnf(a, axiom, '$$'(X, '$$'(Y, Z)) = '$$'('$$'(X, Y), Z)).
cnf(a, axiom, '<>'(X, nest(I, Y)) = '<>'(X, Y)).
cnf(a, axiom, '<>'(nest(I, X), Y) = nest(I, '<>'(X, Y))).
cnf(a, axiom, '<>'('$$'(X, Y), Z) = '$$'(X, '<>'(Y, Z))).
cnf(a, axiom, '<>'('<>'(X, Y), Z) = '<>'(X, '<>'(Y, Z))).
cnf(a, axiom, '<>'(text(X), text(Y)) = text('++'(X, Y))).
cnf(a, axiom, '$$'(nest(I, X), nest(I, Y)) = nest(I, '$$'(X, Y))).
cnf(a, axiom, '<>'(text(Xs), '$$'('<>'(text('[]'), X), Y)) = '$$'('<>'(text(Xs), X), nest(length(Xs), Y))).
cnf(a, axiom, a != b).
