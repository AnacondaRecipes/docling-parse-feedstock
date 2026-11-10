REM USE_SYSTEM_DEPS=on makes cmake/extlib_*.cmake resolve every unvendored
REM dependency from the host environment (conda packages); only the PDFium
REM JBIG2 subset in src/third_party/pdfium_jbig2 is built from the source tree.
set USE_SYSTEM_DEPS=on

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if %ERRORLEVEL% neq 0 exit 1