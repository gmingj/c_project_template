
set(DOC_NAME UserGuide)
set(PANDOC_FLAGS --template=${CMAKE_SOURCE_DIR}/doc/eisvogel
    -F pandoc-plantuml
    -N
    --toc
    --toc-depth=5
    --shift-heading-level-by=-1
    -V colorlinks
    --highlight-style=tango
    )

set(DOC_MD ${CMAKE_CURRENT_BINARY_DIR}/${DOC_NAME}.md)
add_custom_command(
    OUTPUT ${DOC_MD}
    COMMAND cp ${CMAKE_SOURCE_DIR}/doc/${DOC_NAME}.md ${CMAKE_CURRENT_BINARY_DIR}
    COMMAND sed -i 's|DOC_PATH|${CMAKE_SOURCE_DIR}/doc|g' ${DOC_MD}
    )

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${DOC_NAME}.pdf
    COMMAND pandoc ${PANDOC_FLAGS} -o ${CMAKE_CURRENT_BINARY_DIR}/${DOC_NAME}.pdf ${DOC_MD}
    )

add_custom_target(manual_pdf
    ALL
    DEPENDS ${DOC_MD} ${CMAKE_CURRENT_BINARY_DIR}/${DOC_NAME}.pdf
    )
