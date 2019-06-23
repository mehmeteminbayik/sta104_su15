load(url("http://www.openintro.org/stat/data/evals.RData"))
head(evals)
plot(evals$score ~ evals$bty_avg)
abline(lm(evals$score ~ evals$bty_avg))

plot(lm(evals$score ~ evals$bty_avg))


?jitter

plot(evals$bty_avg ~ evals$bty_f1lower)
cor(evals$bty_avg, evals$bty_f1lower)

plot(evals[,13:15])
plot(evals[,13:19])

m_bty_gen_1 <- lm(score ~ bty_avg , data = evals)
summary(m_bty_gen_1)

m_bty_gen_2 <- lm(score ~ bty_avg + gender, data = evals)
summary(m_bty_gen_2)

m_bty_gen_3 <- lm(score ~ bty_avg + cls_level, data = evals)
summary(m_bty_gen_3)


## Model MUST contain "exactly one" "categorical predictor" 
multiLines(m_bty_gen_1)
multiLines(m_bty_gen_2)
multiLines(m_bty_gen_3)
