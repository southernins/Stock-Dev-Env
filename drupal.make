;custom Drupal Make file
core = 7.x

api = 2

;Core
projects[] = drupal

;Modules
projects[] = views
projects[] = ctools
projects[] = pathauto
projects[] = token
projects[] = libraries
projects[] = imce
projects[] = wysiwyg
projects[] = imce_wysiwyg
projects[] = imce_mkdir
projects[] = imce_plupload
projects[] = colorbox
projects[] = panels
projects[] = jquery_update
projects[] = navigation404
projects[] = search404
projects[] = views_bootstrap

;Themes
projects[] = bootstrap

;Custom Libraries
libraries[bootstrap][download][type] = "get"
libraries[bootstrap][download][url] = "https://github.com/twbs/bootstrap/archive/v3.0.2.zip"
libraries[bootstrap][directory_name] = "bootstrap"
libraries[bootstrap][destination] = "themes/bootstrap"
libraries[bootstrap][overwrite] = TRUE

; Libraries
; Please fill the following out. Type may be one of get, git, bzr or svn,
; and url is the url of the download.
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.2/ckeditor_3.6.6.2.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"

; Please fill the following out. Type may be one of get, git, bzr or svn,
; and url is the url of the download.
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][type] = "library"
