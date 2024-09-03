# Custom Caddy Docker Image

This repository provides a custom Docker image for Caddy with additional support for specific features.

## Features

- **Custom Caddy Image with:**
  - Cloudflare DNS support
  - WebDAV support

## How to Use the Existing GitHub Workflow for Building the Docker Image

The repository includes a pre-configured GitHub Actions workflow that automatically builds the Docker image and creates tags for official Caddy versions. Follow these steps to utilize it:

### 1. Create and Assign Tags

To trigger the workflow and build the Docker image for a specific version of Caddy:

1. **Create a Tag**: Use the following command to create a new tag corresponding to the desired Caddy version (e.g., `2.8.4`):
   ```bash
   git tag 2.8.4
   git push origin v2.8.4
   ```

2 **Automatic Workflow Trigger***: Pushing a tag in the format v* will automatically trigger the GitHub Actions workflow defined in .github/workflows/docker-build.yml. The workflow will:
   - Build the Docker image using the specified Caddy version.
   - Push the image to the GitHub Container Registry.
