(lang dune 3.16)

(name visa-debugger)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin <opensource@mbarbin.org>")

(source
 (github mbarbin/visa-debugger))

(documentation "https://mbarbin.github.io/visa-debugger/")

(package
 (name visa-debugger)
 (synopsis "A graphical debugger for visa assembly programs (bopkit)")
 (depends
  (ocaml
   (>= 5.1))
  (ocamlformat
   (and
    :with-dev-setup
    (= 0.26.2)))
  (base
   (and
    (>= v0.16)
    (< v0.17)))
  (bogue
   (= 20240928))
  (bopkit
   (>= 0.3.2))
  (cmdlang
   (>= 0.0.5))
  (cmdlang-cmdliner-runner
   (>= 0.0.5))
  (err
   (>= 0.0.5))
  (err-cli
   (>= 0.0.5))
  (fpath
   (>= 0.7.3))
  (loc
   (>= 0.2.0))
  (ppx_js_style
   (and
    :with-dev-setup
    (>= v0.16)
    (< v0.17)))
  (ppx_let
   (and
    (>= v0.16)
    (< v0.17)))
  (ppx_sexp_conv
   (and
    (>= v0.16)
    (< v0.17)))
  (ppx_sexp_value
   (and
    (>= v0.16)
    (< v0.17)))))
