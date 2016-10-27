# notes on _the visual display of quantitative information_

# part i

## chapter 1

Good graphics should:
- show the data (note that Tufte’s famous re-make of the box plot fails this first criteria of what good graphics should do)
- induce the reader to think about substance, not processes or methodology
- presents lots of data in a small space (!?)
- emphasize different parts of the data
- **serve a clear purpose: descriptions, exploration, tabulation, or decoration**
- reveal the data at several levels of detail

I find Tufte’s reliance on data-density to be stupid. Mostly because you can make a very data-dense graph that is totally meaningless.

Good quote from William Playfair:
	…a man who has carefully investigated a printed table, finds, when done, that he has only a very faint and partial idea of what he has read…
	
Most of the graphics shown in Tufte’s book are inherently confusing and cluttered. I get that most of these are old, but why are you showing them to us if they (1) suck and (2) violate your own rules?

———————

		Graphical excellence is that which gives to the viewer the greatest number of ideas in the shortest time with the least ink in the smallest space.

This, I agree with. But Tufte seems to be conflating _raw data_ with _ideas_. Perhaps the the age of big data has shown us that these are different? Yet Tufte shows us some very data-dense figures that also provide zero insight and thus are (in my mind) worthless, like the galaxy maps in this chapter that looks like TV screen fuzz.

## chapter 2 : graphical integrity

	The perceived area of a circle probably grows somewhat more slowly than the actual (physical, measured) area: the reported perceived area = (actual area)^x, where x = 0.8 plus/min 0.3

Most of this chapter pertains to infographics. Most common scientific graphic formats guard against a lot of what he’s railing against.

Pay attention to axes labels.

Part of Tufte’s thrust is that what he calls _relational graphics_ (i.e. a graph that shows a relationship between two variables) are inducing the reader to consider a causal relationship between the x and y variables (also see p. 82 where he says, “Relational graphics are essential…since they confront statement about cause and effect with evidence, showing how one variable affects anther.”). I don’t know if this is always right, but I think he’s correct in that this is how much people interpret these sorts of plots, consciously or no. According, there’s no substitute for critical thinking (i.e. thinking about latent variables or other casual mechanisms that explain some pattern). This is less about graphical display of data and more just about questioning things and thinking critically.

Don’t change two dimensions of something to illustrate a one-dimensional variable, leading to 

	The number of information-carrying (variable) dimensions should not exceed the number of dimensions in the data. p.71

——

	To be truthful and revealing, data graphics much bear on the question at the heart of quantitative thinking: "Compared to what?" p.74


Tufte says that “the representation of numbers, as phycially measured on the surface of the graphic itself, should be directly proportional to the numerical quantities represented,” and this is obviously true. But note that color has become a way to represent a single variable and that there are issues with perception of color and how a viewer maps these to the variable. This is the same issue that Tufte broaches, but it’s reared its head under a different guide and most people are still unaware of it.

## chapter 3: sources of graphical integrity and sophistication

	If the statistics are boring, then you've got the wrong numbers. p.80

Tufte argues that _relational_ graphics are “essential to competant statistical analyses” and proposes that the proportion of relational figures (not that these don’t include maps or time series, for some reason) is a measure of ‘graphical sophistication’. I’ll let you think about all the reasons wrong with this approach.

# part ii: theory of data graphics

## chapter 4: data-ink and graphical redesign

	"…statistical graphics are instruments to help people reason about quantitative information". p 91

The fundamental principle of good statistical graphics:

	"Above all else show the data." p. 92

Data-ink ratio = ink used to show the data / total ink used in the graphic = 1.0 proportion of graphic that could be erased without losing data-information

On p. 95, Tufte laments that a graph he shows of a regression line without the data “achieves graphical absolute zero, a null data-ink ratio.” Note that by this criteria, boxplot (_sans_ outliers) would be qualify as achieving a null data-ink ratio.

Another rule:

	"Maximize the data-ink ratio, within reason." p.96


Thankfully, Tufte realizes that “redundancy [in graphics], upon occasion, has its uses.” p. 98.

Tufte prunes away non-data-ink from a bar plot on p. 101 into something completely unrecognizable that would probably make most people angry when they first looked at it. It’s also telling that in his redesign, Tufte actually doesn’t follow all his own rules. For example, there is a horizontal line that represents the magnitude of some value as well as a vertical line leading up to it. A few pages before, he lamented that these were redundant and unnecessary!

Tufts here, again, fails to critically analyzes his suggestions on psycho-physics / psychological grounds. I can imagine that people simply interpret bar graphs better than they do these no-none-data-ink figures. Lines and bars are likely perceived differently by humans. I would they are likely to perceive bars more accurately than lines, but I don’t know. At least I’m asking the question.

## chapter 5: charkjunk

Don’t fill in elements of your graphs so that they ‘shimmer’ or ‘vibrate.’ Use shades of grey instead.

Tufte is firmly against gridlines: “Grids are mostly for the initial plotting of data at home or office rather than for putting into print” (p. 112-113). If really necessary, use a grey grid.

Also, for some (unknown, unexplained) reason Tufte hates sans serif font.

## chapter 6: data ink maximization and graphical design

Tufts revises the good ol’ box plot in favor of something he calls the quartile plot. It’s simple and clean and relies on our _gestault_ perceptions to fill in the space where the box normally goes. It’s great, but it’s also totally foreign to academics. 

Then he goes a step further and changes it so that instead of something obvious but clean looking, the quartile plot is a straight line, the middle 50% of which is _slightly_ offset. It’s awful-looking, non-obvious, and uses more ink, and yet this is the “preferred form of the quartile plot.”

I guess one of my main criticisms of Tufte is that nothing that he says is grounded in empiricism. It’s (mostly) grounded in minimalistic principle and good sense, but this is an example where he leads us astray.

I thought Tufte’s use of _gestalt_ in his modified box plot was clever; his redesign of the bar plot suggests to the reader this was mere coincidence. He imposes a white grid on a bar plot, meaning that each bar becomes broken up into lots of smaller bars, which creates visual chaos and is directly _contra_ the advice he gives in later books on visualization (e.g. 1 + 1 > 2 or some shit like that). 

Tufts does have some useful things to say about scatterplots. What he’s getting at is showing the univariate distributions along the x- and y-axes along with the bivariate distribution that comprises what we normally think of as a scatterplot. He advises us the each axis should only extend between the minimum and maximum of our data and that we should use one of his modified box plots on each axis.

Tufts later explicitly says that good data analysts plot marginal and joint distributions together. 

I’m particularly fond of plotting a histogram made of tiny points on each axis.

The rug plot (p. 135) is nuts and an interesting way to present multidimensional quantitive data, but I find it unintuitive.

In the conclusion, Tufte acknowledges one of my main critiques—that no one will understand his new graphics, but he basically dismisses the idea but saying that if you understand them, your audience should too. I think this is terrible advice. I would advise Tufte to take Pinker’s advice and consider what it would be like to be a neophyte looking at some of these graphs for the first time.

# chapter 7: multifunctioning graphical elements

	Mobilize every graphical element, perhaps several times over, to show the data. p.139

This makes sense in a way, but I think Tufte is a little too committed to data-ink-maximialization. I have a feeling that there are some graphs whose understanding is going to be compromised if every element of it shows either data or a statistic / summary based on that data.




—————

Another over-arching thing that pisses me off about this book is that Tufte is blind to what I would describe as the difference between _data_ and _statistics_; this despite him being a statistics professor who’s fricking job it is to think about this shit. 

Tufts at one point (and I’ve harped on this above >= 1 time(s)) shows a regression without data points. Bad graph! says Tufte. There is no data here! says Tufte. He’s right. A slope and intercept are statistics, not _data_, the actual things you measure in the natural world. But what Tufte seems to be saying is that statistics have no place in statical graphics, which I find odd. I find it even more odd since he later on revises a bar plot to make to simpler by stripping over non-data-ink. Aha! I think I’ve bested Tufte at his own game, because according to Tufte (and again, I agree with him), there _are_ no data on a bar plot. Just like the regression line without data, a bar plot is the same fucking thing, except it’s displaying the relationship between a categorical and quantitative variables instead of two quantitative variables. 

I really like the stem and leaf plots he brings up, but maybe they could be made rotated 90 degrees to encourage the comparison to a histogram?

	If we are going to make a mark, it may as well be a meaningful one. —John Tukey

Tufts is in favor of using grids that somehow convey data.

	…in a non-puzzle graphic, the translation of visual to verbal is quickly learned, automatic, and implicit… p. 153

Thankfully, Tufte realizes that the standard ‘rainbow’ colormap most people use is really dumb because it “does not readily give a visual ordering to colors…” (p. 154).


## chapter 8: data density and small multiples



—————————

Though Tufte touches on psychophysics, he ignores psychology. When he describes new graphical displays of data, he does so in a way that’s totally ignorant of, like, how people will respond to the new displays, or whether they will take the time to understand what they mean or what they’re saying or why they’re better. 

Additionally, the introduction of a new type of graphic—regardless of what the new graphic is and whether it’s superior or not—likely induces cognitive strain and makes people crankier and less likely to take something away from your data.