def int_to_roman(num)
	thousand = ["","M","MM","MMM"]
	hundred = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
	ten = ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
	one = ["","I","II","III","IV","V","VI","VII","VIII","IX","X"]
	puts thousand[num/1000]+hundred[num%1000/100]+ten[num%1000%100/10]+one[num%1000%100%10]    
end

int_to_roman(1800)
int_to_roman(1900)
int_to_roman(3999)