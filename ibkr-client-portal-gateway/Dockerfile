FROM cgr.dev/chainguard/wolfi-base:latest AS builder
WORKDIR /work
RUN apk add --no-cache unzip wget
RUN wget https://download2.interactivebrokers.com/portal/clientportal.gw.zip \
 && unzip clientportal.gw.zip -d . \
 && rm clientportal.gw.zip

FROM cgr.dev/chainguard/jre AS runner
WORKDIR /svc
COPY --from=builder /work .
COPY index.html root/webapps/demo/index.html
COPY doc.json root/webapps/demo/doc.json
COPY conf.yaml root/conf.yaml

ENTRYPOINT ["java", "-server", "-Dvertx.disableDnsResolver=true", "-Djava.net.preferIPv4Stack=true", "-Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory", "-Dnologback.statusListenerClass=ch.qos.logback.core.status.OnConsoleStatusListener", "-Dnolog4j.debug=true", "-Dnolog4j2.debug=true", "-cp", "root:dist/ibgroup.web.core.iblink.router.clientportal.gw.jar:build/lib/runtime/*", "ibgroup.web.core.clientportal.gw.GatewayStart", "--conf", "../root/conf.yaml"]