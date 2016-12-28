" functions.vim

" Get OS Platform
function GetPlatform()
    if has('win32') || has('win64')
        return "Windows"
    elseif has("unix")
        return substitute(system("uname"), "\n", "", "g")
    else
        return "Unknown"
    endif
endfunction

" toggle absolute/relative numbering
function ToggleNumbering()
    set relativenumber!
endfunction

