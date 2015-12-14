# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
shopt -s expand_aliases
# 随项目改变模块名
function change() {
    case $1 in
        yii)
            cd /home/work/odp/webroot/$2
            alias ${2}="cd /home/work/odp/webroot/${2}"
            source ~/.bashrc $2;;
        odp)
            cd /home/work/odp/app/$2
            alias ${2}="cd /home/work/odp/app/${2}"
            source ~/.bashrc $2;;
        *)
            cd /home/work/odp/webroot/$1
            alias ${1}="cd /home/work/odp/webroot/${1}"
            source ~/.bashrc $1;;
    esac
}
export change
alias ch="change"
pn=$1

alias odp="cd /home/work/odp"
alias odp-php="/home/work/odp/php/bin/php"
alias odp-webroot="cd /home/work/odp/webroot"
alias odp-static="cd /home/work/odp/webroot/static"
alias odp-log="cd /home/work/odp/log"
alias odp-conf="cd /home/work/odp/conf"
alias odp-${pn}="cd /home/work/odp/app/${pn}"
alias odp-action="cd /home/work/odp/app/"$pn"/actions"
alias odp-page="cd /home/work/odp/app/"$pn"/models/service/page"
alias odp-data="cd /home/work/odp/app/"$pn"/models/service/data"
alias odp-dao="cd /home/work/odp/app/"$pn"/models/dao"
alias odp-lib="cd /home/work/odp/app/"$pn"/library/"$pn
alias odp-conf-app="cd /home/work/odp/conf/app/"$pn
alias odp-script="cd /home/work/odp/app/$pn/script"
alias phpfmt='/home/work/product/output/php/bin/phpfmt -p=$PWD'
alias app-cg="cd /home/work/odp/php/phplib/app-cg"
alias app-cg2="cd /home/work/product/app-cg2"
alias ogen-dev="cd /home/work/product/ogen-install/"
alias restart-php="/home/work/odp/php/sbin/php-fpm restart"
alias restart-nginx="/home/work/nginx_odp/loadnginx.sh restart"

#yii
alias gii-ant="./yii giiant-batch --modelGenerateQuery=0 --interactive=0 --overwrite=1"
alias yii-${pn}="cd /home/work/odp/webroot/${pn}"
alias yii-test="cd /home/work/odp/webroot/${pn}/tests"
alias yii-vendor="cd /home/work/odp/webroot/${pn}/vendor/"
alias yii-fe="cd /home/work/odp/webroot/${pn}/frontend/"
alias yii-fe-controller="cd /home/work/odp/webroot/${pn}/frontend/controllers/"
alias yii-fe-web="cd /home/work/odp/webroot/${pn}/frontend/web/"
alias yii-fe-view="cd /home/work/odp/webroot/${pn}/frontend/views/"
alias yii-fe-image="cd /home/work/odp/webroot/${pn}/frontend/web/images"
alias yii-fe-conf="cd /home/work/odp/webroot/${pn}/frontend/config"
alias yii-bk="cd /home/work/odp/webroot/${pn}/backend/"
alias yii-bk-controller="cd /home/work/odp/webroot/${pn}/backend/controllers/"
alias yii-bk-web="cd /home/work/odp/webroot/${pn}/backend/web/"
alias yii-bk-view="cd /home/work/odp/webroot/${pn}/backend/views/"
alias yii-bk-image="cd /home/work/odp/webroot/${pn}/backend/web/images"
alias yii-bk-conf="cd /home/work/odp/webroot/${pn}/backend/config"
alias yii-com="cd /home/work/odp/webroot/${pn}/common"
alias yii-com-controller="cd /home/work/odp/webroot/${pn}/common/controllers/"
alias yii-com-conf="cd /home/work/odp/webroot/${pn}/common/config"
alias yii-con="cd /home/work/odp/webroot/${pn}/console"
alias yii-con-controller="cd /home/work/odp/webroot/${pn}/console/controllers/"
alias yii-con-conf="cd /home/work/odp/webroot/${pn}/console/config"
alias yii-log="tail -f /home/work/odp/webroot/${pn}/frontend/runtime/logs/app.log"
alias yii-log-sql="tail -f /home/work/odp/webroot/${pn}/frontend/runtime/logs/sql.log"

#rasa/rac:
alias rac-lib="cd /home/work/codes/rac/frame/st/rp/lib"
alias rac-app="cd /home/work/codes/rac/app/st/rp/rac/app"
alias rac-public="cd /home/work/codes/rac/app/st/rp/pvideo-rec/online/public/output/include"
alias rac-frame="cd /home/work/codes/rac/frame/st/rp/rac/frame/lib"
alias rac-long="cd ~/search/rac-long"
alias rac-short="cd ~/search/rac-short"
alias rac-tag="cd ~/search/rac-tag"
alias rasa-app="cd /home/work/codes/rasa/app/st/rp/rasa/app"
alias rasa-frame="cd /home/work/codes/rasa/frame/st/rp/rasa/frame/lib"

#tools
alias ll='ls -l'
alias la='ls -a'
alias tf='tail -f'
alias ...="cd ../.."
alias ....="cd ../../.."
alias enca="enca -L zh_CN"
alias tree="tree --charset zh_CN.UTF-8"

#git
alias git-add="git add -A"
alias git-ci="git commit -am 'commit anyhow!'"
alias git-co="git checkout"
alias git-push="git push origin master"
alias git-fetch="git fetch origin master"
alias git-pull="git pull origin master"
alias git-del="git rm --cached "
alias git-reset="git reset --hard"
alias git-show="git show --stat"
alias git-diff="git diff origin/master master --stat"

#fisp
alias fe="cd /home/work/fisp/tour-manage/"
alias fis="cd /home/work/fisp"
alias fis-r="fisp release "
alias fis-s="fisp server "

#test:
alias php-test="cd /home/work/quick_test/php"
alias py-test="cd /home/work/quick_test/python"
alias py-install="cd ~/tools_install/PyInstaller-2.1/"

#lianjia
# alias lianjia-fe="cd /home/work/product/se-fe/se-fe.git"
# alias lianjia-build="cd /home/work/product/febuild/febuild.git"

#redis
alias redis="cd /home/work/tools/redis/redis-3.0.4/src"
alias redis-test="cd /home/work/tools/redis/redis-php-ext/tests"
alias redis-cluster="cd /home/work/tools/redis/redis-3.0.4/utils/create-cluster"

export MANPATH="/usr/share/man/zh_CN/:/usr/share/man/"
export LESSCHARSET="utf-8"
export LC_ALL="zh_CN.UTF-8"
export VIM_USER="liyue06"
export EDITOR="/home/work/.jumbo/bin/vim"
export PATH=/home/work/.jumbo/bin:$PATH
[[ -s "/home/work/.jumbo/etc/bashrc" ]] && source "/home/work/.jumbo/etc/bashrc"

export TERM=xterm-256color
# set t_Co=256
