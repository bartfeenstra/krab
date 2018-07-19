#!/bin/awk

{
    line = $0;
    for (env_var in ENVIRON) {
        sub("{{ "env_var" }}", ENVIRON[env_var], line);
    }
    print line;
}
