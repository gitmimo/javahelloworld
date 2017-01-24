#
FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["while", "true", "do", "echo", "Dit is een Test!", "sleep 1", "done"]
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

