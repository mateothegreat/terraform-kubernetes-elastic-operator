resource "null_resource" "installer" {

    provisioner "local-exec" {

        command = "kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" create namespace elastic-operator && kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\"  apply -f https://download.elastic.co/downloads/eck/${ var.operator_version }/all-in-one.yaml"

    }

    provisioner "local-exec" {

        command = "kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/0/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/1/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/2/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/3/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/4/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/5/sideEffects\", \"value\": \"NoneOnDryRun\"}]'; kubectl --insecure-skip-tls-verify=true --server=\"${ var.host }\" --token=\"${ var.token }\" patch ValidatingWebhookConfiguration/elastic-webhook.k8s.elastic.co --type=json -p='[{\"op\": \"replace\", \"path\": \"/webhooks/6/sideEffects\", \"value\": \"NoneOnDryRun\"}]'"

    }

}
