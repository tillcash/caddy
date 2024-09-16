# Custom Caddy Docker Image Builder

Easily build a custom Caddy Docker image with plugins by modifying the Caddy version in the GitHub Actions workflow.

## How to Use

1. **Update Caddy Version:**
   - Edit `.github/workflows/docker-image.yml`.
   - Change the `CADDY_VERSION` under `env` to your desired version.

2. **Trigger the Build:**
   - Commit the changes.
   - Go to the **Actions** tab and manually run the workflow, or wait for automatic triggers.

3. **Pull Your Custom Image:**
   - Use the image from GitHub Container Registry with the tags `latest` or the specific version.
