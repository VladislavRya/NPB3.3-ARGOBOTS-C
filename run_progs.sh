#!/bin/bash

make clean
make veryclean
make suite

mkdir -p results/argobots

for file in bin/*; do
  if [[ -x "$file" ]]; then
    filename=$(basename "$file")
    
    for i in {1..3}; do
      ./"$file" > "results/argobots/${filename}_run_${i}.txt" 2>&1
    done
  else
    echo "Файл $file не является исполняемым и будет пропущен"
  fi
done
