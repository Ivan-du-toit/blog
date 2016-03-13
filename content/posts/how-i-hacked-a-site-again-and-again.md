+++
title = "How I hacked a Site again and again"
date = 2013-12-21T15:59:00Z
updated = 2013-12-21T15:59:53Z
aliases = ["/2013/11/how-i-hacked-site-again-and-again.html"]
tags = ["Programming", "University", "security", "Hacking", "Education", "sql injection", "Teaching", "Learning", "software engineering"]
blogimport = true
author = "Ivan du Toit"
authorLink = "https://plus.google.com/109733145121386015159"
+++

One of the first post that I made on this blog had the sensationalist title "How I Hacked a site", in which I gave a short overview of how I found a security issue on my university's computer science website. At the end of the post I mention that I also found a SQL injection vulnerability which I then dismiss as common and uninteresting.

<h2>Oh the Irony.</h2>
Before I posted the article I reported the vulnerabilities, the first report was ignored, after the second time that I reported the issues the XSS vulnerability was fixed but the SQL injection still remained. I once again let the developers know that it was not fixed after which it was in fact finally fixed.

What I also left out was that I actually reported 2 URLs that was vulnerable but I only checked the one that was easier to reach and assumed that both was fixed after I tested the first one and found it fixed. This turned out to be a mistake since it was not fixed but more on that later.

After this episode I felt that clearly I had something to contribute to the site at least in terms of security.

So I applied for a position that they had open on the web team, in the interview they asked me mostly organisational and team orientated questions which I answered in depth. After the interview they told me that they will contact me with a coding exercise which I have to complete to demonstrate my skills. After a lot a delay they gave me the task of creating a blog with a list of features and technologies that I should use. Since at this time the academic year has already started I told them that I don't want to spend a lot of time on a useless project that won't be used just to superficially demonstrate my skills. This is where things go interesting, they replied that it should not take anyone with my abilities more than 4 hours to do this task. To complete a project with the required list of feature in that time you have to use generic frameworks and code generation tools to such an extent that I have to question what they want to learn from the result of the task.

I told them that I won't be able to complete a product that I will be proud of to call mine in the available time but I did have a half finished toy project that I worked on a while back that demonstrates some of the attention to security and design that I give to my projects. So they replied and said that it would be fine if I submitted that. Fast forward 6 weeks, after multiple request for a decision for filling the position, as I had another opportunity available even though this one would be my prefered choice. They let me know that I was not a good fit for the position. OK fair enough I continue with my studies and other work.

Then recently another web tool that the univeristy used to collect feedback from the students for one of the courses had a massive security issue that resulted in all the passwords being leaked and subsequently reset. This prompted me to once more offer my services this time for free to help with securing the web applications. To my great surprise this offer was refused citing licensing and security issues - really security?

Around this time I was also watching some videos on metasploit that we were assigned to watch as part of our security course which pointed to some related Defcon videos. At some point in the resulting <a href="http://xkcd.com/609/" target="_blank">tab explosion</a>, I watched a presentation on obfuscated sql injections, so naturally I was curious if they would work on the URLs that was vulnerable before. This turned out not to be the case but what I did find was that one of the vulnerabilities that I reported before was not fixed at all!

Just as an aside, if a security issues is reported on a site that you maintain, do you:
<ol>
    <li>Try to prove that this is infact not a bug but a feature (<a href="http://spectrum.ieee.org/riskfactor/telecom/security/this-week-in-cybercrime-facebook-backlash" target="_blank">Facebook anyone</a> :)</li>
    <li>Do you add the bug to your todo list below the things that makes your boss happy.</li>
    <li>Forgo sleep until the bug fixed, all similar code checked for similar issues, the project tested and the fixed version deployed to your production server.</li>
</ol>

Hint: The bigger the number of you answer the better. I can not understand how you can be so lax as to not even fix all the reported occurrences of a vulnerability never mind to check on your own for similar problems.

After some further testing I have also found 2 more sql injection vulnerabilities and I am sure that I can find at least 3 more if I continue testing. The worst part of this whole situation is that these are just the low hanging fruit. Since the site does not use SSL you can also sniff username and password, hijack cookies, use DNS poisoning and man in the middle attacks to list just a few.

But it is fine they don't need security because they have big warning posters in the labs promising expulsion if you try to circumvent the security. The problem is that if you know what you are doing you won't be caught and the problems will persist.

<h2>What is security</h2>
This is the institution that is trying to teach me and all the other students security! This just makes me realize that <a href="https://www.schneier.com/blog/archives/2008/03/the_security_mi_1.html" target="_blank">Bruce Schneier</a> is right; hacking (security) is a mindset not a domain, and you can teach domain knowledge but it is very difficult to teach a mindset or a way of thinking.

I want to appeal to everyone to think about security not as an after thought but from the start. To do this I think that a red team, blue team type exercise is very valuable along with a back story and then an analysis afterwards. I include the backstory and analysis because the coolness of the hacking can become the focus but the effects of the failure should be stressed not just for a big bank or something but for any business. Pentesting is not about proving that you are secure or not it is about creating awareness, thinking about the repercussions of failures and possible mitigation.
