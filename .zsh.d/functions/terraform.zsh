function tfdk() {
  for state in $(terraform state list | grep -v 'servers\|digitalocean\|local_file'); do
    terraform state rm $state;
  done;
  terraform destroy -auto-approve
}
