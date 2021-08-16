Instalar Git
Instalar Ruby
'ridk install' (1 & 3)
'gem install jekyll bundler'
'jekyll -v'
'chcp 65001'

github:
1. new repository en GitHub Desktop: nombreDeLaPagina, no _gitignore, no Readme, no Licence.

windows cmd:
1. en el directorio raiz donde se creara la pagina
	- 'jekyll new nombreDeLaPagina'
2. modificar _config.yml 
	baseurl: "nombreDeLaPagina"
3. dentro de la carpeta "nombreDeLaPagina"
	- 'gem install bundler'
	- 'gem install jekyll'
	- 'bundle install'
	- 'bundle add webrick'
	- 'bundle exec jekyll serve'
	- 'git init'
	- 'git checkout -b gh-pages' (en esta rama se guardan las paginas de github pages)
	- 'git status'
	- 'git add .' (añadir al commit)
	- 'git commit -m "initial commit"' (commit)
	- 'git remote add origin https://github.com/javicarrera/NextFil-Documentation.git' (Enlazar github repository)
	- 'git push origin gh-pages' (push all files)
4. Github. 
	- Settings. GitHub Pages. Ahi esta el enlace público.
	- Theme Chooser. Change Theme.
	- Custom domain. Si tienes tu propio dominio.