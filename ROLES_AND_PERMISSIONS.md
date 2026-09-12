# 🏫 Great Minds School Hub – User Roles & Permissions

## Overview

Great Minds School Hub uses a hierarchical role-based access control (RBAC) system with five distinct roles. Each role has specific capabilities and restrictions.

---

## Role Hierarchy

```
Super Owner (Highest Authority)
    ↓
Admin
    ↓
Teacher
    ↓
Student / Parent (Parallel)
```

---

## Detailed Role Definitions

### 1. 🔐 Super Owner

**Purpose:** Complete system ownership and control. Can manage the entire application, including configuration, branding, and multi-school instances.

**Key Capabilities:**

#### System Management
- ✅ Create, edit, delete, and manage multiple school instances (rebrand the app for different schools).
- ✅ Modify school name, logo, branding, and configuration for each school.
- ✅ Access complete system logs and audit trails across all schools.
- ✅ Manage system-level settings and infrastructure.

#### User Management (Unrestricted)
- ✅ Create, edit, delete, and suspend any user across all schools.
- ✅ Assign roles to users (Admin, Teacher, Student, Parent, Super Owner).
- ✅ Bulk import/export users with CSV.
- ✅ Reset any user's password.
- ✅ View all user activity and audit logs.

#### Administrative Functions
- ✅ Create and manage all academic terms, classes, subjects, and schedules.
- ✅ Configure system-wide policies (password requirements, session timeouts, MFA requirements).
- ✅ Manage payment gateways and billing configurations.
- ✅ Access all reports, analytics, and dashboards (school-wide or cross-school).
- ✅ Configure third-party integrations (email, SMS, LMS, payment providers).

#### Data Management
- ✅ Full read/write access to all database entities.
- ✅ Perform data migrations and backups.
- ✅ Restore from backups.
- ✅ Export/import entire school databases.

#### Support & Troubleshooting
- ✅ Access real-time system monitoring and health dashboards.
- ✅ View error logs, performance metrics, and alerts.
- ✅ Escalate and resolve support tickets.

**Access Level:** ⭐⭐⭐⭐⭐ (Highest)

**Dashboard:** Super Owner Dashboard with system overview, multi-school management, user statistics, and billing.

---

### 2. 👔 Admin

**Purpose:** School-level administration. Manages users, classes, and configurations for their assigned school.

**Key Capabilities:**

#### User Management (School-Level)
- ✅ Create, edit, delete teachers, students, and parents within their school.
- ✅ Assign roles to users (Teacher, Student, Parent) within their school.
- ✅ Cannot assign Super Owner or Admin roles.
- ✅ Bulk import/export users with CSV.
- ✅ Reset passwords for teachers and view student accounts.
- ✅ View user activity logs within their school.

#### Academic Management
- ✅ Create and manage academic terms/semesters.
- ✅ Create and manage classes (e.g., Grade 10A).
- ✅ Create and manage subjects.
- ✅ Assign teachers to classes and subjects.
- ✅ Assign students to classes.
- ✅ Generate and approve class schedules.
- ✅ Create and update school timetables.

#### Attendance & Grades
- ✅ View attendance reports (by student, class, or term).
- ✅ View grade reports and class performance analytics.
- ✅ Approve attendance markings if needed.
- ✅ Export attendance and grade reports (PDF/CSV).

#### Reporting & Analytics
- ✅ Generate comprehensive school-wide reports.
- ✅ Access dashboards for performance, attendance, and enrollment trends.
- ✅ Export reports for external stakeholders.

#### Communication
- ✅ Post school-wide announcements.
- ✅ View all in-app messages (for compliance/auditing).
- ✅ Cannot send messages on behalf of users.

#### Configuration
- ✅ Manage school settings (name, logo, contact info).
- ✅ Configure notification preferences.
- ✅ Manage payment/fee settings.
- ✅ Cannot modify system-level infrastructure settings.

**Access Level:** ⭐⭐⭐⭐ (High)

**Dashboard:** Admin Dashboard with user statistics, class management, reports, and activity overview.

---

### 3. 👨‍🏫 Teacher

**Purpose:** Manage classes, students, grades, and communication for assigned subjects/classes.

**Key Capabilities:**

#### Class & Student Management
- ✅ View assigned classes and student rosters.
- ✅ Cannot create or delete classes.
- ✅ Cannot modify class assignments or student enrollment.

#### Attendance
- ✅ Mark attendance for assigned classes (present/absent/late/excused).
- ✅ Bulk mark attendance for a class.
- ✅ View attendance history for their classes.
- ✅ Cannot edit attendance marked by other teachers.

#### Grading & Assignments
- ✅ Create assignments with descriptions, due dates, and attachments.
- ✅ Post assignments to assigned classes/subjects.
- ✅ Enter grades for assignments and assessments.
- ✅ Automatically compute final grades based on weightings.
- ✅ View student performance analytics for their classes.
- ✅ Generate transcripts for individual students.

#### Submissions & Feedback
- ✅ View student assignment submissions.
- ✅ Grade submissions and provide feedback.
- ✅ Set resubmission deadlines.
- ✅ Cannot delete student submissions.

#### Announcements
- ✅ Post announcements to assigned classes.
- ✅ Cannot post school-wide announcements (admin only).

#### Communication
- ✅ Send and receive in-app messages to/from students and parents.
- ✅ Cannot message other teachers (depends on school policy).
- ✅ View message history.

#### Reporting
- ✅ Generate gradebook reports for their classes (PDF/CSV).
- ✅ Generate attendance reports for their classes.
- ✅ Cannot generate school-wide reports.

**Access Level:** ⭐⭐⭐ (Medium-High)

**Dashboard:** Teacher Dashboard with assigned classes, pending grading tasks, attendance status, and announcements.

---

### 4. 📚 Student

**Purpose:** View personal academic progress, assignments, and school information.

**Key Capabilities:**

#### Personal Academic Information
- ✅ View personal schedule and timetable.
- ✅ View assigned classes.
- ✅ Cannot view other students' information.

#### Grades & Performance
- ✅ View personal grades and assessments.
- ✅ View GPA and transcript.
- ✅ View grade trends and feedback from teachers.
- ✅ Cannot view other students' grades.

#### Attendance
- ✅ View personal attendance record.
- ✅ View attendance summaries (present/absent/late percentages).
- ✅ Cannot view other students' attendance.

#### Assignments
- ✅ View assignments for enrolled classes.
- ✅ View assignment due dates and instructions.
- ✅ Download assignment attachments.
- ✅ Submit assignments (file upload).
- ✅ View grades and feedback on submissions.
- ✅ Cannot modify submitted work.

#### Announcements
- ✅ View school announcements.
- ✅ View class-specific announcements.
- ✅ Cannot post announcements.

#### Communication
- ✅ Send and receive messages to/from teachers and parents.
- ✅ Cannot message other students.
- ✅ Cannot send messages to admins directly.

#### Notifications
- ✅ Receive notifications for new assignments, grades, and announcements.
- ✅ Configure personal notification preferences.

**Access Level:** ⭐⭐ (Low)

**Dashboard:** Student Dashboard with upcoming assignments, recent grades, attendance summary, and announcements.

---

### 5. 👨‍👩‍👧 Parent

**Purpose:** Monitor child's academic progress and communicate with teachers.

**Key Capabilities:**

#### Child's Academic Information
- ✅ View assigned child's (or multiple children's) grades and assessments.
- ✅ View child's attendance record and summaries.
- ✅ View child's schedule and timetable.
- ✅ Cannot view other students' information.

#### Assignments
- ✅ View child's assignments and due dates.
- ✅ View submission status and teacher feedback.
- ✅ Cannot submit assignments on behalf of child.

#### Announcements
- ✅ View school announcements relevant to their child.
- ✅ View class announcements.

#### Communication
- ✅ Send and receive messages to/from child's teachers.
- ✅ Cannot message students or admins.
- ✅ Cannot message other parents.

#### Performance Monitoring
- ✅ View grade trends and performance analytics for their child.
- ✅ Receive notifications for low grades or excessive absences.
- ✅ View alerts for missing or late assignments.

#### Notifications
- ✅ Receive notifications for new grades, assignments, and announcements.
- ✅ Configure notification preferences.

**Access Level:** ⭐ (Lowest)

**Dashboard:** Parent Dashboard with child's recent performance, upcoming assignments, attendance overview, and announcements.

---

## Permission Matrix

| Feature | Super Owner | Admin | Teacher | Student | Parent |
|---------|-------------|-------|---------|---------|--------|
| **System Management** | ✅ | ❌ | ❌ | ❌ | ❌ |
| **Create Users** | ✅ | ✅ | ❌ | ❌ | ❌ |
| **Manage Admins** | ✅ | ❌ | ❌ | ❌ | ❌ |
| **Create Classes** | ✅ | ✅ | ❌ | ❌ | ❌ |
| **Mark Attendance** | ✅ | ✅ | ✅ | ❌ | ❌ |
| **View Attendance (Others)** | ✅ | ✅ | ✅ | ❌ | ✅ |
| **Enter Grades** | ✅ | ✅ | ✅ | ❌ | ❌ |
| **View Grades (Others)** | ✅ | ✅ | ✅ | ❌ | ✅ |
| **Create Assignments** | ✅ | ✅ | ✅ | ❌ | ❌ |
| **Submit Assignments** | ✅ | ✅ | ✅ | ✅ | ❌ |
| **Post Announcements** | ✅ | ✅ | ✅ | ❌ | ❌ |
| **View Audit Logs** | ✅ | ✅ | ❌ | ❌ | ❌ |
| **Generate Reports** | ✅ | ✅ | ✅ | ❌ | ❌ |
| **Messaging** | ✅ | ✅ | ✅ | ✅ | ✅ |

---

## Technical Implementation

### JWT Token Payload

```json
{
  "userId": "uuid",
  "email": "user@example.com",
  "role": "admin|teacher|student|parent|super_owner",
  "schoolId": "uuid",
  "permissions": ["attendance.read", "grades.write", ...],
  "iat": 1694520000,
  "exp": 1694606400
}
```

### Route Protection (Express.js Example)

```typescript
// Middleware for role-based access
export const authorize = (allowedRoles: Role[]) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const userRole = req.user?.role;
    if (!allowedRoles.includes(userRole)) {
      return res.status(403).json({ error: "Forbidden" });
    }
    next();
  };
};

// Usage
router.post('/api/v1/classes', authorize(['admin', 'super_owner']), createClass);
```

### Database Role Hierarchy

```sql
CREATE TYPE user_role AS ENUM ('super_owner', 'admin', 'teacher', 'student', 'parent');

CREATE TABLE "User" (
  id UUID PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  passwordHash VARCHAR(255) NOT NULL,
  firstName VARCHAR(100),
  lastName VARCHAR(100),
  role user_role NOT NULL,
  schoolId UUID REFERENCES "School"(id),
  profilePic VARCHAR(500),
  isActive BOOLEAN DEFAULT true,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Super Owner has no schoolId (system-wide access)
-- All other roles have a schoolId (school-specific access)
```

---

## Best Practices

1. **Principle of Least Privilege:** Grant only necessary permissions for each role.
2. **Audit All Actions:** Log all data access and modifications, especially by Super Owner and Admin.
3. **Separate Concerns:** Different roles should not be able to override each other's decisions.
4. **Regular Reviews:** Audit permissions quarterly and adjust as needed.
5. **Training:** Ensure users understand their role and permissions.
6. **Escalation Path:** Define clear escalation procedures for edge cases.

---

## Migration Path for Existing Systems

If migrating from an existing system:
1. Map existing user roles to new hierarchy.
2. Ensure Super Owner is identified and provisioned first.
3. Gradual rollout of new role definitions.
4. Provide training and documentation.
5. Monitor for permission issues in the first 2 weeks.

