if executable('g++-4.8')
  let g:syntastic_cpp_compiler = 'g++-4.8'
  let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra'
endif
