library(tidyverse)

df <- read.csv(text='Task,Type,Ease,MarginalUsefulness
               Excel,Program,9.15,8
               Mendeley,Program,9.65,9.1
               Zotero,Program,9.4,9.5
               Google Scholar,Web Resource,8.5,9.9
               ResearchGate,Web Resource,7,.1
               Preprint Emails,Web Resource,9,8.5
               Twitter/Blog,Career,5.75,2.5
               EconLit,Web Resource,7,7.5
               Good Advisor,Career,5,10
               Your Website,Career,7.5,4
               Knowing Journal Targets,Career,4,5.75
               Attending Seminars,Career,7.5,8
               DataViz*,Aesthetics,3,4.25
               Writing Well,Aesthetics,2,9.5
               LaTeX/Beamer,Aesthetics,4.75,6.2
               Markdown,Aesthetics,9,2
               Word/PPT,Aesthetics,9.5,5.9
               LinkedIn*,Career,7.5,.5
               R*,Coding,6,6.5
               Stata,Coding,7.75,7
               Matlab,Coding,5,4
               Python*,Coding,4.5,5
               C/#/++*,Coding,2.5,2
               SQL*,Coding,3,3
               SAS*,Coding,1.5,3.5
               Public Speaking,Aesthetics,2.75,7.6
               Grant Writing,Career,2.5,4.75
               RA Position,Career,6,9.25
               TA Position,Career,7.5,5.75
               Calendar App,Program,6.5,4.75
               To-Do App,Program,5.5,7
               Git*,Coding,5,3.5')


ggplot(df,aes(x=Ease,y=MarginalUsefulness,label=Task,color=Type))+geom_text(hjust=.75)+
  coord_cartesian(xlim=c(0,10),ylim=c(0,10))+ylab("Marginal Usefulness (MU) to Student")+
  labs(title='What Should an Applied Micro Econ PhD Student Get Sorted?',
       subtitle='YMMV. Doesn\'t count research or work/life balance.',
       caption='Excel not included for econometrics use. Sorting out one thing affects MU of others.\nStata > others reverses quickly if you plan to do anything Stata isn\'t good at, like ML.\n*Marginal Usefulness increases considerably if you\'re aiming for an industry job.')
