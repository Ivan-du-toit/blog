+++
title = "Form URL encoded post with AngularJS"
date = 2012-12-20T18:45:00Z
updated = 2013-09-26T23:24:53Z
aliases = ["/2012/12/form-url-encoded-post-with-angularjs.html"]
tags = ["POST", "encoding", "Javascript", "AngularJS", "form"]
blogimport = true
author = "Ivan du Toit"
authorLink = "https://plus.google.com/109733145121386015159"
+++

The AngularJS framework is amazing in many things but I had a hell of a time trying to get the $http.post function to encode and send my object correctly. The first thing you should do is set the content type, either globally like this
{{< highlight js >}}
$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
{{< /highlight >}}
or in the request like this:
{{< highlight js>}}
$http.post('/foo/bar', postData,headers:{
    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
}).success(function(responseData) { /*do stuff with response*/ });
{{< /highlight >}}
Then you have to encode the data from your object to a URL encoded string.

A hack around this problem is to just have a single post item and then serialize the object to that value and then just unserialze from that item to the object on the server like this:
{{< highlight js >}}
$http.post('/foo/bar', 'data='+$filter('json')(postData))
    .success(function(data) {
        //do stuff with response
    });
{{< /highlight >}}
This looks very strange but it is the way filters work in AngularJS.

There are two problems with approach it is difficult to sanitize on the server and it is just not the right way to do it. I then wrote this function to transform the data:

{{< highlight js >}}
function formEncode(obj) {
    var encodedString = '';
    for (var key in obj) {
        if (encodedString.length !== 0) {
              encodedString += '&amp;';
        }

        encodedString += key + '=' + encodeURIComponent(obj[key]);
    }
    return encodedString.replace(/%20/g, '+');
}
{{< /highlight >}}
Which is then used like this:
{{< highlight js >}}
$http.post('/foo/bar', formEncode(postData))
    .success(function(data) {
        //do stuff with response
    });
{{< /highlight >}}
What is does is take the properties of the given object and turn that into the post fields and then JSON encodes the values, this insures that nested objects will work correctly.

It needs some further refinement but I just refuse to include JQuery just to use the $.param() function. I also feel much more comfortable with this than some of the other hacks that I saw while trying to solve this problem.
