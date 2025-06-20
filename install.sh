export GPG_TTY=$(tty)
mvn clean package -P gpg -DskipTests
## https://central.sonatype.com/publishing/deployments
## password gubaojian
mvn install -DskipTests -P gpg -Dgpg.batch=true
