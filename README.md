# WildFly Docker image with metrics module and a example war

This is an example Dockerfile with [WildFly application server](http://wildfly.org/) and a [metrics](http://dropwizard.github.io/metrics/3.1.0/) library as a module. It also has a war as an example of use.

It is enabled the admin port, so to use the admin console use the admin user and the Admin#70365 password

## Usage

To boot

    docker run -it -p 8080:8080 -p 9990:9990 --name yourName inigoserrano/metrics

To show the example application go to [http://192.168.99.100:8080/metrics/Prueba](http://192.168.99.100:8080/metrics/Prueba). The metrics servlets are in [http://192.168.99.100:8080/metrics/metrics/metrics](http://192.168.99.100:8080/metrics/metrics/metrics)
