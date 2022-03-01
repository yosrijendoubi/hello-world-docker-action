FROM golang:1.16
LABEL maintainer="AustinCloudGuru"

ARG tf_version=1.0.0
ARG ARM_CLIENT_ID
ARG ARM_CLIENT_SECRET
ARG ARM_SUBSCRIPTION_ID
ARG ARM_TENANT_ID
ARG ARM_ACCESS_KEY

ENV ARM_CLIENT_ID=$ARM_CLIENT_ID
ENV ARM_CLIENT_SECRET=$ARM_CLIENT_SECRET
ENV ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID
ENV ARM_TENANT_ID=$ARM_TENANT_ID
ENV ARM_ACCESS_KEY=$ARM_ACCESS_KEY

RUN apt-get update && apt-get install -y gnupg software-properties-common curl \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update \
    && apt-get install terraform=${tf_version} 

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash 

CMD ./testgo.sh

WORKDIR $GOPATH/src/app/test/