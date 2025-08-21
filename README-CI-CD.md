# CI/CD & Deployment Files (Generated)

This repo contains a static fitness website in `fitness-website-template/` and the following CI/CD resources:

- `Jenkinsfile`: Declarative Jenkins pipeline to zip the site, upload to S3, and trigger AWS CodeDeploy.
- `.github/workflows/ci-cd.yml`: GitHub Actions workflow to do the same (requires repo secrets).
- `Dockerfile`: Builds an Nginx image serving the static site.
- `docker-compose.yml`: Runs the container locally on http://localhost:8080.
- `buildspec.yml`: AWS CodeBuild spec to package the site as a ZIP artifact.
- `appspec.yml`: AWS CodeDeploy spec to deploy to `/var/www/html` on EC2.
- `scripts/reload-web.sh`: Reloads nginx/httpd after deployment.
- `pom.xml`: Maven configuration to package the site into a ZIP via `mvn package`.

> Ensure CodeDeploy **Application** and **Deployment Group** already exist and target your EC2 instances with the CodeDeploy agent installed.
