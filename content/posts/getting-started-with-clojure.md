---
title: "Getting Started with Clojure"
date: 2020-03-29
draft: false
---

In which the author tries to learn to think functionally _and_ to be
proficient in Clojure.

## Motivation

In my current job, I write Clojure maybe 5% of the time, writing Ruby
the rest. I'm at a place where I can get things done with Clojure, but
I'm still thinking with a Ruby mindset. I'm starting to think of
'knowing' languages along a progression like this:

1. Can get things done.
2. Can follow the standards of the language and codebase.
3. Can improve the standards of an existing codebase.

Those are probably leaving lots of things out, but it's helpful for me
as I conceptualize what I'm up to right now. I'm currently at
level 1. To get my current job I had to do a Code Kata using Clojure
and then pair on that with some folks. I did it. I can get things
done. But I also feel like I don't really understand Clojure. It's not
that I can't read it or write it at all. Instead, it's that I feel
like I don't truly understand the principles and ways of thinking
about problems that set functional programming apart from object
oriented programming. Nor do I understand what it is about Clojure
that further sets it apart from other functional languages. My goal is
to remedy these and get to level 2 on my scale. I don't aim hit level
3 now, and I might not care to ever get there. If my job changes and
I'm writing Clojure all the time, then of course that is what I
want. But it hasn't and it isn't, so I don't need that level of
expertise. I just need to not make the codebase worse than I found it
when I pick up a ticket once a quarter.

## Approach

I've had [Exercism](https://exercism.io) in the back of my mind for a
long while now, but never really gotten past one or two exercises in
any language. Then maybe a year or so ago I heard a podcast interview
with Katrina Owen where she talked about _Good Strategy, Bad Strategy_
and how using that approach helped her change how she approached
building Exercism. I left that interview thinking that Exercism's
sweet spot was helping existing developers gain proficiency in a new
language. Well doesn't that describe my current situation perfectly?!
So I picked it back up in the last week of March and started on the
Clojure track in earnest.

I'm doing the mentored Clojure track at Exercism. Here there are the
kinds of problems you might expect to find at any 'coding challenge'
site, but in order to progress from one to the next you need approval
from a 'mentor'. The mentors are programmers who know the language and
want to help you learn it, so they provide helpful feedback and can
require changes to a problem before you move on. I think one benefit
for this model is it will help me get out of that level 1 where I can
just get things done and can help me move into level 2 where I also am
doing things the right way.

## Things I've learned

I'm three exercises in and I *love* this approach. The first two
problems were very straightforward and required either no mentor
feedback or minimal feedback. They were fine, but kind of like just
doing a HackerRank problem. But on the third assignment the mentor had
feedback for me. Lots of feedback. But it was delivered kindly and
helpfully, and I was ready to learn, so this was _awesome_.

In this particular problem the task was to write a function that can
reverse a string. Thinking that a string is just a list of characters,
I set out to `reduce` the string to a list, where I add each new
letter to the front of the list as I go. A bit of searching for some
functions whose name I couldn't remember, and I knew I wanted to
`reduce` and then `conj` each letter into a `list` (I needed a `list`
instead of, e.g., a `vec`, because `conj` adds to the end of a `vec`
and the start of a `list`). Easy enough. So I did that, joined the
resultant `list` into a string, and shipped it.

There were a few points of feedback, but mostly they boiled down to
this: the task is to apply a generic algorithm to a specific task, so
instead of just doing the specific task, try to think about the
generic thing first. That sounds vague, so let me explain some
concrete ways that played out:

* Reducing into a sequence is really common. So `(reduce conj () [1 2
  3])` is the same as `(into () [1 2 3])`. The more generic thing is
  more concise and reveals the intention more clearly than the more
  explicit thing.
* Rather than writing a function that reverses a string into a list
  and then turns that into a string all in one go, write two functions
  -- a generic one that can reverse any sequence into a list and a
  specific one that uses the generic reverse as a way to reverse a
  string.

These both illustrate a principle I *think* is important to functional
programming: think in terms of simple, composable functions. The cool
thing about this challenge, and the mentor I had for it, is that I was
able to learn how that principle applies in practice. Hopefully that
means it will stick better!
