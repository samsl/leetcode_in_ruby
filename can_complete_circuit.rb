# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
   i = 0
   result = -1 
   while i<amount
   	left = 0
   	amount = gas.size
   	j=i
	    while j < i+amount 
	      left +=gas[j%amount]-cost[j%amount]
	      j+=1
	      break if left<0
	    end
    return i if j==i+amount
    i+=1
    end
end