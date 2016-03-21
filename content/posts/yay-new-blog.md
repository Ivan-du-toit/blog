+++
Categories = ["Blog"]
Description = "I have a new blog engine and a new start."
Tags = ["Blog", "New"]
date = "2016-03-21T14:50:57+02:00"
title = "Welcome to the bright, shiny new blog!"
author = "Ivan du Toit"
authorLink = "https://www.twitter.com/anilihst"
+++

I hope you like what you see.

But Why Change?
-------

Along the way I forgot why I started to look into other platforms and just got caught up in the delicious world of making and creating things. But as I write this now I recall that one of the main reasons was to allow me to build and extend the experience beyond what was offered by the blogging platforms. Along the way I also realized that the speed of the page loads for static sites are awesome (it is strange how I keep forgetting that but then each time it loads so fast it hits me again.)

I also really enjoyed getting to know each of the components of the [W](https://plus.google.com/109733145121386015159 "Writer")[H](https://gohugo.io "Hugo")[S](https://aws.amazon.com/s3/ 'AWS S3")[C](https://aws.amazon.com/cloudfront/ "AWS Cloudfront") stack. Yes I include the content producer as part of the start because I am integral to the stack working plus a stack has to be 4 characters like [MEAN](mean.io) and [LAMP](https://en.wikipedia.org/wiki/LAMP_(software_bundle)).

Hugo
----

Hugo is really a joy to work with. I have only just started to explore some of the fringe features but I was able to import my old blog posts and start seeing something in Hugo very quickly. I have also already dug into some of the inner workings by modifying the theme and making it do my bidding. All of the steps where really well documented and easy to follow. I have a whole laundry list of things that I still want to try and I have confidence that Hugo will not get in my way but just do the job it sets out to do.

AWS
---

I choose the AWS part of the stack really just because I want to get to know these services better and want to understand how they work practically. I think there is a bunch of easier and cheaper alternatives that could be used to host static websites like [github](https://gohugo.io/tutorials/github-pages-blog/) but that was not my goal right now.

That said it was not difficult to get it to work. There where some fiddly bits like the fact that you should point to the S3 static site URL instead of the bucket, which is shown in Cloudfront as a option, otherwise it will not do bucket to index.html mappings like you would expect. This kind of thing is understandable but still very annoying since it does not obey the principle of [least]({{< ref "https://en.wikipedia.org/wiki/Principle_of_least_astonishment" >}}) [surprise]("http://www.catb.org/esr/writings/taoup/html/ch11s01.html").

What really worked well was the SSL certificates. I just created the Cloudfront distribution, indicated that I wanted an SSL cert, completed the wizard and never worried about the cert again. It even works for all of my sub domains! Really cool stuff.

Next
----

I want to create some Hugo [archetypes]({{< ref "https://gohugo.io/content/archetypes/" >}}) for some of the different styles of posts that I plan to write. I also want to add some functionality on top of the content to enhance the experience but that is still in the early phases.

Oh yeah and I have to write some content... I will, really.
