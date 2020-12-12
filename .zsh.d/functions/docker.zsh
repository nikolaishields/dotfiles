function sd() {
    cd /root/devcontainer;
    git pull;
    if [ "$(tfp -detailed-exitcode >/dev/null; echo $?)" = "0" ]; then
        docker-compose build;
        docker-compose run dev;
    else
        echo "please run terraform"
        tfp
    fi;
}
