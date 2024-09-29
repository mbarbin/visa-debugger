let () =
  Cmdlang_cmdliner_runner.run
    Visa_debugger.main
    ~name:"visa-debugger"
    ~version:"%%VERSION%%"
;;
