(* -------------------------------------------------------------------------- *)
class keyboard : Ojs.t ->
  object
    inherit Ojs.obj

    method shrink_view : bool -> unit
    method hide_form_accessory_bar : bool -> unit
    method disable_scrolling_in_shrink_view : bool -> unit
    method hide : unit -> unit
    method show : unit -> unit
    method is_visible : bool
    method automatic_scroll_to_top_on_hiding : bool
  end

module Event :
  sig
    class event_height : Ojs.t ->
      object
        inherit Ojs.obj

        method keyboard_height : int
      end

    val add_event_listener : string -> (unit -> unit) -> unit
    [@@js.global "window.addEventListener"]
    val add_event_listener_ev : string -> (event_height -> unit) -> unit
    [@@js.global "window.addEventListener"]

    [@@@js.stop]
    val did_hide : (unit -> unit) -> unit
    val will_show : (unit -> unit) -> unit
    val will_hide : (unit -> unit) -> unit
    val height_will_change : (event_height -> unit) -> unit
    [@@@js.start]

    [@@@js.implem
    let did_hide f = add_event_listener "keyboardDidHide" f
    let will_show f = add_event_listener "keyboardWillShow" f
    let will_hide f = add_event_listener "keyboardWillHide" f
    let height_will_change f =
      add_event_listener_ev "keyboardHeightWillChange" f
    ]
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> keyboard
(* -------------------------------------------------------------------------- *)
