
deploy: ## sync S3
	sls deploy
	aws s3 sync data s3://datalake-lf-tags-151615857019
	aws glue start-crawler --name datalake-lf-tags

