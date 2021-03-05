(** [Re2_serializable] adds an incomplete but stable serialization of [Re2].

    Feel free to extend it as necessary. *)

open Core_kernel

type t = Re2.t

module Stable : sig
  (** This serialization only transmits the pattern, not the options. *)
  module V1 : Stable_without_comparator with type t = t
end
