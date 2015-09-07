@echo off
echo *********************************************
echo Hello friends, here is my microscopic cookbook
echo how to manage sphinx-intl with rst2pdf environment
echo on windows platform. Python27.
echo m a i l : mkucera66 _a_t_ seznam.cz
echo ******** make gettext ***********************
call make gettext
echo *********************************************
echo Created structure '.\build\locale'
echo (under the 'locale_dir' variable control)
echo with 'pot' files. Each 'rst' source text file
echo give one 'pot' file (portable object template,
echo e.g. files for translators...
echo *********************************************
echo .
echo .
call sphinx-intl update -d build/locale -p build/locale -l cs
echo *********************************************
echo Created structure echo  ./build/locale/cs...
echo (directed by parameter above) with
echo files 'po' (each for every 'rst' source text)
echo *********************************************
echo .
echo .
call make html
echo *********************************************
echo Just created HTML final structure /build/html
echo for browser offline manual viewing
echo *********************************************
echo .
echo .
call make html_cs
echo *********************************************
echo Created the similar structure /build/html_cs
echo builded with 'cs' language. Details see make.bat
echo *********************************************
echo .
echo .
call make pdf
echo *********************************************
echo PDF file created in ./build/pdf directory. EN
echo *********************************************
echo .
echo .
call make pdf_cs
echo *********************************************
echo PDF file created in ./build/pdf_cs directory. CS
echo *********************************************
echo .
echo .
echo Cosmetic but useful details. Related to rst2pdf 
echo engine: 
echo First page of the book can be on the right side and
echo its number is even (for instance 1). How to tell
echo rst2pdf about is? Use parameter --first-fage-even
echo But we are calling sphinx not rst2pdf directly.
echo I changed hard setting of parametre to value True 
echo in script rst2pdf/pdfbuild.py approx 50th row where
echo implicit value False is setup.
echo .

:end_of_story