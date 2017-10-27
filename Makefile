HEADERS= caltrain.h
OBJECTS= caltrain.c caltrain-runner.c
default :shell 

%.o: %.c $(HEADERS)
	gcc -c $< -o $@


shell:$(OBJECTS)
	gcc -pthread $(OBJECTS) -o $@

clean:
	-rm -f $(OBJECTS)
	-rm -f shell
