topmodule	:= top.v
deffiles	:= $(shell cat $(topmodule) | grep include | sed 's/include\|`\|"\|\n//g')

$(topmodule):$(deffiles)

all:
	echo $(var);\
	if [ -f $(deffiles) ] ;\
		then make topmodule=$(deffiles) ;\
	else ;\
		then echo "end of leaves" ;\
	fi


