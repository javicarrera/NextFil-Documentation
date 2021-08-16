# NextFil-Documentation
NextFil Filament Dehydrator Documentation Project

# NextFil Documentation Project

The aim of this project is to provide clear and concise documentation for [NextFil Dehydrator firmware](//github.com/javicarrera/NextFil-Dehydrator). This documentation is made open and available on Github so anyone is welcome to contribute by either completing, correcting or creating new articles. See the section below, "[What We Need Most](#what-we-need-most)," for a current list of... what we need most.

## Technical details

The NextFil Documentation Project is built using the following technologies:
- [Ruby](//www.ruby-lang.org/en/downloads/)
- [RubyGems](//rubygems.org/pages/download)
- [Jekyll](//jekyllrb.com/)
- [Github pages](//pages.github.com/)

## How to contribute

To work with the documentation, first you need to make a Fork of this repository in your own Github account, then locally clone **your NextFil Dehydrator fork**. You should do all work within your own fork before submitting it to us. You can download the [GitHub Desktop app](//desktop.github.com/) and use Github's "Open in Desktop" option, or from your own desktop open a terminal/cmd window and do:
  - `cd C:\` (for example)
  - `git clone https://github.com/javicarrera/NextFil-Dehydrator.git`

This will create a local `C:\NextFil-Dehydrator` folder linked to your fork.

To add new documentation or edit existing documentation, start by creating a new branch as a copy of the 'master' branch. You can do this using the Github web interface, from within Github Desktop, or from the command line.

If your new document is about "mashed potatoes" then name the new branch accordingly:
```
git checkout master -b doc-mashed_potatoes
```
Inside the `_docs` folder add the new file `mashed-potatoes.md` and let flow all your creativity into it. When you feel your masterpiece is ready to be shared with the world, commit the changes and push them up to your fork of **MarlinDocumentation**, then start a new Pull Request to the upstream repository (MarlinFirmware/MarlinDocumentation). This is done most easily from within the Github Desktop app. Please read Github's documentation on managing branches and creating Pull Requests if you're not sure how to proceed.
```
git add mashed-potatoes.md
git commit -m "Added a new document about potatoes"
git push
```

## Coding style

This Jekyll-based site is based on the Markdown language in delicious YAML wrapper. Be careful with this format because small typos can cause Jekyll to reject the page. If you've installed Jekyll as described below, your local auto-building Jekyll server will tell you where your errors are.

## Editorial style

Try to be neutral, concise, and straightforward. Avoid use of personal pronouns, unless avoiding them proves awkward. Provide images and give examples where needed. Check your spelling, grammar, and punctuation.

## What we need most

1. Create "Getting Started" guides to ease the Marlin learning curve for new users.
1. Document all supported functions.

### Work in progress

You can use the `_tmp` folder for files in progress, and they will not be included in the site deployment.

## Local Jekyll Preview

If you'd like to be able to preview your contributions before submitting them, you'll need to install Jekyll on your system. Instructions are given below. As this is a non-trivial process, we recommend reading one of the following tutorials for a quick start with Jekyll:
- [Jekyll running on Windows](//jekyll-windows.juthilo.com/)
- [Jekyll running on Linux, Unix, or Mac OS X](//jekyllrb.com/docs/installation/)

### Installing buildroot on Windows

 1. Get Ruby for Windows ([Ruby installer](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.0.2-1/rubyinstaller-3.0.2-1-x64.exe)), execute the installer and go through the steps of the installation, make sure to check the “Add Ruby executables to your PATH” box.
 2. Get MSYS2 for Windows [MSYS2](https://www.msys2.org/), and follow the instructions
 3. Get Ruby Devkit ([Ruby Devkit](//dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe)), the download is a self-extracting archive. When you execute the file, it’ll ask you for a destination for the files. Enter a path that has no spaces in it. We recommend something simple, like ` C:\RubyDevKit\` . Click Extract and wait until the process is finished.
 4. Open your favorite command line tool and do:
  - `cd C:\RubyDevKit`
  - `ruby dk.rb init`
  - `ruby dk.rb install`
  - `gem install bundler`
  - `gem install jekyll` (Jekyll itself comes in the form of a Ruby Gem, which is an easy-to-install software package. To install Jekyll and all its default dependencies, launch your favorite command line tool and enter the following command: `gem install jekyll`)
 5. Install a Syntax Highlighter
  - `gem install rouge`
  - Then, in your _config.yml, set Rouge as your syntax highlighter:
  - `highlighter: rouge`
 6. If you want to use Pygments, which is a default Jekyll dependency, for syntax highlighting on Windows, you need to install Python, pip and finally the Python base of pygments.rb. When you get to the screen below, make sure to click on the box next to Add python.exe to Path and select “Entire feature will be installed on local hard drive.”
  - [Python](https://www.python.org/downloads/)
  - Install [pip](https://bootstrap.pypa.io/get-pip.py). Pip is a tool for installing and managing Python packages, similar to Ruby Gems. You’ll need it to install Pygments, the Python package that pygments.rb uses to highlight your code. Next, open your favorite command line tool and navigate to the location of get-pip.py on your computer (e.g., C:\pip\ or whatever folder you saved it into). 
 7. Then, run the following command to automatically download and install all required components. 
  - `cd C:\pip`
  - `python get-pip.py`
  - `python -m pip install Pygments`
 8. If it’s not set already, add the following to your _config.yml to set Pygments as your syntax highlighter.
  - `highlighter: pygments`


### Installing buildroot on macOS

Ruby 2.3 or newer is required to use Jekyll, but macOS 10.12 only includes Ruby 2.2. For macOS 10.12 and earlier the custom `rbenv` install described below is required. Even when the OS comes with Ruby 2.3, we still find it easier to use `rbenv` and `ruby-build` to make a self-managed Ruby install.

To install [rbenv](//github.com/rbenv/rbenv) and [ruby-build](//github.com/rbenv/ruby-build#readme) we recommend using one of the popular package managers, [Homebrew](//brew.sh) or [MacPorts](//www.macports.org). (You can also download and install these tools manually.)

**Important:** Don't install Ruby 2.3 itself using Homebrew/MacPorts/etc., as this leads down a twisty rabbit hole. Either trust the built-in Ruby 2.3 or newer installation or use `rbenv` to do everything. Note that `rbenv` is incompatible with `rvm`, so if you ever installed `rvm` before you'll need to remove it before proceeding.

Once you have `rbenv` and `ruby-build` installed, follow the instructions on the [rbenv](//github.com/rbenv/rbenv) project page to:

- install a local version of Ruby (2.3 or newer),
- modify your `.bash_profile` with code to set your Ruby environment, and
- create a local `shims` folder with `$PATH` pointing to your Ruby.

It sounds ugly, but hopefully the instructions on the [rbenv](//github.com/rbenv/rbenv) project page are clear enough to get you that far. You'll be using `rbenv` from now on to install and manage local Ruby environments.

With your Ruby environment set up and ready to go, you can now install the `bundler` Ruby gem with:
- `gem install bundler`

## Jekyll Primer

Under Jekyll we use YAML, Markdown, Liquid, and HTML to fill out the site content and layout. A `_config.yml` file defines the site structure using "collections" that correspond to site sub-folders. The site is "compiled" to produce a static HTML and Javascript file structure. The most important folders are:

- `_layouts` contains the general layouts (aka page templates).
- `_includes` has partial layouts included by others.
- `_meta` is where we keep top-level page descriptions.
- Site sub-pages: `_basics`, `_configuration`, `_development`, `_features`, `_gcode`, `_hardware`


### Auto-regeneration - site
Jekyll has a built-in auto-regeneration feature that watches your source folder for changes and then re-builds your site. The `jekyll serve` command has this enabled by default and you can use run `jekyll build --watch` to manually enable it there.
1. Install the wdm Gems. On Windows, you need to install one extra tool, or rather Gem, to enable this functionality. Simply run the following command from the command line.
 - `gem install wdm`
2. May still not work
 - If you try to run jekyll `build --watch` or `jekyll serve` and the output directory already exists, Jekyll sometimes fails to build the site. If you encounter this problem, you can work around it by adding `--force_polling` to the end of your Jekyll command. See the discussion in [twbs/bootstrap#14746](https://github.com/twbs/bootstrap/pull/14746) and [jekyll/jekyll#2926](https://github.com/jekyll/jekyll/issues/2926) for more information.

    Jekyll’s auto-regeneration feature sometimes does not work at all. [jekyll/jekyll#2529](https://github.com/jekyll/jekyll/issues/2529) suggests it fails on 32-bit systems and there is no known workaround. As of Jekyll v2.4.0, if your system is affected by this problem, you need to manually disable the auto-regeneration feature when you want to serve a site using Jekyll by running `jekyll serve --no-watch`.

### Run Jekyll without errors
- No BOM allowed. If there are `BOM` header characters in your UTF-8-encoded files, Jekyll will break. Make sure there are none.
- Set your encoding to UTF-8. Depending on the version of Ruby and/or Jekyll you’re using, your site’s content, and maybe other factors, you may need to make sure Jekyll will read your site’s source as UTF-8. Specify the encoding in your `_config.yml`: 
  `encoding: utf-8`
- 


### Previewing content

Now that you have Ruby installed, you'll be able to use Jekyll to preview your changes exactly as they will appear on the final site. Just open a terminal/cmd window, use `chdir` or `cd` to change the working path to your local copy of the repository, and execute the following commands:

```
bundle config set path 'vendor/bundle'
bundle install
bundle exec jekyll serve --watch --incremental
```

You'll only need to execute the `bundle install` command once to install all the required Ruby gems, including Jekyll itself. If you get errors at this stage, you may need to update your Ruby installation, fix your Ruby environment, or resolve dependencies between the Ruby gems.

With the `serve` option, Jekyll watches the local files and on every save triggers an automatic build of the site. It also runs a mini-webserver at [http://localhost:4000/](//localhost:4000/) so the documentation can be previewed in the browser right on [your own computer](//localhost:4000/).

## Publishing changes

We now use GitHub Actions to publish to the `gh-pages` branch whenever the `master` branch is updated, so no extra steps are needed to publish the site.

## License

Marlin is published under the [GPL license](/LICENSE) because we believe in open development. The GPL comes with both rights and obligations. Whether you use Marlin firmware as the driver for your open or closed-source product, you must keep Marlin open, and you must provide your compatible Marlin source code to end users upon request. The most straightforward way to comply with the Marlin license is to make a fork of Marlin on Github, perform your modifications, and direct users to your modified fork.

[![Analytics](https://ga-beacon.appspot.com/G-8QHR00NFEV/NextFil-Documentation/readme)](https://github.com/javicarrera/NextFil-Documentation)