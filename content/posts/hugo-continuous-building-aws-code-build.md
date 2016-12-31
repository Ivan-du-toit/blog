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

Getting ready for the build
---------------------------

The first thing that we need is a set of instructions for building the Hugo site. Since the build server starts clean everytime this includes downloading Hugo and all the dependencies that we require. One of the options that CodeBuild has for specifing the build instruction is the [buildspec.yaml](http://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html) file I choose this choice since it seemed pretty simple and straight forward.
{{% includecode file="/buildspec.yml" codeType="YAML" title="My buildspec file" %}}

Once Codebuild supports ubuntu 16.04 base image we can just do a normal apt-get install of hugo but for now we have to all of this.

Creating a build project
-----------------------

With that sorted we can create the CodeBuild project like this

![Build project setup step 1](/img/building-hugo/Creating-project-step-1.png)

![Build project setup step 2](/img/building-hugo/Creating-project-step-2.png)

![Build porject setup review](/img/building-hugo/Creating-project-review.png)

Now we save and start the build.

![Build started](/img/building-hugo/Building-inprogress.png)

We need to do one more thing to make the upload to S3 work during the build process, which is to grant permissions to the role to upload to S3 by going to the IAM console and attaching the S3FullAccess policy to the role. If you are using S3 for other things you can also scope the policy to onlly you blog but that is beyond the scope of this post.

![Giving IAM role correct permissions](/img/building-hugo/IAM-role-attached.png)

Going back to the build we can see that it completed sucessfully!

![Build complete](/img/building-hugo/Build-complete.png)

Now to make this build get triggered when we checking a change we need to setup a CodePipeline

Creating the CI pipeline
-----------------------

![Creating pipeline step 1](/img/building-hugo/Create-pipeline-step-1.png)

![Creating pipeline step 2](/img/building-hugo/Create-pipeline-step-2.png)

I am using Github as my repo so I need to setup the connection to Github and grant permissions but after that it is pretty simple.

![Creating pipeline step 3](/img/building-hugo/Create-pipeline-step-3.png)

![Creating pipeline step 4](/img/building-hugo/Create-pipeline-step-4.png)

![Creating pipeline step 5](/img/building-hugo/Create-pipeline-step-5.png)

![Creating pipeline step 6](/img/building-hugo/Create-pipeline-step-6.png)

Once we are done it will just get the latest change from the repo and build it though.

![Pipeline created](/img/building-hugo/pipeline-created.png)

And we are done.

![Pipeline built through](/img/building-hugo/Pipeline-complete.png)
