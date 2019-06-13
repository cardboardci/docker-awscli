FROM alpine:3.8
RUN apk --no-cache add python==2.7.15-r1 py-pip==10.0.1-r0 groff==1.22.3-r2 less==530-r0 mailcap==2.1.48-r0
RUN pip install --upgrade awscli==1.16.88 python-magic==0.4.15
RUN apk --purge del py-pip && rm -rf /var/cache/apk/*

##
## Image Metadata
##
ARG build_date
ARG version
ARG vcs_ref
LABEL maintainer = "CardboardCI" \
    \
    org.label-schema.schema-version = "1.0" \
    \
    org.label-schema.name = "awscli" \
    org.label-schema.version = "${version}" \
    org.label-schema.build-date = "${build_date}" \
    org.label-schema.release= = "CardboardCI version:${version} build-date:${build_date}" \
    org.label-schema.vendor = "cardboardci" \
    org.label-schema.architecture = "amd64" \
    \
    org.label-schema.summary = "AWS CLI" \
    org.label-schema.description = "The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services" \
    \
    org.label-schema.url = "https://gitlab.com/cardboardci/images/awscli" \
    org.label-schema.changelog-url = "https://gitlab.com/cardboardci/images/awscli/releases" \
    org.label-schema.authoritative-source-url = "https://cloud.docker.com/u/cardboardci/repository/docker/cardboardci/awscli" \
    org.label-schema.distribution-scope = "public" \
    org.label-schema.vcs-type = "git" \
    org.label-schema.vcs-url = "https://gitlab.com/cardboardci/images/awscli" \
    org.label-schema.vcs-ref = "${vcs_ref}" \