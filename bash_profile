export BASH_CONF="bash_profile"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:$PATH"

##
# Your previous /Users/idff/.bash_profile file was backed up as /Users/idff/.bash_profile.macports-saved_2015-04-08_at_20:49:14
##

# MacPorts Installer addition on 2015-04-08_at_20:49:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/Users/idff/.composer/vendor/bin:$PATH"
# export PATH="/usr/local/bin/composer:$PATH"
export PATH="/Users/idff/spark-installer:$PATH"

# export USE_THIS_PHP=/usr/local/php5/bin
# export PATH="$USE_THIS_PHP:$PATH"
# export PATH="~/.composer/vendor/bin:$PATH"

function homestead() {
    cd ~/Homestead
    vagrant $*
} 

alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_aliases,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#for DOTFILE in `find /Users/idff/dotfiles/git`
#do
#	[ -f "$DOTFILE" ] && source "DOTFILE"
#done

