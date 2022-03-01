
az login --service-principal -u ${ARM_CLIENT_ID} -p ${ARM_CLIENT_SECRET} --tenant ${ARM_TENANT_ID}

go test -v $PWD/verifyBackend_test.go

go test -v $PWD/storage_test.go
