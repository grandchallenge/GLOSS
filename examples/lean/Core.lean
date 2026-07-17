import Mathlib
namespace GlossExamples
variable {α β : Type*}
theorem injective_example (f : α → β) (h : Function.Injective f) : Function.Injective f := by exact h
theorem quantifier_example (P : α → Prop) : (∀ x, P x) → ∀ x, P x := by intro h x; exact h x
end GlossExamples
