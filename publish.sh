export GPG_TTY=$(tty)
mvn clean package -P gpg -DskipTests   
mvn deploy -DskipTests -P gpg -Dgpg.batch=true
