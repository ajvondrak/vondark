" Name:    vondark
" Author:  Alex Vondrak
" URL:     https://github.com/ajvondrak/vondark
" License: MIT
" Version: 0.1

if !has("gui_running") && !(has("termguicolors") && &termguicolors)
  echoerr "The vondark colorscheme requires 24-bit colors; see :h termguicolors"
  finish
endif

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vondark"

set background=dark

let s:fg      = "#cccccc"
let s:dim     = "#999999"
let s:dimmer  = "#666666"
let s:dimmest = "#333333"
let s:bg      = "#1a1a1a"
let s:red     = "#ff1744"
let s:orange  = "#ff8a50"
let s:yellow  = "#ffc400"
let s:green   = "#80e27e"
let s:blue    = "#2979ff"
let s:purple  = "#9a67ea"
let s:aqua    = "#6ec6ff"
let s:slate   = "#8eacbb"
let s:pink    = "#dc67ea"

function! s:hi(group, gui)
  execute "highlight clear " . a:group
  execute "highlight " . a:group . "   gui=" . get(a:gui, "ui", "NONE")
  execute "highlight " . a:group . " cterm=" . get(a:gui, "ui", "NONE")
  execute "highlight " . a:group . " guifg=" . get(a:gui, "fg", "NONE")
  execute "highlight " . a:group . " guibg=" . get(a:gui, "bg", "NONE")
  execute "highlight " . a:group . " guisp=" . get(a:gui, "sp", "NONE")
endfunction

" Core
call s:hi("Normal",           {"fg": s:fg, "bg": s:bg})
call s:hi("Cursor",           {"fg": s:bg, "bg": s:fg})
call s:hi("Visual",           {"fg": s:bg, "bg": s:slate})

" Special text
call s:hi("NonText",          {"fg": s:slate})
call s:hi("Conceal",          {"fg": s:slate})
call s:hi("SpecialKey",       {"fg": s:slate})
call s:hi("EndOfBuffer",      {"fg": s:dimmer})

" Passive highlighting
call s:hi("MatchParen",       {"bg": s:dimmer})
call s:hi("ColorColumn",      {"bg": s:dimmest})
call s:hi("CursorColumn",     {"bg": s:dimmest})
call s:hi("CursorLine",       {"bg": s:dimmest})
call s:hi("CursorLineNr",     {"bg": s:dimmest})

" Gutter
call s:hi("SignColumn",       {"fg": s:dimmer})
call s:hi("LineNr",           {"fg": s:dimmer})
call s:hi("LineNrAbove",      {"fg": s:dimmer})
call s:hi("LineNrBelow",      {"fg": s:dimmer})

" Diff mode
call s:hi("DiffAdd",          {"fg": s:green, "bg": s:dimmest})
call s:hi("DiffDelete",       {"fg": s:red, "bg": s:dimmest})
call s:hi("DiffChange",       {"fg": s:yellow, "bg": s:dimmest})
call s:hi("DiffText",         {"fg": s:orange, "bg": s:dimmest})

" Folds
call s:hi("FoldColumn",       {"fg": s:slate})
call s:hi("Folded",           {"fg": s:dimmer})

" Search
call s:hi("IncSearch",        {"fg": s:bg, "bg": s:orange, "ui": "bold"})
call s:hi("Search",           {"fg": s:bg, "bg": s:yellow, "ui": "bold"})

" Status line
call s:hi("StatusLine",       {"bg": s:dimmer})
call s:hi("StatusLineNC",     {"bg": s:dimmest})
call s:hi("StatusLineTerm",   {"fg": s:aqua, "bg": s:dimmer})
call s:hi("StatusLineTermNC", {"fg": s:slate, "bg": s:dimmest})

" Command line
call s:hi("Title",            {"fg": s:slate})
call s:hi("Question",         {"fg": s:yellow})
call s:hi("ModeMsg",          {"fg": s:slate})
call s:hi("MoreMsg",          {"fg": s:green})
call s:hi("ErrorMsg",         {"bg": s:red})
call s:hi("WarningMsg",       {"fg": s:orange})
call s:hi("Directory",        {"fg": s:blue})
call s:hi("WildMenu",         {"fg": s:bg, "bg": s:slate, "ui": "bold"})

" Popup menu
call s:hi("Pmenu",            {"fg": s:fg, "bg": s:dimmest})
call s:hi("PmenuSel",         {"fg": s:bg, "bg": s:slate, "ui": "bold"})
call s:hi("PmenuSbar",        {"bg": s:dimmer})
call s:hi("PmenuThumb",       {"bg": s:fg})

" Spelling
if has("gui_running")
  call s:hi("SpellBad",         {"sp": s:red, "ui": "undercurl"})
  call s:hi("SpellCap",         {"sp": s:aqua, "ui": "undercurl"})
  call s:hi("SpellLocal",       {"sp": s:yellow, "ui": "undercurl"})
  call s:hi("SpellRare",        {"sp": s:yellow, "ui": "undercurl"})
else
  call s:hi("SpellBad",         {"fg": s:red, "ui": "undercurl"})
  call s:hi("SpellCap",         {"fg": s:aqua, "ui": "undercurl"})
  call s:hi("SpellLocal",       {"fg": s:yellow, "ui": "undercurl"})
  call s:hi("SpellRare",        {"fg": s:yellow, "ui": "undercurl"})
end

" Tabs & Splits
call s:hi("TabLine",          {"fg": s:fg, "bg": s:dimmest})
call s:hi("TabLineSel",       {"fg": s:bg, "bg": s:slate})
call s:hi("TabLineFill",      {"bg": s:dimmest})
call s:hi("VertSplit",        {"fg": s:dimmer})

" Syntax
call s:hi("Comment",          {"fg": s:dim})
call s:hi("Constant",         {"fg": s:yellow})
call s:hi("String",           {"fg": s:yellow, "bg": s:dimmest})
call s:hi("Number",           {"fg": s:orange})
call s:hi("Identifier",       {"fg": s:aqua})
call s:hi("Statement",        {"fg": s:blue})
call s:hi("PreProc",          {"fg": s:purple})
call s:hi("Type",             {"fg": s:green})
call s:hi("Special",          {"fg": s:pink})
call s:hi("Underlined",       {"fg": s:slate, "ui": "bold"})
call s:hi("Ignore",           {})
call s:hi("Error",            {"bg": s:red})
call s:hi("Todo",             {"ui": "bold"})
