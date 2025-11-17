installed and experiencing terraform using this project
gone through core concepts like
1. providers
2. resources (meta-argument, -auto-approve, )
3. terraform state (current state vs desired state, terraform destroy -target={type.name}, tf state list, tf state show {type.name})
4. variables and output
5. state drift: autual infra is not equal to the terraform.tfstate file(can be fixed using tf plan/tf apply (reccommended approach) (used when state drift occured unintentionally and we need to recreate the infra as in the desired state) or using tf refresh (not recommended, only a last resort option)(used when the statee drift is intentional and want to modify the infra, which means this will only remodify the state file after comparing the state file and actual infrastructure, in other words this command don't even refer the configuration file.))
NB:terraform config file and terraform.tfstate file always should be matching to avoid future confusion, for that use tf plan/tf apply.

6. tf Satefile storing in backend, if working with K8s we can store this statefile in the kubernetes cluster as secert.

7. variables and outputs:
variable types:
1) input variables (variables.tf)
2) output variables (outputs.tf )
3) local variables (main.tf/locals.tf)


