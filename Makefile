world:
	guix package --install-from-file=./plan.scm

haskel:
	ghc-8.8.4 plan.hs
