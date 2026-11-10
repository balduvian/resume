New-Item -Path "_aux" -ItemType Directory -Force
New-Item -Path "build" -ItemType Directory -Force
New-Item -Path "out" -ItemType Directory -Force

inkscape -D link-icon.svg -o build/link-icon.pdf --export-latex

xelatex -no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -recorder -output-directory="_aux" resume.tex

xdvipdfmx -E -o "out/resume.pdf" "_aux/resume.xdv"
