
def bayes_theorem(p_h,p_e_given_h, p_e_given_not_h):
    not_h=1-p_h
    # p_e is prob of rain
    p_e=p_e_given_h*p_h+p_e_given_not_h*not_h
    # p(h/e) is prob of rain/cloud 
    p_h_given_e=(p_e_given_h*p_h)/p_e
    return p_h_given_e
# p(h)
p_h = float(input("Enter prob of cloudiness given humidity : "))
# p(e/h)
p_e_given_h=float(input("Enter prob of cloudiness or raininess given humidity : "))
# p(e/~h)
p_e_given_not_h=float(input("Enter prob of cloud/rain not given humidity : "))
result=bayes_theorem(p_h, p_e_given_h, p_e_given_not_h)
print("The prob of rain/cloud that is P(H/E)=", round(result,2))


    
    
