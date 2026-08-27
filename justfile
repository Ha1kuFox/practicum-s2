run:
  javac src/fox/haikyo/*.java -d .
  java fox.haikyo.Main

clean:
  rm -rf fox/
  rm -rf .direnv/
