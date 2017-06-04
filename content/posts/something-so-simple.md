+++
Categories = ["Blog"]
Description = ""
Tags = ["Blog", "Idea", "learning", "solving problems"]
author = "Ivan du Toit"
authorLink = "https://www.twitter.com/anilihst"
date = "2016-04-01T22:49:53+02:00"
title = "Something so simple"

+++

I am frequently astounded at how simple things seem once you realize them or how obvious they seem in hind sight. This once again happened to me as I was taking part in design discussion about how we should think about an API interface that we wanted to expose and how we will continue to evolve the API without breaking the customers of the API. There was a long debate on how to handle the change but the one thing that kept bugging me was that some of the API would change regularly but other parts would be more stable by their nature. At some point I stated this idea but in a very imprecise way to which one of the senior engineers said:

> Yes, they API should not be too broad...

The contract should not be broad?
=================================

Okay that makes sense because if we have to change some part of the API we have to manage the customer transitions to each of the revisions. But if the API is modular you only have to care about the customers using the module that changes. Which means that it is much easier to make changes and keep your agility high! Wait a moment this sounds awfully familiar...

Doh! This is S in [SOLID](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design\))! But does this mean that the other principles could also be applied? It turns out that, yes,there is a lot that we can learn here and from other design principles that we know. It is crazy to me that this since insight that is so simple can have such a profound effect on how you approach and think about the problem and gives you new inspiration and knowledge to attack the problem with.

Okkkaaayyyy??
============
Right I can see that as a reader this might be pretty strange. What is he getting excited about? Well this is another small, but significant, discovery that I have made in my never ending journey of exploration and learning and I wanted to [share it](https://xkcd.com/1053/). Maybe someone reading this will learning something but I have seen that many times having someone tell you a great truth has no effect until you are ready to understand it.

P.S. No I am not comparing this little nugget to a great truth but it sounds better saying it that way so just accept it
