local current_dir="%~"
local root_prompt="%F{9}%#"
local user_prompt="%F{4}$"
PROMPT='%F{2}%n %F{3}%m %F{6}%~ %(!.${root_prompt}.${user_prompt})%f%k%b '

setopt promptsubst
