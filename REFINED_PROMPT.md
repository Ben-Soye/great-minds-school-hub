# 🏫 Great Minds School Hub – Full-Stack Application Prompt (Refined)

## 1. Project Overview

Build a **web-based school management system** called **Great Minds School Hub**. The platform connects administrators, teachers, students, and parents, streamlining academic and administrative tasks. It is responsive, secure, compliant with educational data protection standards, and intuitive.

---

## 2. Core Objectives

- Centrise student data, attendance, grades, and communication.
- Provide role-based dashboards with tailored views.
- Enable real-time updates and notifications.
- Support exportable reports (PDF/CSV) and advanced analytics.
- Ensure FERPA/GDPR compliance and data security.
- Scalable architecture ready for growth.

---

## 3. User Roles & Permissions

| Role | Capabilities |
|------|--------------|
| **Admin** | Full system control: manage users (add/delete/update), configure school terms, create classes, assign teachers, view all data, generate reports, manage system settings, audit logs. |
| **Teacher** | View assigned classes and student rosters; take attendance; enter and update grades; post assignments and announcements; communicate with parents/students via messaging; access analytics for their classes. |
| **Student** | View personal schedule, grades, attendance record, assignments, and announcements; submit assignments; receive notifications; view progress analytics. |
| **Parent** | View child's academic progress, attendance, upcoming assignments, school announcements; communicate with teachers; receive notifications. |

---

## 4. Key Features (Functional Requirements)

### a. Authentication & Authorisation

- **Secure Login:** Email/password with JWT-based tokens (access + refresh tokens).
- **Password Reset:** Via secure email link with expiration.
- **Role-Based Access Control (RBAC):** Restrict routes and API endpoints by role.
- **Multi-Factor Authentication (MFA):** Optional 2FA for admins and teachers.
- **Session Management:** Auto-logout after inactivity (configurable, default 30 min); secure token refresh.
- **Audit Logging:** Log all user actions and data access for compliance.

### b. Dashboard (Role-Specific)

**Admin Dashboard:**
- Summary widgets: total students, teachers, classes.
- Recent activities and pending approvals.
- System health overview.
- Quick links to user management and reports.

**Teacher Dashboard:**
- Today's classes and schedule.
- Pending grading tasks with counts.
- Recent announcements.
- Quick access to gradebook and attendance.

**Student Dashboard:**
- Upcoming assignments with due dates.
- Recent grades and GPA.
- Attendance summary (present/absent/late percentages).
- School announcements.

**Parent Dashboard:**
- Child's recent performance summary.
- Upcoming assignments.
- Attendance overview.
- Announcements relevant to their child.

### c. User Management (Admin Only)

- CRUD operations for teachers, students, parents.
- Bulk import/export via CSV with validation.
- Assign students to classes and parents to students.
- User profile management (name, email, phone, profile picture).
- Deactivate/reactivate users (soft delete).

### d. Class & Subject Management

- Create academic terms/semesters with start/end dates.
- Create classes (e.g., Grade 10A) with subjects.
- Assign teachers to subjects within a class.
- Generate and view class timetables.
- View class rosters.

### e. Attendance

- **Marking:** Teachers can mark attendance per class session (present/absent/late).
- **Viewing:** Students and parents can view attendance history with summaries.
- **Reporting:** Admin can generate attendance reports (by student, class, term).
- **Analytics:** Attendance trends and alert system for chronic absenteeism.

### f. Gradebook

- **Assignment Creation:** Teachers create assignments/assessments with max scores and weightings.
- **Grade Entry:** Enter grades per student; automatically compute final grades based on weightings.
- **Viewing:** Students/parents view real-time grade summaries and trends.
- **Transcript Generation:** PDF transcripts for students.
- **Grade History:** Track and display grade changes for auditing.

### g. Assignments & Submissions

- **Posting:** Teachers post assignments with due dates, descriptions, attachments, and instructions.
- **Viewing:** Students view assignments and upload submissions (file upload with virus scanning).
- **Feedback:** Teachers can grade submissions, provide text/voice feedback, and set resubmission deadlines.
- **Notifications:** Real-time notifications when assignments are posted or graded.

### h. Announcements & Communication

- **Announcements:** Admin/teachers can post announcements (targeted by role/class/grade level).
- **Messaging System:** In-app secure messaging between teachers, students, and parents.
- **Notifications:** Email and in-app notifications for important events.
- **Message History:** Searchable, archived message threads.

### i. Reporting & Analytics

- **Standard Reports:**
  - Class lists and rosters (CSV/PDF).
  - Grade sheets and transcripts.
  - Attendance summaries (by student, class, term).
  - Financial reports (fees collected, outstanding).
  
- **Advanced Analytics:**
  - Performance dashboards with charts (bar, line, pie).
  - Predictive analytics: identify at-risk students (failing grades, low attendance).
  - Class performance trends over time.
  - Export to BI tools (Tableau, Power BI) via APIs.

### j. File Upload & Storage

- **Supported Formats:** PDF, DOCX, images (JPG, PNG) for submissions and attachments.
- **File Size Limits:** 25 MB per submission, 100 MB per assignment.
- **Virus Scanning:** Integrated ClamAV or similar for security.
- **Storage:** AWS S3 with encrypted buckets and expiring presigned URLs.
- **Backup:** Daily automated backups to separate region.

### k. Payment & Fees (Optional Phase 2)

- **Integration:** Stripe/PayPal for tuition and fee payments.
- **Invoicing:** Auto-generate invoices for parents.
- **Payment History:** Track all transactions.

---

## 5. Technical Stack (Refined)

### Frontend
- **Framework:** React 18+ with TypeScript.
- **Styling:** Tailwind CSS with headless UI components (Radix UI / Headless UI).
- **State Management:** Zustand or Context API (Redux if needed for complex state).
- **Data Fetching:** TanStack Query (React Query) for server state management.
- **Routing:** React Router v6+.
- **Forms:** React Hook Form with Zod for validation.
- **Charts:** Recharts or Chart.js for analytics.
- **PWA:** Service workers for offline support (optional Phase 2).
- **Testing:** Vitest + React Testing Library.

### Backend
- **Runtime:** Node.js 18+ or Python 3.10+.
- **Framework:** Express.js (Node) or FastAPI (Python).
- **Language:** TypeScript (for Node).
- **API Design:** RESTful (versioned, e.g., `/api/v1/`); GraphQL support optional.
- **Database:** PostgreSQL 15+ with migrations.
- **ORM:** Prisma (Node) or SQLAlchemy (Python).
- **Authentication:** JWT with refresh tokens; bcrypt for password hashing.
- **Caching:** Redis for sessions and frequently accessed data.
- **File Processing:** Multer for file uploads; ClamAV for virus scanning.
- **Email:** Nodemailer or SendGrid.
- **Task Queue:** Bull (Node) or Celery (Python) for async jobs.
- **Validation:** Joi or Zod for input sanitization.
- **Logging:** Winston or Pino (structured JSON logs).
- **Monitoring:** Datadog or New Relic for APM.
- **Testing:** Jest for unit/integration tests; Supertest for API testing.

### Database
- **Primary:** PostgreSQL 15+ with connection pooling (PgBouncer).
- **Schema:** Migrations via Prisma Migrate or Alembic.
- **Indexing Strategy:** For high-query tables (attendance, grades).
- **Backup:** Automated daily snapshots.

### Infrastructure & Deployment
- **Containerization:** Docker with Docker Compose for local dev.
- **Orchestration:** Kubernetes (EKS/GKE) or managed services (Heroku, Render, Railway).
- **CI/CD:** GitHub Actions with automated testing, linting, builds.
- **Cloud Provider:** AWS, Azure, or Google Cloud.
- **CDN:** CloudFront (AWS) or Cloudflare for static assets.
- **Monitoring:** CloudWatch, Datadog, or New Relic.
- **Environment Variables:** Managed via `.env` files (dev/staging/prod).

### Security & Compliance
- **Data Encryption:** TLS 1.2+ in transit; AES-256 at rest.
- **Compliance:** FERPA (US), GDPR (EU), local education data protection laws.
- **Vulnerability Scanning:** OWASP Top 10 checks; regular pen testing.
- **Rate Limiting:** API rate limiting to prevent brute-force attacks.
- **CORS & CSRF:** Proper CORS configuration; CSRF tokens for state-changing operations.

---

## 6. Data Models (Detailed)

### Core Entities

```sql
-- Users (base for all roles)
User (id, email, passwordHash, firstName, lastName, role, profilePic, phone, isActive, createdAt, updatedAt)

-- Student
Student (id, userId, classId, enrollmentDate, parentIds[], previousSchools, specialNeeds)

-- Teacher
Teacher (id, userId, subjectIds[], qualifications, hireDate)

-- Parent
Parent (id, userId, studentIds[], relationship)

-- Admin
Admin (id, userId, permissions[], departmentHead, createdAt)

-- Classes & Academics
AcademicTerm (id, name, startDate, endDate, isCurrent, createdBy, createdAt)
Class (id, name, grade, academicTermId, classTeacherId, capacity, createdAt)
Subject (id, name, description, code, createdAt)
ClassSubject (classId, subjectId, teacherId, creditHours)

-- Attendance
Attendance (id, studentId, classId, date, sessionId, status [present/absent/late/excused], markedBy, notes, createdAt)

-- Grades & Assignments
Assignment (id, title, description, subjectId, classId, maxScore, dueDate, createdBy, attachments[], createdAt, updatedAt)
Submission (id, assignmentId, studentId, submittedFile, grade, feedback, submittedAt, gradeUpdatedAt)
Grade (id, studentId, assignmentId, score, weight, feedback, markedAt, markedBy)

-- Announcements
Announcement (id, title, content, postedBy, targetRoles[], targetClassIds[], attachments[], createdAt, expiresAt)

-- Messaging
Message (id, senderId, receiverId, content, attachments[], isRead, createdAt, updatedAt)
MessageThread (id, participantIds[], lastMessageAt, subject)

-- Audit Logging
AuditLog (id, userId, action, entityType, entityId, changes, ipAddress, timestamp)
```

**Indexes:** (studentId, classId, date) for Attendance; (studentId, assignmentId) for Grade; (email) for User.

---

## 7. API Endpoints (Illustrative)

### Authentication
```
POST   /api/v1/auth/login              Public
POST   /api/v1/auth/register           Admin only
POST   /api/v1/auth/refresh-token      Authenticated
POST   /api/v1/auth/logout             Authenticated
POST   /api/v1/auth/request-password-reset   Public
POST   /api/v1/auth/reset-password     Public
POST   /api/v1/auth/enable-mfa         Authenticated
```

### Users
```
GET    /api/v1/users                   Admin
POST   /api/v1/users                   Admin
GET    /api/v1/users/:id               Self or Admin
PUT    /api/v1/users/:id               Self or Admin
DELETE /api/v1/users/:id               Admin
POST   /api/v1/users/bulk-import       Admin
GET    /api/v1/users/export            Admin
```

### Classes
```
GET    /api/v1/classes                 Authenticated
POST   /api/v1/classes                 Admin
GET    /api/v1/classes/:id             Authenticated
PUT    /api/v1/classes/:id             Admin
GET    /api/v1/classes/:id/students    Teacher/Admin
GET    /api/v1/classes/:id/timetable   Authenticated
```

### Attendance
```
POST   /api/v1/attendance              Teacher
GET    /api/v1/attendance/:studentId   Student/Parent/Teacher/Admin
GET    /api/v1/attendance/report       Admin/Teacher
POST   /api/v1/attendance/bulk-mark    Teacher
```

### Grades & Assignments
```
GET    /api/v1/grades/:studentId       Student/Parent/Teacher/Admin
POST   /api/v1/grades                  Teacher
GET    /api/v1/assignments/:classId    Teacher/Student
POST   /api/v1/assignments             Teacher
POST   /api/v1/submissions             Student
GET    /api/v1/submissions/:id         Teacher/Student
PUT    /api/v1/submissions/:id/grade   Teacher
```

### Announcements & Messaging
```
GET    /api/v1/announcements           Authenticated
POST   /api/v1/announcements           Admin/Teacher
GET    /api/v1/messages                Authenticated
POST   /api/v1/messages                Authenticated
GET    /api/v1/messages/:threadId      Authenticated
```

### Reporting
```
GET    /api/v1/reports/grades          Admin/Teacher
GET    /api/v1/reports/attendance      Admin/Teacher
GET    /api/v1/reports/class-list      Admin/Teacher
POST   /api/v1/reports/export          Admin/Teacher
GET    /api/v1/analytics/performance   Admin/Teacher
```

---

## 8. UI/UX Guidelines

- **Design System:** Clean, modern, consistent blue/white theme.
- **Navigation:** Sidebar with collapsible menu and icons; top navigation bar with user profile.
- **Mobile-First:** Fully responsive; hamburger menu on mobile.
- **Accessibility:** WCAG 2.1 Level AA compliance (keyboard navigation, ARIA labels, color contrast 4.5:1).
- **Loading States:** Skeleton screens and spinners.
- **Error Boundaries:** Graceful error handling with retry options.
- **Modals & Forms:** Use modals for forms to avoid page reloads; inline validation.
- **Charts & Analytics:** Interactive Recharts visualizations.
- **Dark Mode:** Optional theme toggle (localStorage preference).

---

## 9. Security Requirements

- **Data Encryption:** TLS 1.2+ in transit; AES-256 at rest (sensitive fields).
- **Password Policy:** Min 8 chars, uppercase, lowercase, number, special char; bcrypt hashing (salt rounds 12+).
- **Session Security:** Secure, HttpOnly, SameSite cookies; auto-logout on inactivity.
- **API Security:** Rate limiting (e.g., 100 req/min per IP); request validation; CORS whitelist.
- **Audit Trail:** All data access and modifications logged to AuditLog table.
- **File Uploads:** Virus scanning, file type validation, sandboxed storage.
- **Compliance:** FERPA, GDPR, local data protection laws; regular security audits.

---

## 10. Testing & Quality Assurance

| Test Type | Target | Tools |
|-----------|--------|-------|
| **Unit Tests** | Business logic (grading, attendance calc.) | Jest, Vitest |
| **Integration Tests** | API endpoints, database transactions | Jest + Supertest |
| **E2E Tests** | Critical user journeys (login, submit assignment) | Playwright, Cypress |
| **Performance Tests** | Load testing for 100+ concurrent users | k6, Apache JMeter |
| **Security Tests** | OWASP Top 10, pen testing | OWASP ZAP, Snyk |
| **Accessibility Tests** | WCAG 2.1 compliance | Axe DevTools, WAVE |

**CI/CD Pipeline:**
- Automated tests on every PR.
- ESLint + Prettier for code quality.
- SonarQube for code analysis.
- Docker builds and registry push.
- Automatic deployment to staging/production.

---

## 11. Offline Capabilities (Phase 2)

- **Progressive Web App (PWA):** Service workers for offline access.
- **Teachers:** Mark attendance offline; sync when online.
- **Students:** View cached assignments and grades.
- **Conflict Resolution:** Graceful handling of sync conflicts.

---

## 12. Mobile App Strategy

- **Phase 1:** Responsive web app (web-based mobile access).
- **Phase 2 (Future):** Native iOS/Android apps with push notifications (React Native or Flutter).

---

## 13. Monitoring & Observability

- **Structured Logging:** JSON format via Winston/Pino; centralized logs (ELK, Splunk, CloudWatch).
- **APM:** Application Performance Monitoring (New Relic, Datadog).
- **Alerting:** Email/Slack alerts for critical errors, slow queries, downtime.
- **Metrics:** Request latency, error rates, database query performance.
- **Dashboards:** Real-time dashboards for system health.

---

## 14. Documentation Deliverables

1. **API Documentation:** OpenAPI/Swagger with code examples.
2. **Architecture Documentation:** System design diagrams, entity-relationship diagrams.
3. **Deployment Guide:** Step-by-step setup for different environments.
4. **Developer Guide:** Code structure, coding standards, contribution guidelines.
5. **User Manuals:** For teachers, students, parents, and admins.
6. **Video Tutorials:** For end-users (optional).
7. **Troubleshooting Guide:** Common issues and solutions.

---

## 15. Phased Implementation Roadmap

### Phase 1 (MVP – 2–3 months)
- [ ] Authentication & RBAC.
- [ ] Role-based dashboards.
- [ ] User management (CRUD).
- [ ] Class & subject management.
- [ ] Attendance marking & viewing.
- [ ] Basic grade entry & viewing.
- [ ] Announcements (static).

### Phase 2 (1–2 months)
- [ ] Assignments & submissions.
- [ ] In-app messaging.
- [ ] Email notifications.
- [ ] Report generation (PDF/CSV).
- [ ] Attendance analytics.

### Phase 3 (Optional – Future)
- [ ] Advanced analytics & predictive insights.
- [ ] PWA & offline capabilities.
- [ ] Mobile native apps.
- [ ] Payment gateway integration.
- [ ] Third-party integrations (LMS, Google Classroom).

---

## 16. Deliverables Checklist

- [ ] Complete source code (frontend + backend).
- [ ] README with setup instructions.
- [ ] `.env.example` with required variables.
- [ ] Docker & Docker Compose files.
- [ ] Database migration scripts.
- [ ] API documentation (Swagger).
- [ ] System architecture diagrams.
- [ ] Deployment guide.
- [ ] Unit & integration tests.
- [ ] CI/CD configuration (.github/workflows).
- [ ] Contributing guidelines.
- [ ] License file (MIT or Apache 2.0).

---

## 17. Success Metrics

- **Performance:** API response time < 200ms (p95), page load < 2s.
- **Uptime:** 99.5% SLA.
- **Security:** Zero critical vulnerabilities; 100% FERPA/GDPR compliance.
- **User Adoption:** 80%+ teacher and parent login rate.
- **Code Quality:** 80%+ test coverage; ESLint clean build.
- **Support:** < 24h response time for critical issues.

---

## 💡 Final Notes

This is a comprehensive, production-ready specification. The phased approach allows for MVP delivery while maintaining a clear roadmap for advanced features. Regular stakeholder feedback, security audits, and performance monitoring are essential for long-term success.

**Priority:** Security, compliance, and user experience over feature velocity.
