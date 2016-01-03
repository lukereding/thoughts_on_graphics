## thoughts on graph and data visualization


In this document I will describe best practices for graphs and why I think they are the best practices (data whether certain practices actually are better is thin though). Ideally, I'll include a bunch of example graphs here to illustrate good and bad practices.

## motivation: why graphs and graphics are essential

Anscombe's quartet illustrates how our trust of numbers without validating our intuition using a graphic is problematic. This quartet is four x, y vectors. Each pair of vectors has the same summary statistics (mean of each vector, covariance between x and y, and regression slopes). Yet when these four pairs of points are graphs on four scatterplots, it's clear the data are quite different:

![quartet graph from wikipedia here](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Anscombe's_quartet_3.svg/425px-Anscombe's_quartet_3.svg.png)

By definition, summary statistics provide a simplified abstraction of our data, but the example above shows that we're lying to ourselves as scientists if make the common mistake of assuming summary statistics are adequate at describing our data.

The image above also illustrates that often our data contains features we might not even be aware of: unknown unknowns that we simply haven't thought about or considered. For example, if I told you that two sets of data had the same means for x and y and covariances, you'd probably assume their scatterplots would look pretty similar. You probably wouldn't have even thought "I wonder if there are outliers that could cause this similarity?" or "Is it possible that the relationship between x and y could be different in this pair of data?"

As Daniel Kahneman writes about in his book _Thinking Fast and Slow_, the humans mind tends to be lazy. Part of the power of graphics is that they take tap into the strong visual processing parts of our brains and force us not to be lazy when it comes to interpreting data.

This is why graphs are so powerful and so essential.

### guiding principles about graphics

Below I outline guiding principles I think are important when creating a graphic.

* every part of the graph should have a clear purpose
..* this is
* show the data, some summary of the data or parameter estimate of interest, and some measure of variability about that estimate
* clearly label sample sizes
* state some measure of effect size
* state the the test used to assess statistical significance and the resulting p-value
* don't extrapolate
* use color thoughtfully. Or just use viridis. Why? (a) It's perceptually uniform. (b) It looks good. (c) It works just as well printed in black and white. (d) It's accessible to people with the most common forms of colorblindness. (e) It works for representing categories or for representing a quantitative variable. (f) You'll never need to justify your color scheme ever again. Note that this is also true of the other colormaps provided in the viridis package (plasma, magma, and inferno), but they don't look as nice.


### useful papers / sites
