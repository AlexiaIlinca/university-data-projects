use "C:\Users\mateiciuc\OneDrive - UCL\Thesis Data.dta"
use "z:\UDSData\Downloads\Thesis\Thesis Data.dta"
edit
do "C:\Users\MATEIC~1\AppData\Local\Temp\STD1ce4_000000.tmp"
*Drop the irrelevant outliers
drop if id == 57 (1 observation deleted)
end of do-file
*1a. Reliability Emotional Responses t1 & t2
alpha t1_visually_appealing t1_creative t1_likable t1_pleasant t1_captivating, > item Test scale = mean(unstandardized items)
alpha t2_visually_appealing t2_creative t2_likable t2_pleasant t2_captivating, Test scale = mean(unstandardized items
*1b. Create composite score Emotional Responses t1 & t2
egen t1_emotional = rowmean (t1_visually_appealing t1_creative t1_likable t1_p > leasant t1_captivating)
do "C:\Users\MATEIC~1\AppData\Local\Temp\STD1ce4_000002.tmp"

anova t1_emotional i.product_type##i.label_type graph bar (percent), over(age) ///> title("Age Distribution of Participants") ///> ytitle("Percentage (%)") ///> blabel(bar, format(%4.1f)) ///> bar(1, color(green))  
scheme(s1color)

alpha t1_consideration_purchase t1_likelihood_purchase t1_willingness_purchase > , item
                                                                                                 
