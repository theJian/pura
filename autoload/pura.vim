function! pura#blend(c1, c2, ratio)
    let iratio = 1 - a:ratio

    let r1 = str2nr(a:c1[1:2], 16)
    let g1 = str2nr(a:c1[3:4], 16)
    let b1 = str2nr(a:c1[5:6], 16)

    let r2 = str2nr(a:c2[1:2], 16)
    let g2 = str2nr(a:c2[3:4], 16)
    let b2 = str2nr(a:c2[5:6], 16)

    let r = printf('%02x', float2nr(r1 * iratio + r2 * a:ratio))
    let g = printf('%02x', float2nr(g1 * iratio + g2 * a:ratio))
    let b = printf('%02x', float2nr(b1 * iratio + b2 * a:ratio))
    return '#' . r . g . b
endfunction

function! pura#hi(group, ...)
    exec printf('hi %s guifg=%s guibg=%s gui=%s', a:group, get(a:, 1, 'NONE'), get(a:, 2, 'NONE'), get(a:, 3, 'NONE'))
endfunction
