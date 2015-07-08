FROM jboss/wildfly:8.2.0.Final

USER root
ADD http://repo.maven.apache.org/maven2/io/dropwizard/metrics/metrics-core/3.1.2/metrics-core-3.1.2.jar /opt/jboss/wildfly/modules/system/layers/base/io/dropwizard/metrics/core/main/
COPY modules /opt/jboss/wildfly/modules/system/layers/base/
RUN chown -R jboss:jboss /opt/jboss/wildfly/modules/system/layers/base/io/dropwizard/metrics
USER jboss


RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent

EXPOSE 9990

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
