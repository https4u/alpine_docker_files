TAG?=mingjunyang/zh_cn_alpine

zh_cn_alpine:
	@docker build -t "$(TAG)" -f ./shanghai.zh_CN.Dockerfile .
zh_cn_alpine_push:
	@docker push "$(TAG)" 
