topmodule	:= top.v
deffiles	:= $(shell cat $(topmodule) | grep include | sed 's/include\|`\|"\|\n//g')

$(topmodule):$(deffiles)

all:
	echo $(var);\
	if [ -f $(deffiles) ] ;\
		for i in $(deffiles);\
			do make all topmodule=$i --debug
		done
	else ;\
		then echo "end of leaves" ;\
	fi


