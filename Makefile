db:
	docker rm -f pgpubsub_test || true
	docker run -itd -p 5432:5432 -e POSTGRES_DB=pgpubsub_test -e POSTGRES_PASSWORD=postgres --name pgpubsub_test postgres

cleanup:
	docker rm -f pgpubsub_test || true

test-run:
	npm i
	npm test

test: db test-run cleanup

