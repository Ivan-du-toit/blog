+++
title = "Hugo continuous building AWS CodeBuild"
Tags = [
    "Blog"
    ,"AWS"
    ,"Amazon Web Services"
    ,"CodeBuild"
    ,"CodePipeline"
]
Categories = [
  "Blog"
]
draft = true
author = "Ivan du Toit"
authorLink = "https://www.twitter.com/anilihst"
Description = ""
date = "2016-12-24T08:58:18+02:00"

+++

Before the AWS CodeBuild and CodePipeline was released I ran a little T2.micro instance with a Jenkins instance on it. Which I had to patch and update in hast recently because of the [0-day](https://jenkins.io/blog/2015/11/06/mitigating-unauthenticated-remote-code-execution-0-day-in-jenkins-cli/). In this post I will detail how to move to using the fully managed tools and not have to care about any of this.

##Getting ready for the build

The first thing that we need is a set of instructions for building the Hugo site. Since the build server starts clean everytime this includes downloading Hugo and all the dependencies that we require. One of the options that CodeBuild has for specifing the build instruction is the [buildspec.yaml](http://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html) file I choose this choice since it seemed pretty simple and straight forward.
{{% includecode file="/buildspec.yml" codeType="YAML" %}}
