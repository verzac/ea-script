set -e;
echo Setting up WordPress stack...;

chmod 744 ./setup-wpstack/run.sh;
./setup-wpstack/run.sh;