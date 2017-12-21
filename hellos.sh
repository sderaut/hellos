#!/bin/sh
# hellos.sh -- the social butterfly of hello world programs
# lint using: shellcheck --shell=sh hellos.sh

is_cmd() {
  command -v "$1" >/dev/null 2>&1
}

echo "Hello from shell, and let's say hello to some other languages."
echo
if is_cmd cc; then {
  echo "Hello, C"
  if cc hello.c -o a.out; then {
    ./a.out
  } else {
    echo "C is not feeling well."
  } fi
} else {
  echo "System C compiler (command: cc) not found!"
} fi
echo
if is_cmd python3; then {
  echo "Hello, Python 3"
  python3 hello.py
} else {
  echo "Python 3 (command: python3) not found!";
} fi
echo
if is_cmd javac && is_cmd jar && is_cmd java; then {
  echo "Hello, Java"
  javac hello_Java/HelloTemplate.java
  jar cfe Java-hello.jar hello_Java.HelloTemplate \
      hello_Java/HelloTemplate.class
  java -jar "Java-hello.jar"
  echo
  echo "Can you provide some help, Java?"
  java -jar "Java-hello.jar" - -h
} else {
  echo "Java (commands: javac jar java) not found!"
} fi
echo
if is_cmd gdc; then {
  if gdc hello.d -o d.out; then {
    ./d.out
  } else {
    echo "D is not feeling well."
  } fi
} else {
  echo "GNU compiler for D (command gdc) not found!"
} fi
echo
echo "That's all for now, folks."
