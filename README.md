# 🏫 Great Minds School Hub

A comprehensive, full-stack school management system connecting administrators, teachers, students, and parents with role-based dashboards, real-time communication, and advanced analytics.

## 📋 Overview

**Great Minds School Hub** is a production-ready, scalable school management platform featuring:

- ✅ **Role-Based Access Control:** Super Owner, Admin, Session Heads, Teachers, Parents, Students
- ✅ **Multi-Section Support:** Nursery, Primary/Basic, Secondary with independent permission management
- ✅ **Attendance Tracking:** Real-time marking and comprehensive reporting
- ✅ **Gradebook & Assessments:** Assignment creation, grading, and transcript generation
- ✅ **Real-Time Communication:** In-app messaging and announcements
- ✅ **Advanced Analytics:** Performance dashboards and predictive insights
- ✅ **Secure File Storage:** AWS S3 integration with virus scanning
- ✅ **Mobile-First Design:** Fully responsive web app with PWA support (Phase 2)
- ✅ **Enterprise Compliance:** FERPA/GDPR compliant with audit logging

---

## 🚀 Quick Start

### Prerequisites

- **Node.js** 18+
- **npm** or **yarn**
- **PostgreSQL** 15+
- **Redis** (for caching and sessions)
- **Docker** & **Docker Compose** (optional)

### Local Development Setup

#### 1. Clone the Repository

```bash
git clone https://github.com/Ben-Soye/great-minds-school-hub.git
cd great-minds-school-hub
```

#### 2. Install Dependencies

```bash
# Backend
cd backend
npm install

# Frontend
cd ../frontend
npm install
```

#### 3. Environment Configuration

Copy `.env.example` to `.env` in both directories and configure:

```bash
# Backend .env
cp backend/.env.example backend/.env

# Frontend .env
cp frontend/.env.example frontend/.env
```

#### 4. Database Setup

```bash
cd backend

# Run migrations
npm run db:migrate

# Seed sample data
npm run db:seed
```

#### 5. Start Development Servers

```bash
# Terminal 1: Backend (runs on http://localhost:5000)
cd backend
npm run dev

# Terminal 2: Frontend (runs on http://localhost:3000)
cd frontend
npm run dev
```

Access the app at: **http://localhost:3000**

---

## 🐳 Docker Setup

```bash
# Start all services with Docker Compose
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

---

## 📁 Project Structure

```
great-minds-school-hub/
├── backend/                  # Node.js + Express API
│   ├── src/
│   │   ├── config/          # Configuration files
│   │   ├── middleware/      # Auth, RBAC, logging
│   │   ├── routes/          # API endpoints
│   │   ├── controllers/     # Request handlers
│   │   ├── services/        # Business logic
│   │   ├── models/          # Database schemas (Prisma)
│   │   ├── utils/           # Helper functions
│   │   ├── types/           # TypeScript types
│   │   └── app.ts           # Express app setup
│   ├── prisma/              # Prisma migrations & schema
│   ├── tests/               # Jest test suites
│   ├── .env.example
│   ├── package.json
│   ├── tsconfig.json
│   └── Dockerfile
│
├── frontend/                 # React + TypeScript + Tailwind
│   ├── src/
│   │   ├── components/      # Reusable React components
│   │   ├── pages/           # Page components
│   │   ├── hooks/           # Custom React hooks
│   │   ├── services/        # API client functions
│   │   ├── store/           # State management (Zustand)
│   │   ├── types/           # TypeScript types
│   │   ├── utils/           # Helper functions
│   │   ├── App.tsx          # Main app component
│   │   └── main.tsx         # Entry point
│   ├── public/              # Static assets
│   ├── .env.example
│   ├── package.json
│   ├── tsconfig.json
│   ├── vite.config.ts
│   ├── tailwind.config.js
│   ├── Dockerfile
│   └── nginx.conf
│
├── docker-compose.yml       # Multi-container setup
├── .github/
│   └── workflows/           # CI/CD pipelines
├── REFINED_PROMPT.md        # Full project specification
├── ROLES_AND_PERMISSIONS.md # Detailed role documentation
├── SESSION_HEADS_INTEGRATION.md # Session Head layer specification
├── ARCHITECTURE.md          # System design documentation
├── API_DOCUMENTATION.md     # API endpoint reference
├── DEPLOYMENT_GUIDE.md      # Deployment instructions
├── CONTRIBUTING.md          # Contribution guidelines
├── LICENSE                  # MIT License
└── README.md                # This file
```

---

## 🔐 User Roles & Access Levels

| Role | Level | Key Capabilities |
|------|-------|------------------|
| **Super Owner** | ⭐⭐⭐⭐⭐ | Complete system control, multi-school management, user provisioning |
| **Admin** | ⭐⭐⭐⭐ | School-level management, class/subject setup, reporting |
| **Session Head** | ⭐⭐⭐ | Section management (Nursery/Primary/Secondary) with configurable permissions |
| **Teacher** | ⭐⭐⭐ | Class management, attendance, grading, assignments |
| **Student** | ⭐⭐ | View grades, assignments, attendance; submit work |
| **Parent** | ⭐ | Monitor child's progress, communicate with teachers |

**See [ROLES_AND_PERMISSIONS.md](./ROLES_AND_PERMISSIONS.md) for detailed role specifications.**

---

## 🏗️ Technical Stack

### Backend
- **Runtime:** Node.js 18+
- **Framework:** Express.js with TypeScript
- **Database:** PostgreSQL 15+ with Prisma ORM
- **Authentication:** JWT (access + refresh tokens) with bcrypt hashing
- **Caching:** Redis for sessions and data caching
- **File Storage:** AWS S3 with presigned URLs
- **Email:** Nodemailer/SendGrid integration
- **Task Queue:** Bull for async jobs
- **Logging:** Winston (structured JSON logs)
- **Validation:** Zod for input validation
- **Testing:** Jest + Supertest

### Frontend
- **Framework:** React 18+ with TypeScript
- **Styling:** Tailwind CSS with Headless UI
- **State Management:** Zustand + Context API
- **Data Fetching:** TanStack Query (React Query)
- **Routing:** React Router v6+
- **Forms:** React Hook Form + Zod
- **Charts:** Recharts for analytics
- **HTTP Client:** Axios
- **Testing:** Vitest + React Testing Library
- **Build Tool:** Vite

### Infrastructure
- **Containerization:** Docker + Docker Compose
- **Orchestration:** Kubernetes-ready (EKS/GKE)
- **Cloud:** AWS, Azure, or Google Cloud
- **CI/CD:** GitHub Actions
- **Monitoring:** Datadog/New Relic for APM
- **CDN:** CloudFront/Cloudflare

---

## 📚 Key Features

### Phase 1 (MVP)
- [x] Authentication & RBAC
- [x] Role-based dashboards
- [x] User management (CRUD)
- [x] Class & subject management
- [x] Attendance marking & reporting
- [x] Grade entry & viewing
- [x] Announcements

### Phase 2
- [ ] Assignments & submissions
- [ ] In-app messaging
- [ ] Email notifications
- [ ] Advanced reporting (PDF/CSV)
- [ ] Attendance analytics

### Phase 3
- [ ] Predictive analytics
- [ ] PWA & offline capabilities
- [ ] Mobile native apps
- [ ] Payment gateway integration
- [ ] LMS integrations

---

## 🔒 Security Features

✅ **Data Encryption:** TLS 1.2+ in transit; AES-256 at rest
✅ **Password Security:** Bcrypt hashing (salt rounds 12+)
✅ **Session Management:** Secure, HttpOnly, SameSite cookies
✅ **API Security:** Rate limiting, CORS whitelist, CSRF tokens
✅ **Audit Trail:** Complete logging of all user actions
✅ **Compliance:** FERPA, GDPR, local education data protection laws
✅ **File Security:** Virus scanning, sandboxed storage, file type validation

---

## 📖 Documentation

- **[REFINED_PROMPT.md](./REFINED_PROMPT.md)** – Complete project specification
- **[ROLES_AND_PERMISSIONS.md](./ROLES_AND_PERMISSIONS.md)** – Detailed role definitions
- **[SESSION_HEADS_INTEGRATION.md](./SESSION_HEADS_INTEGRATION.md)** – Session Head layer (additive)
- **[ARCHITECTURE.md](./ARCHITECTURE.md)** – System design & diagrams
- **[API_DOCUMENTATION.md](./API_DOCUMENTATION.md)** – OpenAPI/Swagger reference
- **[DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md)** – Production deployment
- **[CONTRIBUTING.md](./CONTRIBUTING.md)** – Contribution guidelines

---

## 🧪 Testing

```bash
# Backend unit tests
cd backend
npm run test

# Backend integration tests
npm run test:integration

# Backend coverage
npm run test:coverage

# Frontend tests
cd frontend
npm run test

# E2E tests (Playwright)
npm run test:e2e
```

---

## 📊 Performance & Scalability

- **API Response Time:** < 200ms (p95)
- **Page Load Time:** < 2s
- **Uptime SLA:** 99.5%
- **Concurrent Users:** 500+ (horizontally scalable)
- **Database Optimization:** Indexed queries, connection pooling
- **Caching Strategy:** Redis for sessions, API responses

---

## 🚀 Deployment

### Development
```bash
dc up -d
```

### Staging
```bash
docker-compose -f docker-compose.staging.yml up -d
```

### Production
```bash
# See DEPLOYMENT_GUIDE.md for detailed instructions
```

---

## 📝 License

MIT License – See [LICENSE](./LICENSE) for details.

---

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

---

## 💬 Support

For issues, feature requests, or questions:
- **GitHub Issues:** [Create an issue](https://github.com/Ben-Soye/great-minds-school-hub/issues)
- **Documentation:** Check the docs folder
- **Email:** support@greatmindsschoolhub.com (future)

---

## 🎯 Roadmap

- **Q4 2024:** MVP Release (Authentication, Dashboards, Attendance, Grades)
- **Q1 2025:** Phase 2 (Assignments, Messaging, Notifications)
- **Q2 2025:** Phase 3 (Analytics, PWA, Mobile Apps)
- **Q3 2025:** Enterprise Features (Payment, Integrations, Advanced Reports)

---

**Built with ❤️ for educators and learners worldwide.**
