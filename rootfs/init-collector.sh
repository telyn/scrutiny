# Should be kept in sync with services.d/jobber/run

echo "populating jobber config"
confd -onetime -backend file -file /scrutiny/config/collector.yaml

echo "starting jobber"
mkdir -p /var/jobber/0
/usr/lib/x86_64-linux-gnu/jobberrunner -u /var/jobber/0/cmd.sock /scrutiny/jobber/jobber.yaml
