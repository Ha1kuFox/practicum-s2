run:
  javac src/fox/haikyo/*.java -d .
  java fox.haikyo.Main

zip:
  rm -f practicum-s2-src.zip
  rm -rf .pkgbuild
  mkdir -p .pkgbuild/app
  cp -r src .pkgbuild/app/src
  cd .pkgbuild && zip -r ../practicum-s2-src.zip app
  rm -rf .pkgbuild

clean:
  rm -rf fox/
  rm -f practicum-s2-src.zip
  rm -rf .direnv/
