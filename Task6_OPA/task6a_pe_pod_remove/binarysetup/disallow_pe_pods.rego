package disallow_pe_pods

deny[msg] {
    temp := true
    output := input.spec.containers[_]
    temp == output.securityContext.privileged
    msg = sprintf("Privilege escalation disallowed for container %v",[output.name])
}