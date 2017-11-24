#!/bin/sh

echo "Hello from shell, and let's say hello to some other languages."
echo
echo "Hello, C"
cc hello.c -o a.out
./a.out
echo
echo "Hello, Python 3"
python3 hello.py
echo
echo "Hello, Java"
javac hello_Java/HelloTemplate.java
jar cfe Java-hello.jar hello_Java.HelloTemplate hello_Java/HelloTemplate.class
java -jar "Java-hello.jar"
echo
echo "Can you provide some help, Java?"
java -jar "Java-hello.jar" - -h
echo
echo "That's all for now, folks."
