run:
  javac src/fox/haikyo/*.java -d .
  java fox.haikyo.Main

# Упаковать исходники (src), нужные для проверки ДЗ, в один zip-архив
zip:
  rm -f practicum-s2-src.zip
  zip -r practicum-s2-src.zip src

clean:
  rm -rf fox/
  rm -f practicum-s2-src.zip
  rm -rf .direnv/
