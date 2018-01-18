function mvnr --description "mvnr <modulename>"
  echo "Maven rapid builds"
  if test (count $argv) -eq 1
    set module $argv[1]
    echo "Building from module" $module
    mvn clean install -DskipTests -Dcheckstyle.skip -Dfindbugs.skip -Dcpd.skip -Dpmd.skip -rf :$module
  else
    mvn clean install -DskipTests -Dcheckstyle.skip -Dfindbugs.skip -Dcpd.skip -Dpmd.skip
  end
end

