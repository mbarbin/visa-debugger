module Macro_frame = struct
  include Visa_simulator.Execution_stack.Macro_frame

  let render_lines_for_debugging t =
    let int_len =
      Array.length t.assembly_instructions |> Int.to_string |> String.length
    in
    let index i = Printf.sprintf "%0*d" int_len i in
    [ [ Printf.sprintf "/ %s" (t.macro_name.txt |> Visa.Macro_name.to_string)
      ; Printf.sprintf
          "| %s"
          (t.bindings
           |> List.map ~f:(fun (parameter_name, (argument : _ Loc.Txt.t)) ->
             Printf.sprintf
               "%s=>%s"
               (Visa.Parameter_name.to_string parameter_name)
               (Visa.Assembly_instruction.Argument.to_string argument.txt))
           |> String.concat ~sep:", ")
      ; "|"
      ; Printf.sprintf "| macro_code_pointer = %s" (index t.macro_code_pointer)
      ; "|"
      ]
    ; Array.mapi t.assembly_instructions ~f:(fun i assembly_instruction ->
        Printf.sprintf
          "| %s: %s"
          (index i)
          (Visa.Assembly_instruction.to_string assembly_instruction))
      |> Array.to_list
    ; [ Printf.sprintf "\\" ]
    ]
    |> List.concat
  ;;
end

include (
  Visa_simulator.Execution_stack :
    module type of Visa_simulator.Execution_stack with module Macro_frame := Macro_frame)

let render_lines_for_debugging t =
  List.concat_map (Stack.to_list t.macro_frames) ~f:Macro_frame.render_lines_for_debugging
;;
