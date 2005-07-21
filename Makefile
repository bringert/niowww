default all:
	javac net/bringert/niowww/*.java

jar: all
	find net -name '*.java' -o -name '*.class' | xargs jar -cmf manifest.txt niowww.jar 

clean:
	find . -name '*.class' -o -name '*.jar' -exec rm -f {} ';'