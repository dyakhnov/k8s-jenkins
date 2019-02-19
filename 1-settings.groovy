import jenkins.model.Jenkins
import hudson.security.csrf.DefaultCrumbIssuer

def j = Jenkins.instance;
j.setCrumbIssuer(null); // I've also tried setting a new crumb issuer here as well.
j.save();

System.setProperty("hudson.security.csrf.CrumbFilter", "false");
System.setProperty("hudson.security.csrf", "false");
System.setProperty("hudson.security.csrf.GlobalCrumbIssuerConfiguration", "false");
