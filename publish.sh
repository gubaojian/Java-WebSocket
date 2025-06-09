export GPG_TTY=$(tty)
mvn clean package -P gpg -DskipTests
## https://central.sonatype.com/publishing/deployments
mvn deploy -DskipTests -P gpg -Dgpg.batch=true
