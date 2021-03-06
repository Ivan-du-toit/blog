+++
title = "Thinking outside the box"
date = 2012-12-10T16:00:00Z
updated = 2012-12-17T12:07:53Z
aliases = ["/2012/12/thinking-outside-box.html"]
tags = ["Programming", "Opinion", "Ideas", "Maths", "Domain"]
blogimport = true
author = "Ivan du Toit"
authorLink = "https://plus.google.com/109733145121386015159"
+++

<br />The idea of "thinking outside the box" is so common as to become&nbsp;cliché&nbsp;but what does it mean?&nbsp;The basic principle that most people understand is that you should not look for the solution&nbsp;in you normal thinking patterns or "box of tools".<br /><br />This is by definition&nbsp;uncharted&nbsp;territory&nbsp;and differs from domain to domain. As&nbsp;usual&nbsp;people&nbsp;tend to go to one extreme or the other which, in this case, is "think outside the box but&nbsp;press right up against it" -- Leonard Hofstadter, and the other is to fling wide unfounded ideas&nbsp;out there to find something that could work.<br /><br />Both of these extremes can deliver results and solve the problem but I think they are too&nbsp;inefficient, trying to cover a lot of thought space without navigation. Before going for these more desperate&nbsp;approaches one should &nbsp;try to use a structured way to come to a solution.<br /><br />This guided approach, I think, is to try and translate your problem into another domain.&nbsp;By domain I mean maths, computation,&nbsp;modelling, game theory or statistical&nbsp;analysis,&nbsp;anything that you&nbsp;can use to&nbsp;analyse&nbsp;a situation and observe actionable phenomena. This forces you to&nbsp;firstly&nbsp;really&nbsp;understand your problem as well as removing you from&nbsp;the nitty gritty of your problem and letting you work with a clearer model.<br /><br />This domain shift allows previously undetected phenomena to be seen&nbsp;and understood in terms of the&nbsp;original&nbsp;problem. This affect can be seen with&nbsp;<a href="http://en.wikipedia.org/wiki/Fourier_transform">Fourier transforms</a>&nbsp;<a href="http://en.wikipedia.org/wiki/Fourier_Analysis">and</a>&nbsp;<a href="http://datagenetics.com/blog/november32012/index.html">applications</a>.<br /><br />Ok, so that is all nice and fine in theory, but can I apply that to be practical in my field of<br />interest, programming? An example that really blows my mind is the good old&nbsp;Fibonacci&nbsp;algorithm.<br />Every programmer must have written a version of this algorithm and many forums have threads<br />discussing optimal implementations in each&nbsp;language, but most follow 1 of 2 basic structures.<br /><br />Iterative:<br />{{< highlight js>}}
int getFibTerm(int term) {
    int prevTerm = 1;
    int currentTerm = 1;
    for (int index = 2; index &lt; term; index++) {
        currentTerm += prevTerm;
        prevTerm = currentTerm-prevTerm;
    }
    return currentTerm;
}
{{< /highlight >}}

Recursive:

{{< highlight js>}}
int getFibTerm(int term) {
    if (term &lt; 3)
        return 1;
    return getFibTerm(term-1);
}
{{< /highlight >}}

These two approaches have merits and disadvantages. If you switch the problem to the maths domain there is a theory that allows you to convert a recursive function like Fibonacci to an explicit formula.
{{< highlight js>}}
int getFibTerm(int term) {
    return (1/sqrt(5))(((1+sqrt(5))/2)^term - ((1-sqrt(5))/2)^term);
}
{{< /highlight >}}

This allows you to calculate the formula once and then to do an O(1) call to get any term in the sequence whereas the other two algorithms were O(n).  This, for me, is just an amazing example of how such performance increases can be obtained by switching the domain. And we even had 2 pretty decent answers to the problem but in retrospect they seem quaint and sloppy.<br /><br />&nbsp;It should be understood that this way of thinking is not the be all and end all. It is just a tool to help you think of solutions that are out of the box but within your grasp with much less effort that blind fumbling. <br /><br />Update:<br />I just read this post by <a href="http://www.evanmiller.org/mathematical-hacker.html">Evan Miller</a>&nbsp;that goes into more depth on why this type of thinking is needed in computer science and maths.
