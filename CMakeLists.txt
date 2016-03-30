cmake_minimum_required(VERSION 2.8.8)
project(SimpleProject)

enable_language(CXX)

add_subdirectory(llvm)

add_executable(simple-tool
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
set_target_properties(simple-tool PROPERTIES COMPILE_FLAGS -std=c++14)

# llvm_map_components_to_libnames(llvm_libs support core irreader)

# Link against LLVM libraries
target_link_libraries(simple-tool LLVMCore LLVMSelectionDAG)
