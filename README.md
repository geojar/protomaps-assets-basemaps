# Protomaps Assets Basemaps

This repository is part of the **GeoJar Protomaps Stack** and is used to clone and manage assets from the **protomaps/basemaps-assets** repository, which are utilized for serving static map tiles and other assets on a website.

A full setup guide is available in the GitHub repository [geojar/protomaps-stack](https://github.com/geojar/protomaps-stack).

## Folder Structure

- **`public/`**: The final built will be placed here after running the build process.


## Setup Instructions

### 1. Clone the Repository
Clone the repository to a local machine:

```bash
git clone https://github.com/geojar/protomaps-assets-basemaps.git
cd protomaps-assets-basemaps
```

### 2. Build the Assets
After cloning the repository, run the following command to download the assets:

```bash
bash run_build.sh
```

This will:

- Clone the **protomaps/basemaps-assets** repository.
- Clean up unnecessary files (like `.git`, `.github`, etc.).
- Replace the contents in the `public/` directory on the host with the latest assets.

### 3. Deploy the Assets

Expose or upload the contents of the `public/` folder to the internet.  
For example, use **Cloudflare Pages** to host the directory as a static site.

## Cloudflare Pages Deployment

After the build process is completed, the `public/` directory is generated with all the necessary assets. **GeoJar** deploys this directory using **Cloudflare Pages**, which serves the built assets as a static website. Cloudflare Pages handles caching, routing, and other optimizations to ensure the website performs efficiently.

---

### 🤖 AI-Assisted Content

Some parts of this project, especially the README and other documentation, were created or refined with the help of AI tools (such as ChatGPT). These tools were used to improve clarity, structure, and consistency in presenting the information. All generated content was reviewed and edited as needed to ensure accuracy and alignment with the project’s goals.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.