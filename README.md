# 🚀 Bulbul Das — Professional Cloud & DevOps Portfolio

An industry-grade, high-performance developer portfolio built for **Bulbul Das** (Cloud & DevOps Engineer / MCA candidate).

Built with a modern dark theme, terminal aesthetic, glassmorphic UI, responsive layouts, and interactive developer CLI.

---

## 📸 Features & Architecture

- **Visual Design:** Sleek dark space theme (`#06080e`, `#0b0f19`) with vibrant cyan (`#00d4ff`) and royal blue accents.
- **Hero Section:** Dynamic typing animation cycling through key engineering titles, real-time "Available for Hire" status badge, and live infrastructure simulation preview.
- **Interactive Terminal:** Fully functional simulated browser terminal with commands (`whoami`, `skills`, `projects`, `cert`, `contact`, `clear`).
- **Technical Skills Matrix:** Categorized into Cloud & AWS, DevOps & CI/CD, IaC & Containers, Backend, Linux/Systems, and AI & Agentic systems.
- **Project Showcase:** Highlights for all 4 major projects with architecture bullets, tech pills, and direct GitHub links:
  - **SOVEREIGN-AI:** Secure local-first agentic AI workbench with isolated Docker execution.
  - **Task Manager CI/CD:** Full-stack Spring Boot & React app automated to AWS EC2.
  - **Serverless AI Resume Analyzer:** Event-driven AWS Lambda, S3, DynamoDB with Terraform.
  - **Portfolio Platform:** Containerized Nginx deployment on AWS EC2.
- **Education & Certifications:** Verified AWS Cloud Solutions Architect credential card and MCA/BCA timeline.
- **Contact:** One-click email client dispatch, direct phone line, and social links.
- **Zero Heavy Dependencies:** Lightweight pure HTML5, CSS3, and vanilla JavaScript with Font Awesome and Google Fonts CDN.

---

## 📁 Repository Structure

```text
portfolio/
├── index.html                  # Main single-page portfolio application
├── Dockerfile                  # Lightweight Alpine Nginx container setup
├── nginx.conf                  # Nginx configuration with gzip & security headers
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions workflow for Docker Hub & AWS EC2
└── README.md                   # Documentation and deployment guides
```

---

## 🛠️ Local Development & Preview

### Option 1: Open Directly in Browser
Double click `index.html` or run:
```bash
open /Users/bulbuldas/portfolio/index.html
```

### Option 2: Run with Python Built-in Server
```bash
cd /Users/bulbuldas/portfolio
python3 -m http.server 8000
```
Then visit: `http://localhost:8000`

---

## 🚢 Deployment Options

### Method A: Deploy on GitHub Pages (Free & Fastest)
1. Initialize a Git repository if not already done:
   ```bash
   cd /Users/bulbuldas/portfolio
   git init
   git add .
   git commit -m "feat: initial commit of industry-grade portfolio"
   ```
2. Create a GitHub repository named `portfolio` (or `<your-username>.github.io`).
3. Add the remote and push:
   ```bash
   git branch -M main
   git remote add origin https://github.com/dasBulbul03/portfolio.git
   git push -u origin main
   ```
4. In GitHub: Go to **Settings** > **Pages** > Select branch `main` and root `/` > Save.
5. Your website will be live at `https://dasBulbul03.github.io/portfolio`!

---

### Method B: Deploy using Docker & AWS EC2 (Matches Your Profile Project!)

1. **Build the Docker Image:**
   ```bash
   docker build -t dasbulbul03/portfolio:latest .
   ```

2. **Test Container Locally:**
   ```bash
   docker run -d -p 8080:80 --name bulbul-portfolio dasbulbul03/portfolio:latest
   ```
   Open `http://localhost:8080` in your browser.

3. **Push to Docker Hub:**
   ```bash
   docker push dasbulbul03/portfolio:latest
   ```

4. **Deploy on AWS EC2:**
   SSH into your EC2 instance and run:
   ```bash
   docker pull dasbulbul03/portfolio:latest
   docker run -d -p 80:80 --name portfolio --restart unless-stopped dasbulbul03/portfolio:latest
   ```

---

### Method C: Deploy via AWS S3 + CloudFront (Serverless Static Hosting)

1. Create an S3 Bucket: `aws s3 mb s3://bulbul-portfolio-bucket`
2. Enable Static Website Hosting on the bucket.
3. Sync files:
   ```bash
   aws s3 sync . s3://bulbul-portfolio-bucket/ --exclude ".git/*" --exclude "Dockerfile"
   ```
4. Attach CloudFront distribution with HTTPS for SSL and custom domain mapping.

---

## 👤 Author

**Bulbul Das**
- **Role:** Cloud & DevOps Engineer
- **Email:** [dasbulbul215@gmail.com](mailto:dasbulbul215@gmail.com)
- **Phone:** +91 7076492668
- **GitHub:** [dasBulbul03](https://github.com/dasBulbul03)
