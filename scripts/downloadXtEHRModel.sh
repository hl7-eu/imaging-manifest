rm -Rf XtEHR-model
mkdir -p XtEHR-model
wget https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/package.tgz
tar -xzf package.tgz -C XtEHR-model
rm package.tgz
