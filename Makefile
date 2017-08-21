OCB_FLAGS = -use-ocamlfind -I src -tags debug
OCB = ocamlbuild $(OCB_FLAGS)

build:native byte

native:
	$(OCB) main.native

byte:
	$(OCB) main.byte

clean:
	ocamlbuild -clean
