---
layout: post
title: Global Day of Code Retreat 2014
tags:
- gdcr
- tdd
- pair-programming
- haskell
- handson
- writeup
---

# Global Day of Code Retreat 2014

On November 15th, I attended the [Global Day of Code Retreat] in London: a full day practicing pair programming and TDD, with different people, and different twists and goals in each session. The event was one of six in London, and was posted on the [London Software Craftsmanship Community] I've been going for a while now.

## A beautiful day to code

On an as sunny as London can get in November day, me and 100-ish more people, decided to spend our Saturday making pairs every now and then, and tackling a quite know problem: [Conway's Game of Life]. Aspect Capital was a great host, providing breakfast, lunch, and beers afterwards, plus a great view of the City of London.

<iframe width="420" height="315" src="http://www.youtube.com/embed/C2vgICfQawE" frameborder="0" allowfullscreen> </iframe>

## A simple problem, with twists and restrictions

We did 6 pairing sessions, of 45 minutes each, with the end goal of simulating a board under the 4 simple rules of CGoL. You may be thinking, "surely, it wouldn't take 1-1.5 hours for two developers to make a functioning version", but I assure you, it was not that simple:
- You have to pair with a different person each session
- You have to write and pass tests at each step
- You must **throw your code away** after the session is over
- There is a different restriction each time

I have to admit, the "throw your code away" part sounded very painful at first, and I did cheat a little bit by keeping the code in different [git repositories], purely to investigate with a clearer mind afterwards.

## Pair programming

I had never (formally) practiced pair programming before, so it was an practice I wanted experience: it was an exhausting and stressful experience at my first sessions, until I found the **proper amount of conversation, thinkinh, double-checking, and coding**, I should be my very limited time budget. I didn't even realise we were spending 45 minutes in each session, until somebody mentioned it.

After my first or second session, I changed to a lower gear, assuring myself that I was indeed not ignoring my partner, and they didn't either. As I did 4 out of 6 of the sessions in Haskell, both me and my partners were at about the same level on the business logic (and managed to hide the fact that we did in later sessions), and in language fluency. This kept a **balanced dynamic in the pairs**.

I haven't run a session by my self yet, to compare the time efficienc & code quality of a single developer, but it didn't seem like a massive waste of time or effort, as severeal phenomena came into play:
1. You double check your next action, eliminating the silliest of propositions, saving you, and your partner, time spent in obviously fruitless efforts
2. **Live rubber duck** - there is a person right there, when you're stuck, or want to explore a direction or angle-of-attack
3. **Distraction-free** constant flow of coding, giving a sense of accomplishment
4. Time to think and distance from the code while your partner types, leading to catching typos, obviously-wrong-ways-to-go, chance for small-and-frequent refactoring
5. Ability to drop an opinion or argument soon enough, if you see there is a non-trivial amount of disagreement from your partner - no/fewer endless arguments and [analysis paralysis]

From these, I think mastering 4 and 5 would provide the biggest effect on productivity/code quality, and a duo (or trio) that can do these well, will have a good chance of success. Incidentally, there was an odd number of people at some point, and I took part in a trio ping-pong session (make the failing test pass, write another failing test, pass the keyboard), which left me with a very nice taste, as there was the ability to argue about the bigger picture when not writing, and isolate yourself from the discussion, i.e. not two things at the same time.

## Test Driven Development

I have incorporated regular testing in my daily coding routine not too long ago, but I haven't been **doing [TDD] as a matter of habit**, so it was a great chance to practice it, after seeing a practical talk on the matter by a fellow [craftsman] recently. The ez-tdd model I followed was the following:

1. Write a test that's failing
2. Write the simplest code that will make the code pass, usually an if-else, without computations
3. Don't refactor with failing tests
4. Write tests that don't require extensive code to be written to be make it pass
5. Refactor, and restructure, when if-else becomes cumbersome

This seemed to resonate with my partners, and lead to code that flowed easier, and cleaner, than I though it would, over the span of a 45 minute session, with two people over the keyboard. It really helped **following the YAGNI principle**, with expanding the model as necessary, and not because we though "we might/surely need this". Tests where driving the code, and not the innate developer need to architect everything, and on a code vs test intention mismatch, the test was clearer than the code, helping to stay on track.

## Cultural Learnings of Restrictions for Make Benefit of TDD and PP

It is a know adage that **"restrictions breed creativity"**, and it would be a boring Saturday if we did same script six times. So here are the restrictions that, not only added spice to the sessions, but also provided goals, for which natural leasons where learned, without the explicit guidance of the facilitators (even though they were quite helpful in pushing us in the right directions):

1. [Introduction of the goal, simply do it](#restriction-1)
2. [Ping-pong: pass the failing test, write a faling test, pass the keyboard](#restriction-2)
3. [Meaningful names, don't use else, static functions, a few more (we were doing Haskell, I don't remember them all, as it didn't apply to us)](#restriction-3)
4. [2 minutes cycles of: write-test -> pass test -> ```commit```. If you don't finish in time you ```git reset HEAD --hard``` :(](#restriction-4)
5. [Silent ping-pong: you can't communicate directly with your partner (verbally or comments) about the problem or the tests](#restriction-5)
6. [Pick and choose some the restrictions above and do it again](#restriction-6)

### 1. <a name="restriction-1"></a>Introduction of the goal - Haskell
This allowed to us to familiariase ourselves with the problem, the testing framework, PP, TDD. [It was inefficient](https://github.com/costas-basdekis/global-day-of-code-retreat-2014/tree/master/session1), with **choices made before it was really necessary, narrowing the grow-path**. Haskell also felt very natural in this TDD methodology, being very concise, and clear.

### 2. <a name="restriction-2"></a>Ping-pong - Java
This was my trio session, wich was easy to follow, and felt more relaxing than the duos, as it gave the ability to **examine the direction of the code** with the other non-coding partner, and isolating myself from the conversation when typing, thus being able to focus on doing the right thing, with the occasional intervention when I did something "wrong", or needed help with the language. The obvious pro of ping-pong, is that you **write tests that can be easily understood**, don't force the partner to write too much, and everybody provides input. Still not a fan of Java, or the IDE, but not that terrible. I didn't keep the repo, as we did it in another computer.

### 3. <a name="restriction-3"></a>Subset of language - Haskell
Having already nailed down the process, and the restriction not really applying to us completely, we managed to move faster, completing a somewhat bigger area of the target problem. [Code was driven by tests](https://github.com/costas-basdekis/global-day-of-code-retreat-2014/tree/master/session2), indeed, with the **conscious effort to codify our knowledge in the form of tests**, and have our code accountable only to them. Code quality was up, as we learned not to go for too much too early.

### 4. <a name="restrictions-4"></a>2 minutes sprints - Haskell
At first everybody thought that was impossible to do *any* [meaningful work](https://github.com/costas-basdekis/global-day-of-code-retreat-2014/tree/master/session3) in such a small timespan, but the first iterations were rosy for us, reassuring us that we could do it, besides the restriction. But maybe it was *too rosy*, as we stumbled on an iteration, failing three consecutive times, before the gentle push of the facilitators to try to **do something smaller with the test**, until we could pass the original test. And a good lesson was this session, as it showed that [no problem is irreducible to smaller parts](https://www.youtube.com/watch?v=oOS00ttAblQ).

We managed to do a whooping 14 commits on this session, that, even if the commits were smaller, we had a **better coverage of the assumptions** (code coverage was always 100%, obviously), and having the code grow organically, without leaps of implementation, eliminating some smaller YAGNIs.

### 5. <a name="restriction-5"></a>Silent ping-pong - C# #
I think this was the most revealing lesson in from all the sessions, as the inability to communicate through speech, but only through test naming, lead to the effect of having **very descriptive test names, and keeping the steps small**, as we regularly renamed the partner's tests, to minimise the amount of code/change necessary. I think this restriction, coupled with the [2 minute sprints](#restriction-4), and regular intervals of conversation over the general structure/direction, would give a very satisfying experience, with remarkably good results.

As I did this in another computer, I didn't think of keeping the code. C# is another favourite of mine, that I haven't touched of quite some time, unfortunatelly. The IDE was great, and the relative verbosity to Haskell/Python didn't hamper us.

### 6. <a href="restriction-6"></a>Free for all - Haskell
As you realise, I really like Haskell, as I recently started learning it, and this session was a good recap of what we tried to do throughout the day, and having a little bit of fun. This time, [the code was quite descriptive](https://github.com/costas-basdekis/global-day-of-code-retreat-2014/tree/master/session4), alternating the keyboard on regular intervals. We tried an informal quick sprints, and descriptive names, and we managed to capture more details about the problem.

## Conclusions

My take aways were many, and I'll surely need more practice to find the recipe for doing PP, while I already supsect that the **key is to have a process**, to which you and your coworkers can agree on, so that you can just sit down and hammer on. The specifics might vary, but having clear purposes, and a routine is what gives an edge on pair progamming:
- Keep more than one person in the team up-to-date with the code
- On-the-spot code review
- Teammates less experienced in the codebase, problem, or language, can learn by practicing and engaging
- Code structure and conventions that are more palatable to more teammates
- Shared ownership, a weight of the shoulders of single developers
- Sharing of knwoledge, mentorship

As for TDD, although I wouldn't like my architecture to be driven by tests, it provides an excellent process framework, and the ability to keep track of, and replicate, the effort needed to perform a task.

As I always say, and if there is anything to take away from this excersise, is that **process is king**.

[Global Day of Code Retreat]:http://globalday.coderetreat.org/
[Conway's Game of Life]:http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life
[git repositories]:https://github.com/costas-basdekis/global-day-of-code-retreat-2014
[analysis paralysis]:http://en.wikipedia.org/wiki/Analysis_paralysis
[London Software Craftsmanship Community]:http://www.meetup.com/london-software-craftsmanship/
[TDD]:http://en.wikipedia.org/wiki/Test-driven_development
[craftsman]:http://codurance.com/blog/author/sandro-mancuso/