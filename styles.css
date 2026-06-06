:root {
    --bg-dark: #090d16;
    --bg-card: rgba(17, 24, 39, 0.7);
    --border-color: rgba(255, 255, 255, 0.08);
    --primary: #6366f1;
    --primary-glow: rgba(99, 102, 241, 0.25);
    --accent: #06b6d4;
    --text-primary: #f8fafc;
    --text-secondary: #94a3b8;
    --success: #10b981;
    --font-heading: 'Outfit', sans-serif;
    --font-body: 'Plus Jakarta Sans', sans-serif;
    --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    background-color: var(--bg-dark);
    color: var(--text-primary);
    font-family: var(--font-body);
    line-height: 1.6;
    overflow-x: hidden;
}

/* Nav */
.navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    padding: 1.25rem 2rem;
    transition: var(--transition);
    border-bottom: 1px solid transparent;
}

.navbar.scrolled {
    background: rgba(9, 13, 22, 0.85);
    backdrop-filter: blur(16px);
    -webkit-backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--border-color);
    padding: 0.95rem 2rem;
}

.nav-container {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.nav-logo {
    color: var(--text-primary);
    text-decoration: none;
    font-family: var(--font-heading);
    font-weight: 700;
    font-size: 1.4rem;
    letter-spacing: 0.05em;
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.logo-circle {
    background: linear-gradient(135deg, var(--primary), var(--accent));
    width: 34px;
    height: 34px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 0.95rem;
    box-shadow: 0 4px 10px var(--primary-glow);
}

.nav-menu {
    display: flex;
    list-style: none;
    gap: 2rem;
}

.nav-link {
    color: var(--text-secondary);
    text-decoration: none;
    font-size: 0.95rem;
    font-weight: 550;
    transition: var(--transition);
}

.nav-link:hover,
.nav-link.active {
    color: var(--text-primary);
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.4);
}

/* Hero Section */
.hero-section {
    position: relative;
    padding: 12rem 2rem 8rem 2rem;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    min-height: 90vh;
}

.hero-bg-glow {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 600px;
    height: 600px;
    background: radial-gradient(circle, rgba(99, 102, 241, 0.2) 0%, rgba(6, 182, 212, 0) 60%);
    filter: blur(80px);
    z-index: -1;
    pointer-events: none;
}

.hero-content {
    max-width: 800px;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1.5rem;
}

.badge {
    padding: 0.4rem 1rem;
    border-radius: 50px;
    background: rgba(99, 102, 241, 0.1);
    border: 1px solid rgba(99, 102, 241, 0.3);
    color: #a5b4fc;
    font-size: 0.75rem;
    font-weight: 700;
    letter-spacing: 0.1em;
}

.hero-content h1 {
    font-family: var(--font-heading);
    font-size: 3.5rem;
    font-weight: 800;
    line-height: 1.15;
    letter-spacing: -0.02em;
}

.hero-content h1 span {
    background: linear-gradient(to right, #818cf8, #22d3ee);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.hero-content p {
    color: var(--text-secondary);
    font-size: 1.15rem;
    line-height: 1.6;
    max-width: 650px;
}

.hero-buttons {
    display: flex;
    gap: 1rem;
    margin-top: 1rem;
}

/* Button Styling */
.btn {
    padding: 0.85rem 1.75rem;
    border-radius: 12px;
    font-family: var(--font-heading);
    font-weight: 600;
    font-size: 0.95rem;
    text-decoration: none;
    cursor: pointer;
    transition: var(--transition);
    border: none;
    display: inline-flex;
    align-items: center;
    justify-content: center;
}

.btn-primary {
    background: linear-gradient(135deg, var(--primary), #4338ca);
    color: var(--text-primary);
    box-shadow: 0 4px 14px var(--primary-glow);
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(99, 102, 241, 0.45);
}

.btn-secondary {
    background: rgba(255, 255, 255, 0.05);
    color: var(--text-primary);
    border: 1px solid var(--border-color);
}

.btn-secondary:hover {
    background: rgba(255, 255, 255, 0.1);
}

.btn-block {
    width: 100%;
}

/* Sections */
.section {
    padding: 6rem 2rem;
}

.section-container {
    max-width: 1200px;
    margin: 0 auto;
}

.section-badge {
    color: var(--primary);
    font-size: 0.8rem;
    font-weight: 700;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    display: block;
    margin-bottom: 0.5rem;
}

/* About Section */
.about-grid {
    display: grid;
    grid-template-columns: 1.2fr 1fr;
    gap: 4rem;
    align-items: center;
}

@media (max-width: 868px) {
    .about-grid {
        grid-template-columns: 1fr;
        gap: 3rem;
    }
}

.about-text h2 {
    font-family: var(--font-heading);
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 1.25rem;
    line-height: 1.2;
}

.about-text h2 span {
    background: linear-gradient(to right, #818cf8, #34d399);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.about-text p {
    color: var(--text-secondary);
    margin-bottom: 2rem;
}

.stats-row {
    display: flex;
    gap: 3rem;
}

.stat-number {
    display: block;
    font-family: var(--font-heading);
    font-size: 2.2rem;
    font-weight: 800;
    color: var(--text-primary);
}

.stat-label {
    font-size: 0.85rem;
    color: var(--text-secondary);
}

.about-visual {
    display: flex;
    justify-content: center;
}

.visual-card {
    background: var(--bg-card);
    backdrop-filter: blur(12px);
    border: 1px solid var(--border-color);
    padding: 3rem 2rem;
    border-radius: 24px;
    text-align: center;
    position: relative;
    max-width: 320px;
    overflow: hidden;
}

.card-glow {
    position: absolute;
    top: -20%;
    left: -20%;
    width: 150px;
    height: 150px;
    background: radial-gradient(circle, var(--primary-glow) 0%, transparent 70%);
}

.visual-icon {
    font-size: 3rem;
    margin-bottom: 1.5rem;
    background: linear-gradient(to bottom right, var(--primary), var(--accent));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.visual-card h3 {
    margin-bottom: 0.75rem;
    font-family: var(--font-heading);
}

.visual-card p {
    font-size: 0.85rem;
    color: var(--text-secondary);
}

/* Services */
.section-header {
    text-align: center;
    max-width: 600px;
    margin: 0 auto 3.5rem auto;
}

.section-header h2 {
    font-family: var(--font-heading);
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 1rem;
}

.section-header h2 span {
    background: linear-gradient(to right, #818cf8, #a7f3d0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.section-header p {
    color: var(--text-secondary);
}

.services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
}

.service-card {
    background: var(--bg-card);
    backdrop-filter: blur(10px);
    border: 1px solid var(--border-color);
    border-radius: 20px;
    padding: 2.5rem 2rem;
    transition: var(--transition);
}

.service-card:hover {
    transform: translateY(-5px);
    border-color: var(--primary);
    box-shadow: 0 10px 25px rgba(99, 102, 241, 0.15);
}

.service-icon {
    width: 50px;
    height: 50px;
    border-radius: 12px;
    background: rgba(99, 102, 241, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
    color: var(--primary);
    margin-bottom: 1.5rem;
}

.service-card h3 {
    margin-bottom: 0.75rem;
    font-family: var(--font-heading);
}

.service-card p {
    font-size: 0.9rem;
    color: var(--text-secondary);
}

/* Contact Section */
.contact-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
}

@media (max-width: 868px) {
    .contact-grid {
        grid-template-columns: 1fr;
        gap: 3rem;
    }
}

.contact-info h2 {
    font-family: var(--font-heading);
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 1.25rem;
}

.contact-info h2 span {
    background: linear-gradient(to right, #818cf8, #22d3ee);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.contact-info p {
    color: var(--text-secondary);
    margin-bottom: 2rem;
}

.info-list {
    display: flex;
    flex-direction: column;
    gap: 1.25rem;
}

.info-link {
    display: flex;
    align-items: center;
    gap: 1rem;
    color: var(--text-secondary);
    font-size: 0.95rem;
}

.info-link i {
    color: var(--primary);
    font-size: 1.15rem;
}

.contact-form-card {
    background: var(--bg-card);
    backdrop-filter: blur(12px);
    border: 1px solid var(--border-color);
    border-radius: 24px;
    padding: 2.5rem;
}

.form-group {
    margin-bottom: 1.25rem;
    display: flex;
    flex-direction: column;
    gap: 0.4rem;
}

label {
    font-size: 0.8rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.05em;
    color: var(--text-secondary);
}

input[type="text"],
input[type="email"],
textarea {
    width: 100%;
    padding: 0.85rem 1.25rem;
    background: rgba(10, 15, 30, 0.4);
    border: 1px solid var(--border-color);
    border-radius: 12px;
    color: var(--text-primary);
    font-family: inherit;
    font-size: 0.95rem;
    outline: none;
    transition: var(--transition);
}

input[type="text"]:focus,
input[type="email"]:focus,
textarea:focus {
    border-color: var(--primary);
    box-shadow: 0 0 0 3px var(--primary-glow);
}

/* Footer */
.footer {
    border-top: 1px solid var(--border-color);
    padding: 2.5rem 2rem;
}

.footer-container {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 1.5rem;
}

.footer p {
    color: var(--text-secondary);
    font-size: 0.9rem;
}

.footer-socials {
    display: flex;
    gap: 1.25rem;
}

.footer-socials a {
    color: var(--text-secondary);
    font-size: 1.15rem;
    transition: var(--transition);
}

.footer-socials a:hover {
    color: var(--text-primary);
}
