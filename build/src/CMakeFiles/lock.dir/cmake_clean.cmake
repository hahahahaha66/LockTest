file(REMOVE_RECURSE
  "../lib/liblock.a"
  "../lib/liblock.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/lock.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
