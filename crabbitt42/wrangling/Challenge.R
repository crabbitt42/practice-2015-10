install.packages('dplyr')
install.packages('tidyr')

library(dplyr)
library(tidyr)
ds <- swiss %>% add_rownames()
ds
swiss

ds %>% select(-rowname) %>% filter(Catholic < 60) %>% 
  mutate(Fertile = ifelse(Fertility > 50, 'Fertile','Infertile')) %>% 
  gather(Variable, Value, -Fertile) %>% group_by(Fertile, Variable) %>%
  summarise(mean = mean(Value)) %>% spread(Fertile, mean)

# 2 

ds %>% select(-rowname) %>% filter(Catholic < 60) %>% 
  mutate(Fertile = ifelse(Fertility > 50, 'Fertile','Infertile')) %>% 
  gather(Variable, Value, -Fertile) %>% group_by(Fertile, Variable) %>%
  summarise(mean = paste0(mean(Value) %>% round(2) %>% format(nsmall = 2),
                          ' (', sd(Value) %>% round(2) %>% format(nsmall = 2),
                          ')')) %>% spread(Fertile, mean)

# 3

ds %>% gather(Variable, Value, -rowname) %>% group_by(Variable) %>% 
  mutate(Level = (Value == min(Value) | Value == max(Value))) %>% 
  ungroup() %>% filter(Level == 1) %>% select(County = rowname, Variable, Value)

# 4
ds %>% tbl_df() %>% gather(Measure, Value, -rowname) %>% group_by(Measure) %>% 
  summarize(min = min(Value), mean = mean(Value), max = max(Value))

# 5
select(filter(ds, Education >= 8 & Infant.Mortality < 18 & Fertility <= 60 & Fertility >= 50),rowname)



# 7
install.packages('broom')
install.packages('knitr')
swiss %>% 
  tbl_df() %>% 
  gather(Indep, Xvalue, Fertility, Agriculture) %>% 
  gather(Dep, Yvalue, Education, Catholic) %>% 
  group_by(Dep, Indep) %>% 
  do(lm(Yvalue ~ Xvalue + Infant.Mortality + Examination, data = .) %>% 
       broom::tidy()) %>% 
  filter(term == 'Xvalue') %>% 
  select(Dep, Indep, estimate, std.error) %>% 
  knitr::kable()