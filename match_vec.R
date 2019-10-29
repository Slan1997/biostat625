match_vec = function(x,y){
  n = length(x)
  m = length(y)
  if (n>m) num_match = 0
  # n <= m
  else{
    key = matrix(0,nrow=n,ncol=(m-n+1))
    for (i in 1:n){
      eq = y==x[i]
      end = m-n+i
      key[i,] = eq[i:end]
    }
    num_match = sum(colSums(key) == n)
  }
  return(num_match)
}

