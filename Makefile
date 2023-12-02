MANIFESTS = \
	deploy.yaml \
	kustomization.yaml \
	namespace.yaml \
	route.yaml \
	service.yaml

generated.yaml: $(MANIFESTS)
	kustomize build > $@ || { rm -f $@; exit 1; }
