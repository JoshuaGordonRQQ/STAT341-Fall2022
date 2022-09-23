> if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")
Error: unexpected symbol in "if(!require(devtools)) install.packages("devtools") devtools"
> library("ggpubr")
Error in library("ggpubr") : there is no package called ‘ggpubr’
> my_data <- mtcars 
> head(my_data, 6)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
Error in ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE,  : 
  could not find function "ggscatter"
> res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
> res

        Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

> res2 <-cor.test(my_data$wt, my_data$mpg, method = "spearman")
Warning message:
In cor.test.default(my_data$wt, my_data$mpg, method = "spearman") :
  Cannot compute exact p-value with ties
> res2

        Spearman's rank correlation rho

data:  my_data$wt and my_data$mpg
S = 10292, p-value = 1.488e-11
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
-0.886422 

> save.image("C:\\Users\\Joshua\\Documents\\R Prpgramming\\Assignment2.R")
> 
