" set libclang directory path
let g:snowdrop#libclang_directory = "/usr/bin"

" " set include directory path.
let g:snowdrop#include_paths = {
\   "cpp" : "/usr/include/c++/4.2.1/"
\}
       "/usr/local/Cellar/boost",

" set clang command options.
let g:snowdrop#command_options = {
\   "cpp" : "-std=c++11"
\}
