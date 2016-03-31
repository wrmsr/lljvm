add_executable(lljvm-backend
  backend.cpp
  block.cpp
  branch.cpp
  const.cpp
  function.cpp
  instruction.cpp
  loadstore.cpp
  main.cpp
  name.cpp
  printinst.cpp
  sections.cpp
  tool.cpp
  types.cpp
  )

target_link_libraries(lljvm-backend LLVMCore LLVMSelectionDAG)
