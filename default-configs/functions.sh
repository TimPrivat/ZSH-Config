### opens a editor to manage secrets
# secrets are not tracked by git
# secrets are defined in name=value format and can be 
# read from the environment
###
secrets(){
    vim "${secret_file}"
    source "${secret_file}"
}