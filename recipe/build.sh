#!/bin/bash
set -euxo pipefail

# USE_SYSTEM_DEPS=on makes cmake/extlib_*.cmake resolve every unvendored
# dependency from the host environment (conda packages); only the PDFium
# JBIG2 subset in src/third_party/pdfium_jbig2 is built from the source tree.
export USE_SYSTEM_DEPS=on

${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
