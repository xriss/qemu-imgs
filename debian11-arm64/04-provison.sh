cd `dirname $0`

./box-up-wait

cat ../provision.sh | ./ssh " tee ./provision.sh ; chmod +x ./provision.sh ; ./provision.sh ; rm ./provision.sh "




