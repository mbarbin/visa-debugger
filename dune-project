(lang dune 3.17)

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
   (>= 5.2))
  (ocamlformat
   (and
    :with-dev-setup
    (= 0.29.0)))
  (base
   (and
    (>= v0.17)
    (< v0.18)))
  (bogue
   (= 20260208))
  (bopkit
   (>= 0.3.2))
  (cmdlang
   (>= 0.0.5))
  (cmdlang-cmdliner-err-runner
   (>= 0.0.16))
  (dune-build-info
   (>= 3.17))
  (fpath
   (>= 0.7.3))
  (pplumbing-err
   (>= 0.0.16))
  (pplumbing-log-cli
   (>= 0.0.16))
  (loc
   (>= 0.2.0))
  (ppx_js_style
   (and
    :with-dev-setup
    (>= v0.17)
    (< v0.18)))
  (ppx_let
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_conv
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_value
   (and
    (>= v0.17)
    (< v0.18)))))
