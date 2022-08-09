# Quick proportions test
prop.test(x=c(7,7),n=c(54,86), correct=F)

# "pooled probability"
p <- (7+7) / (54+86)

p1 <- 7/54
p2 <- 7/86

# Z score: var= p*q = p*(1-p) divided by the SE
#z <- (p1-p2) / sqrt( (p1*(1-p1)) / 54 + (p2 * (1-p2))/86 )
z <- (p1-p2) / sqrt( p*(1-p) *( 1/54 + 1/86) )

# make sure the result is consistent, P-value:
# sum up the CDF up to the value Z (=obtain right tail). p*2 -> both tails
2*(pnorm(z, lower.tail=F))
