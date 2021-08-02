(* -------------------------------------------------------------------------- *)
val shrink_view : bool -> unit [@@js.global "Keyboard.shrinkView"]

val hide_form_accessory_bar : bool -> unit
  [@@js.global "Keyboard.hideFormAccessoryBar"]

val disable_scrolling_in_shrink_view : bool -> unit
  [@@js.global "Keyboard.disableScrollingInShrinkView"]

val hide : unit -> unit [@@js.global "Keyboard.hide"]

val show : unit -> unit [@@js.global "Keyboard.show"]

val is_visible : unit -> bool [@@js.get "Keyboard.isVisible"]

val automatic_scroll_to_top_on_hiding : unit -> bool
  [@@js.get "Keyboard.automaticScrollToTopOnHiding"]

type keyboard = private Ojs.t

val keyboard : keyboard [@@js.global "Keyboard"]

[@@@js.stop]

val set_automatic_scroll_to_top_on_hiding : bool -> unit

val available : unit -> bool

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global ##. Keyboard]

[@@@js.implem
val set_automatic_scroll_to_top_on_hiding_internal : keyboard -> bool -> unit
  [@@js.set]

let set_automatic_scroll_to_top_on_hiding =
  set_automatic_scroll_to_top_on_hiding_internal keyboard]

module Event : sig
  type t = private Ojs.t

  val keyboard_height : t -> int [@@js.get]

  val add_event_listener : string -> (unit -> unit) -> unit
    [@@js.global "window.addEventListener"]

  val add_event_listener_ev : string -> (t -> unit) -> unit
    [@@js.global "window.addEventListener"]

  [@@@js.stop]

  val did_hide : (unit -> unit) -> unit

  val will_show : (unit -> unit) -> unit

  val will_hide : (unit -> unit) -> unit

  val height_will_change : (t -> unit) -> unit

  [@@@js.start]

  [@@@js.implem
  let did_hide f = add_event_listener "keyboardDidHide" f

  let will_show f = add_event_listener "keyboardWillShow" f

  let will_hide f = add_event_listener "keyboardWillHide" f

  let height_will_change f = add_event_listener_ev "keyboardHeightWillChange" f]
end

(* -------------------------------------------------------------------------- *)
