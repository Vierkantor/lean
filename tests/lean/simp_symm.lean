constants f g : nat → nat

-- Test `simp` with symmetric argument
axiom f_id : ∀ x, f x = x
axiom f_g : ∀ x, f x = g x
example (a : nat) : g a = a :=
by simp [←f_g, f_id] -- works
-- Alternate syntax:
example (a : nat) : g a = a :=
by simp [<-f_g, f_id] -- works

-- Universe polymorphic lemmas work:
universe u
variable {α : Type u}
constants fu gu : α → α
axiom fu_id : ∀ (x : α), fu x = id x
axiom fu_gu : ∀ (x : α), fu x = gu x
example (a : nat) : gu a = a :=
by simp [←fu_gu, fu_id] -- works