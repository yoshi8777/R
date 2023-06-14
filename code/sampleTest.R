{
  isprime=function(n)
  { count=0 
  for(i in 1:n)
  {
    if(n%%i==0)
    {
      count=count+1
    }
  }
  if(count==2)
  {
    print(paste(n,"is prime"))
  } else
  {
    print(paste(n,"is not prime"))
  }
  }
  n=as.integer(readline(prompt="enter a number"))
  isprime(n)
}