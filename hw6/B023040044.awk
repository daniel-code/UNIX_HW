#!/usr/bin/awk -f
NR==1 { OFS="   "
	for(i = 2 ; i <= 9 ; i++)
	  L[i]=$i
	$1=$1
	OFS="  "
      }
NR%2==1  { for(i = 2 ; i <= 9 ; i++)
	if($i in M)
	  $i=M[$i]
	else
	{ M[$i]=L[i](NR-1)/2
	  $i=$i" "
	}
      }
1
