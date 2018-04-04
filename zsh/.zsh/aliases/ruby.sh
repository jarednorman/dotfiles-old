alias bx='bundle exec'

function codegem() {
  echo `bundle show $(bundle list | sed '1d' | cut -d ' ' -f 4 | fzy)`
}
