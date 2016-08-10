## thoughts on graph and data visualization

This markdown document is my long-deferred attempt to put down on paper some principles I think are useful when creating graphics. In my experience, scientists rarely put much effort into trying to understand what they're doing when they graph something, why they're doing it, how they con do it the best, and what their goal is in creating a visual representation of data.

In this document I will describe best practices for graphs and why I think they are the best practices (data on whether certain practices actually are better is thin though). Ideally, I'll include a bunch of example graphs here to illustrate good and bad practices.

This whole exercise is pointless, however, unless we identify what exactly it is we're trying to do:

### What _is_ a good graphic? What should a graphic do?

Your answer may deviate from mine, but to me a good graphic does two things:
* honestly shows the data
* makes it easy for the reader to understand some point you want to make

A graph is worthy of retention in a paper or a talk if it does one of these things really well. Otherwise, get rid of it. When possible--most of the time--graphics should aim to do both of these things really well. Why just show some relationship when you could actually show the data as well?

It's important to note that many graphs pass the second bullet point but deliberately ignore the first: they show you some relationship without showing you the data. Not only does this miss an upportunity to infuse your graphs with another dimension, but it a lot of cases it's dishonest. See the Anscombe's quartet example below for why this is dangerous.

## motivation: why graphs and graphics are essential

Anscombe's quartet illustrates how our trust of numbers without validating our intuition using a graphic is problematic. This quartet comprises four x, y vectors. Each pair of vectors has the same summary statistics (mean x, mean of y, covariance between x and y, and regression slopes). Yet when these four pairs of points are graphs on four scatterplots, it's clear the data are quite different:

![quartet graph from wikipedia here](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Anscombe's_quartet_3.svg/425px-Anscombe's_quartet_3.svg.png)

By definition, summary statistics provide a simplified abstraction of our data, but the example above shows that we're lying to ourselves as scientists if make the fallacious mistake of relying on summary statistics to describe our data.

The image above also illustrates that our data often contains features we might not even be aware of: unknown unknowns that we simply haven't thought about or considered. For example, if I told you that two sets of data had the same means for x and y and covariances, you'd probably assume their scatterplots would look pretty similar. You probably wouldn't have even thought "I wonder if there are outliers that could cause this similarity?" or "Is it possible that the relationship between x and y could be different in this pair of data?"

As Daniel Kahneman writes about in his book _Thinking Fast and Slow_, the humans mind tends to be lazy. Part of the power of graphics is that they take tap into the strong visual processing parts of our brains and force us not to be lazy when it comes to interpreting data.

This is why graphs are so powerful and so essential.

### guiding principles about graphics

Below I outline guiding principles I think are important when creating a graphic.

* every part of the graph should have a clear purpose

   Extra bells and whistles are distracting. Often when graphs contain a bunch of things that don't need to be there, I get stuck trying to figure out what they mean, only to realize minutes later that they don't mean anything. This is not to say that all parts of a graphic should have a _unique_ purpose: redundency is an important aspect of design and I often find it useful to use in graphs, as different people probably have different ideal ways of viewing something.
* show the data, some summary of the data or parameter estimate of interest, and some measure of variability about that estimate
* clearly label sample sizes
* state some measure of effect size
* state the the test used to assess statistical significance and the resulting p-value
* don't extrapolate

### thoughts on color

Color can be a powerful visualize element in a graphic. But it has to be used carefully and thoughtfully. 

#### issues with color schemes

There are three main issues that can plague a given color scheme:

* Not distinguishable to readers with red/green colorblindness.
* Luminance of the colors is the same, thus hard to distinguish between colors when printed in black and white.
* For quantitative data: changes in luminance of the colors does not scale linearly with changes in the underlying variable the color represents. For example, a change in luminance from 10% black to 30% black should represent a comparable increase in the variable that is being represented. 

#### recommendations

It seems like there may be too many variables to optimize here, but it's possible to develop color schemes that satisfy all these criteria. One solution is the [viridis](https://bids.github.io/colormap/) color scheme and its sister color schemes (plasma, magma, and inferno). However, these may not be suitable for qualitative data and imply some sort of ordinal ranking. The [cube helix](http://blogs.nature.com/methagora/2013/07/data-visualization-points-of-view.html) color scheme is a good alternative because their are greater changes in hue. Both of these are implemented in R (using the viridis package and the cubeHelix function of the rje package). 

An additional thought that really doesn't fit in here really well is that you should try to design figures so that they don't require captions. If you're using a lot of jargon and acronymns and representing things in a non-intuitive way, your reader has to head to the legend to even start to comprehend what's going on. Trying to tell a story with a graphic should obviate the need for a stuffed legend.

### some critiques / thoughts about graphics

from doi 10.1098/rspb.2015.2097
![doi 10.1098/rspb.2015.2097](./graphs/10.1098:rspb.2015.1932.png)

This graph uses color well; when printed in black and white, the reader will be able to identify the different colors. The overlap of the points and the error bars are annoying and difficult to read though. This graph also doesn't show the data, which could be done using a package like `beeswarm` in R or using simple line plots. The graph could also be improved by emphasizing the connect between the colored points at transfer 20 and 100 by replacing the two points for a single color with a single line that would connect the two former points.

from doi 10.1098/rspb.2015.2097.png
![doi 10.1098/rspb.2015.2097](./graphs/10.1098:rspb.2015.2097.png)

This graph does a really nice job of actually showing the data: each line represents the data from a single individual co-infected with some parasites. The thicker black line is nice because it provides a summary of the data from all the grey lines, and the reader can guess what it represents without having to read through the figure legend. Color is used nicely here--the two different colors are used to highlight single infections of two different parasites. Red and blue are ideal colors for this in that they are clear and can be read by people wit color blindness.


### useful papers / sites
Nature methods has an awesome ongoing section about graphics: http://blogs.nature.com/methagora/2013/07/data-visualization-points-of-view.html lists them all.
