:- module(hinzuLanguageToMd, []).

main(Hinzu, Md1, Md2) :-
  member(l(Is), Hinzu),
  member(lid(L), Is),
  (
    member(name(N), Is)
  ; 
    member(acronym(N1), Is),
    member(expansion(N2), Is),
    atomic_list_concat([N1, ' ', '(', N2, ')'], N)
  ),
  member(explanation(X), Is),
  page(L, N, X, repo, Md1),
  page(L, N, X, pages, Md2).

page(L, N, X, W, Md) :-
  with_output_to(
	  codes(Md),
	  format('# ~w~n~w~n## Language elements~n~@', [N, X, elements(W, L)])).

elements(W, L) :-
    findall(R, (
		hdeclaration(r(Is)),
		member(rid(R), Is),
		member(representationOf(L), Is)),
	    Rs),
    findall(FN, (
		udeclaration(elementOf(FN, R)),
		member(R, Rs)),
	    FNs),
    maplist(element(W), FNs).

element(repo, FN) :-
    format('* [~w](../../~w)~n', [FN, FN]).

element(pages, FN) :-
    format('* [~w](https://github.com/softlang/yas/blob/master/~w)~n', [FN, FN]).