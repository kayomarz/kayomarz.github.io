∈ ∉ ∋ ∌ ∐ ∑ √ ∛ ∝ ∞ ∧ ∨ ∩  ∪ ∴ ∵ ∷ ≮ ≯ ≤ ≥ ⊂ ⊃ ⊄ ⊅ ⊆ ⊇ ⊈ ⊉ ⨀ ⨁ ⨂ → ¬ ∃ ∄ ∀

# Variables

+ Universal statement (For all elements in a set...)
+ Conditional statement (if one thing is true then some other thing also has to be true)
+ Existential statement (There is at least one thing for which something is true)

# Sets

 + Set-Roster notation:  {1, 2, 3}
 + Set-Builder notation: {x ∈ S | P(x)}
    The set of all elements x in S such that P(x) is true.
     
### subset
 
A ⊆ B: A is a subset of B if and only if every element of A is also an element of B.

A ⊄ B: There is at least one element of A that is not an element of B.

A is a proper subset of B if every element of A is in B but there is at least one element of B that is not in A.

## ordered pairs
 
Elements of a set are not ordered.

An ordered pair can be denoted as { {a}, {a,b} } or simply (a, b)

## Cartesian product and cartesian plain

R x R is set of all ordered pairs (x,y) where both are real numbers

cartesian plane (like graphs):

   |
-------
   |


## Relation

Let A and B be sets.  A relation R from A to B is a subset of A x B. Given an
ordered pair (x,y) in A x B, x is related to y by R (x R y), if, and only if,
(x, y) is in R.
Set A is called the domain of R and set B is called its co-domain.

Example: R is a "less than" relation.
A = {1, 2, 3}   B = {1, 3, 5}
{(x,y) ∈ AxB | (x,y) ∈ R}
 
1 ∉ 1
1 ∈ 3
1 ∈ 5
2 ∉ 1
2 ∈ 3
2 ∈ 5
3 ∉ 1
3 ∉ 3
3 ∈ 5

### Arrow Diagram (of a realation)

a       x
b  ---> y
c       z

### Function

A function F from a set A to a set B is a relation with domain A and co-domain B
that satisfies the following two properties:

1. For every element x in A, there is an element y in B such that (x,y) ∈ F
2. For all elements x in A and y and z in B, if (x,y) ∈ F and (x,z) ∈ F, then y = z

Because of the definition, it's possible to give the element that corresponds to
x a special name:

"F of x" writtend as F(x)

Example:
The squaring function f from R to R

is defined by the formula:

  f(x) = x2

or symbolically:

  f: x → x2

 since it sends each real number x to x2

# Logic

Symbolic logic has provided among other things, the theoretical basis for many 
areas of computer science:
  + digital logic circuit design
  + relational database theory
  + automata theory
  + computability
  + artificial intelligence

The central concept of Deductive logic is the concept of argument form.

Argument is a sequence of statements aimed at demonstrating the truth of an
assertion:
  + premises
  + conclusion

To have confidence in the conclusion, the premises must be acceptable on their
own merits or follow from other statements that are known to be true.

## Logical form

If it is cool or windy then he will go.
It is windy, therefore then he will go.

In Common form, the above is:
if p or q, then r.
q.
Therefore, r.

## Statement

A statement (or proposition) is a sentence that is true or false but not both.

Examples:

 + `2 + 2 > 1` is a statement which is true
 + `2 + 2 = 1` is a statemene which is false
 + `2 + x > 1` is not a statement because for some values of x it is true, whereas for others it is false.

### Compound Statements:

logical connectives:
 + ∧ (conjunction) (and)
 + ∨ (disjunction) (or)
 + ~ (not) also denoted by ¬
 + → (if p then q) see conditional statements (coming below)
 + ↔ (p if and only if q) see biconditional statements (coming below)

Order of operations (Operator precendence) (highest is first)

 + ~
 + ∧ ∨
 + → ↔

(A satement such as A ∨ B ∧ C is ambigous because of missing parenthesis) 


Statement variable p holds a statement such as `it is cool` and can have a value `T` or `F`

Statement form (or propositional form) is an expression made up of statement variables (such as p, q, r) and logical connectives (~, ∨, ∧)

Statement form becomes a statement when actual statements are substitued for component variables.

Example:

(p ∨ q) ∧ ~(p ∧ q)  (is a statement form; this one is known as exclusive or ⨁ )


Truth values for p ∧ q

    p q    p∧q
    -----------
    T T     T
    T F     F
    F T     F
    F F     F
    
### Logically equivalent statements (P ≡ Q)

Two *statement forms* are called *logically equivalent* if, and only if, they have identical truth
values for each possible substitution of statements for their statement variables.

Two *statements* are called *logically equivalent* if, and only if, they have 
logically equivalent forms when identical component statement variables are used to replace
identical component statements.

Testing if P ≡ Q.
Use truth tables
or
find concrete statement for each of the two forms

Example - Prove that:

~(p ∧ q) ≢ ~p ∧ ~q

Let
p: 0 < 1
q: 1 < 0

~(p ∧ q) is "It is not the case that both 0 < 1 and 1 < 0" - this is true.
~p ∧ ~ q is "0 ≮ 1 and 1 ≮ 0" - this is false.

Hence proved.

### Tautologies and Contradictions

A tautology is a statement form that is always true regardless of the truth
values of individual statements substituted for its statement variables.

(tautology is denoted by t)

p ∨ ~p ≡ t


A contradiction is a statement form that is always false regardless of the truth
values of individual statements substituted for its statement variables.

(contradiction is denoted by c)

p ∧ ~p ≡ c


### Logical equivalences

1. Commutative           p∧q ≡  q∧p
2. Associative       p∧(q∧r) ≡   (p∧q)∧r
3. Distributive      p∧(q∨r) ≡   (p∧q)∨(p∧r)
4. Identity          p∧t ≡  p       p∨c ≡ p 
5. Negation         p∨~p ≡ t      p∧~p ≡ c
6. Double negative     ~(~p) ≡ p
7. Idempotent            p∧p ≡ p
8. Universal bound   p∨t ≡ t     p∧c ≡ c 
9. De Morgan          ~(p∧q) ≡  ~p∨~q 
10. Absorption  p∨(p∧q) ≡  p     p∧(p∨q) ≡  p
11. Negation of t & c      ~t ≡ c 


### Conditional Statement

    p → q (If p then q)
    
p - hypothesis (antecedent)
q - conclusion (consequent)

p → q has truth values just as p∨q or p∧q have truth values

→ is a connective just as ∧ ∨ ~ 

Truth values for p → q

    p q    p → q
    ------------
    T T     T
    T F     F
    F T     T
    F F     T


p → q  is false only if:
p (hypothesis) is true but q (conclusion) is false

vacuously true:

    When p (hypothesis) is false p → q is called
    vacuously true or true by default


(vacuous meaning: having or showing a lack of thought or intelligence; mindless.)

Condition statement with False Hypothesis

    if 0 = 1 then 1 = 2

    In the above, since the hypothesis (or antecedent) is false, the statement is true.


#### Note

NOTE: The philosopher Willard Van Orman Quine advises against using the phrase “p implies
q” to mean “p → q” because the word implies suggests that q can be logically deduced
from p and this is often not the case.



Note: "if p then q" is also called *material condition*

From wikipedia:
The material conditional (also known as material implication, material
consequence, or simply implication, implies, or conditional) is a logical
connective (or a binary operator) that is often symbolized by a forward arrow
"→".

Unlike the English construction "if...then...", the material conditional
statement p→q does not specify a causal relationship between p and q.
It is merely to be understood to mean "if p is true, then q is also true".
The material conditional only states that q is true when
(but not necessarily only when) p is true, and makes no claim that p causes q.



### Division into cases

Sometimes we divide a proof into cases, prove each part separately and then deduce the validity of the proof.
Basically we are saying that:

    p ∨ q → r ≡ (p → r) ∧  (q → r)


Note the precedence of operators in the above statement.

For example, to validate a proof related to natural numbers it can be convenient to validate the
proof separately for odd numbers and then for even numbers, finally deducing the validity for all natural numbers.

### Equivalence between p → q ≡ ~p ∨ q

    if you do not get to work on time, then you are fired.
    Either you get to work on time or you are fired.
    
Negation of a Conditional statement
    
    ~(p → q) ≡ p ∧ ~q
    
### Contrapositive of a Conditional Statement

    The contrapositive of p → q is ~q → ~p
    
A conditional statement is logically equivalent to its contrapositive

    p → q ≡ ~q → ~p

### Converse and Inverse of a Conditional Statement

Given:

    p → q
    
It's converse is:

    q → p

It's inverse is:

    ~p → ~q

Note:

+ A conditional statement and its converse are not logically equivalent
+ A conditional statement and its inverse are not logically equivalent
+ The converse and inverse of a conditional statement are logically equivalent to each other

i.e. given:

    p → q

Symbolically:
    
+   q → p   ≢   p → q
+  ~p → ~q  ≢   p → q
+   q → p   ≡  ~p → ~q


Given p → q:

    If today is Easter, then tomorrow is Monday.

then q → p is:

    If tomorrow is Monday, then today is Easter.
    
and ~p → ~q:

    If today is not Easter, then tomorrow is not Monday.

Only if

    p only if q means "if not q then not p"
    ~q → ~p  which is p → q or if "p then q"

If and Only If

    p if and only if q means
      "p if q (if q then p)" and
      "if not q then not p"
    p ↔ q ≡ (q → p) ∧ (~q → ~p)
    p ↔ q ≡ (q → p) ∧ (p → q)

Necessary and Sufficient

    If r and s are statements:
    r is a sufficient condition for s
      means “if r then s.”
    r is a necessary condition for s
      means “if not r then not s.”
