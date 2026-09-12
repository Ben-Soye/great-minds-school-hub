# 🏫 Session Heads Integration – Additive Layer

## Overview

This document describes the addition of **Session Head roles** to the existing school management system. Session Heads manage specific academic sections (Nursery, Primary/Basic, Secondary) and operate under configurable permissions managed by Super Owner and Admin.

**⚠️ IMPORTANT:** This is an additive layer. All existing features, data, workflows, and permissions remain unchanged and fully functional.

---

## Updated Role Hierarchy

```
Super Owner / System Owner (Highest Authority)
        ↓
Administrator / School Admin
        ↓
Session Heads (Section Managers)
    ├── Nursery Session Head
    ├── Primary / Basic Session Head
    └── Secondary Session Head
        ↓
    Teachers
        ↓
    Parents + Students (Parallel)
```

---

## Session Head Roles

### Overview

Session Heads are **section-level managers** responsible for a specific academic section. They operate under a configurable permission system with NO automatic administrative authority.

---

### 1. 📚 Nursery Session Head

**Purpose:** Manage the Nursery section with permission-based access control.

**Assigned To:** Nursery section only.

**Data Visibility:**
- Nursery students only
- Nursery teachers only
- Nursery classes only
- Nursery attendance records only
- Nursery grades/results only
- Nursery reports only

**Does NOT see:** Primary/Basic or Secondary data unless explicitly granted cross-section permission.

---

### 2. 🎓 Primary / Basic Session Head

**Purpose:** Manage the Primary/Basic section with permission-based access control.

**Assigned To:** Primary/Basic section only.

**Data Visibility:**
- Primary/Basic students only
- Primary/Basic teachers only
- Primary/Basic classes only
- Primary/Basic attendance records only
- Primary/Basic grades/results only
- Primary/Basic reports only

**Does NOT see:** Nursery or Secondary data unless explicitly granted cross-section permission.

---

### 3. 📖 Secondary Session Head

**Purpose:** Manage the Secondary section with permission-based access control.

**Assigned To:** Secondary section only.

**Data Visibility:**
- Secondary students only
- Secondary teachers only
- Secondary classes only
- Secondary attendance records only
- Secondary grades/results only
- Secondary reports only

**Does NOT see:** Nursery or Primary/Basic data unless explicitly granted cross-section permission.

---

## Permission System (Configurable)

### Permission Management Philosophy

- **No Automatic Authority:** Session Heads have NO default permissions; all must be explicitly granted.
- **Granular Control:** Each permission is independent and can be toggled ON/OFF.
- **Section-Scoped:** Permissions apply only to the assigned section's data.
- **Hierarchy Respected:** Super Owner > Admin > Session Head (no self-elevation).

---

### Permission Switches (ON/OFF Configuration)

Each Session Head can have the following permissions independently toggled:

#### Student Management
- `view_students` – View section students
- `add_students` – Create new student records
- `edit_student_records` – Modify student information
- `delete_students` – Remove student records

#### Teacher Management
- `view_teachers` – View section teachers
- `add_teachers` – Assign teachers to section
- `manage_assigned_teachers` – Edit teacher assignments
- `remove_teachers` – Remove teachers from section

#### Classes & Subjects
- `view_classes` – View section classes
- `create_classes` – Create new classes in section
- `edit_classes` – Modify class information
- `delete_classes` – Remove classes
- `manage_class_subjects` – Assign/modify subjects in classes
- `manage_class_timetables` – Create/edit class schedules

#### Attendance Management
- `view_attendance` – View section attendance records
- `manage_attendance` – Mark, edit, or approve attendance
- `generate_attendance_reports` – Export attendance data

#### Academic Records & Results
- `view_results` – View section student grades/results
- `enter_results` – Allow teachers to enter grades in section
- `edit_results` – Modify grades entered by others
- `generate_result_reports` – Export grade sheets

#### Reporting & Analytics
- `view_reports` – Access section reports and dashboards
- `generate_reports` – Create new reports
- `export_reports` – Export reports (PDF/CSV)

#### Communication
- `send_announcements` – Post announcements to section
- `send_messages` – Direct messaging capability

#### Administration
- `view_section_info` – View section details
- `manage_section_info` – Edit section information
- `view_audit_logs` – Access activity logs for section

---

### Example Permission Configuration

**Nursery Session Head:**
```
View Nursery Students:           ON
Add Nursery Students:            ON
Edit Student Records:            ON
Delete Students:                 OFF
View Nursery Teachers:           ON
Manage Assigned Teachers:        ON
Remove Teachers:                 OFF
View Classes:                    ON
Create Classes:                  OFF
Edit Classes:                    ON
View Attendance:                 ON
Manage Attendance:               ON (allows marking)
Generate Attendance Reports:     ON
View Results:                    ON
Enter Results:                   ON (can ask teachers to enter)
Edit Results:                    OFF
Generate Result Reports:         ON
View Reports:                    ON
Generate Reports:                ON
Export Reports:                  OFF
Send Announcements:              ON
Send Messages:                   ON
View Section Info:               ON
Manage Section Info:             OFF
View Audit Logs:                 ON
```

**Primary Session Head:**
```
View Primary Students:           ON
Add Primary Students:            ON
Edit Student Records:            ON
Delete Students:                 OFF
View Primary Teachers:           ON
Manage Assigned Teachers:        ON
Remove Teachers:                 OFF
View Classes:                    ON
Create Classes:                  ON
Edit Classes:                    ON
View Attendance:                 ON
Manage Attendance:               ON
Generate Attendance Reports:     ON
View Results:                    ON
Enter Results:                   ON
Edit Results:                    ON
Generate Result Reports:         ON
View Reports:                    ON
Generate Reports:                ON
Export Reports:                  ON
Send Announcements:              ON
Send Messages:                   ON
View Section Info:               ON
Manage Section Info:             ON
View Audit Logs:                 ON
```

---

## Permission Authority & Hierarchy

### Super Owner Authority

The **Super Owner** has absolute authority and can:
- ✅ Create Session Head accounts
- ✅ Assign sessions (Nursery/Primary/Secondary)
- ✅ Grant or restrict individual permissions
- ✅ Override Admin-level restrictions
- ✅ Override Session Head decisions
- ✅ Disable/reactivate Session Heads
- ✅ View all Session Head activities
- ✅ Modify Admin permission authority levels

### Admin Authority

The **Admin** can (subject to Super Owner-granted authority):
- ✅ Create Session Head accounts
- ✅ Assign sessions
- ✅ Configure permissions (unless restricted by Super Owner)
- ✅ Disable/reactivate Session Heads
- ✅ View Session Head activities
- ❌ Cannot override Super Owner restrictions
- ❌ Cannot grant themselves additional permissions

### Session Head Limitations

**Session Heads CANNOT:**
- ❌ Grant themselves additional permissions
- ❌ Modify permissions of other Session Heads
- ❌ Create Admin or Super Owner accounts
- ❌ Access data outside their assigned section (unless explicitly permitted)
- ❌ Delete their own account
- ❌ View or modify Admin/Super Owner settings

**Permission Hierarchy Rule:**
```
If Super Owner sets a restriction → No one can override it
If Admin sets a permission → Super Owner can still override it
If Session Head requests access → Must go through Admin/Super Owner
```

---

## Data Access Restriction Model

### Section-Scoped Access

When a Session Head has permission to "view students," they see:
- **Only** students enrolled in their assigned section
- **Not** students in other sections

**Example:**
```
Nursery Session Head with "view_students" permission
→ Can see: Nursery students (100 total)
→ Cannot see: Primary students (200 total) or Secondary students (150 total)

Primary Session Head with "view_teachers" permission
→ Can see: Primary teachers assigned to Primary classes
→ Cannot see: Nursery or Secondary teachers
```

### Cross-Section Access (Only if Explicitly Granted)

Super Owner or Admin can grant a Session Head access to other sections:
- `cross_section_view_all_students` – See all students across sections
- `cross_section_view_reports` – Access reports from multiple sections
- `cross_section_manage_classes` – Manage classes across sections

---

## Dashboard Integration

### Admin Dashboard – Session Heads Management

A new **"Session Heads"** section in Admin dashboard with:

#### Session Head List
- Display all Session Heads
- Show assigned section
- Display current permission count
- Status indicator (Active/Inactive)
- Action buttons

#### Create Session Head
- Form to create new Session Head
- Assign section (Nursery/Primary/Secondary)
- Pre-select common permission templates

#### Manage Permissions
- Permission switch interface (ON/OFF toggles)
- View current permissions
- Apply permission templates (e.g., "Full Access", "Read-Only", "Limited")
- Save changes with audit logging
- Permission change history

#### Session Head Accounts
- Edit email/phone
- Reset password
- Disable/reactivate
- Delete (with confirmation)
- View last login

#### Activity & Audit
- View Session Head activities (where system supports logging)
- Export activity logs
- Alert on suspicious actions

---

### Super Owner Dashboard – Session Head Management

A dedicated **"Session Head Management"** area with:

#### Complete Control
- View all Session Heads across school
- Create/delete Session Heads
- Assign/reassign sections
- Full permission management

#### Override Controls
- Override Admin-level permission decisions
- Restrict Admin's authority to manage specific permissions
- Set system-wide permission policies

#### Advanced Monitoring
- View all Session Head activities
- Performance metrics (logins, actions per week, etc.)
- Permission usage patterns
- Alerts for unusual activity

#### Bulk Operations
- Bulk permission updates
- Bulk enable/disable
- Export Session Head list

---

## Data Model Addition (Session Head Integration)

### New Database Tables

```sql
-- Session Head Role
CREATE TABLE "SessionHead" (
  id UUID PRIMARY KEY,
  userId UUID UNIQUE NOT NULL REFERENCES "User"(id),
  section ENUM ('nursery', 'primary', 'secondary') NOT NULL,
  isActive BOOLEAN DEFAULT true,
  assignedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  createdBy UUID REFERENCES "User"(id),
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Permission Configuration
CREATE TABLE "SessionHeadPermission" (
  id UUID PRIMARY KEY,
  sessionHeadId UUID NOT NULL REFERENCES "SessionHead"(id),
  permissionKey VARCHAR(100) NOT NULL,
  isGranted BOOLEAN DEFAULT false,
  grantedBy UUID REFERENCES "User"(id),
  grantedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  expiresAt TIMESTAMP (optional - for temporary permissions),
  UNIQUE(sessionHeadId, permissionKey)
);

-- Section Association (Classes, Students, Teachers belong to sections)
CREATE TABLE "Section" (
  id UUID PRIMARY KEY,
  schoolId UUID NOT NULL REFERENCES "School"(id),
  name ENUM ('nursery', 'primary', 'secondary') NOT NULL,
  description VARCHAR(255),
  headSessionHeadId UUID REFERENCES "SessionHead"(id),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Audit Log for Permission Changes
CREATE TABLE "PermissionAuditLog" (
  id UUID PRIMARY KEY,
  sessionHeadId UUID NOT NULL REFERENCES "SessionHead"(id),
  permissionKey VARCHAR(100),
  action ENUM ('granted', 'revoked', 'overridden'),
  changedBy UUID REFERENCES "User"(id),
  reason VARCHAR(500),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Modified Database Relationships

**Students Table:**
```sql
ALTER TABLE "Student" ADD COLUMN section ENUM ('nursery', 'primary', 'secondary');
```

**Classes Table:**
```sql
ALTER TABLE "Class" ADD COLUMN section ENUM ('nursery', 'primary', 'secondary');
```

**Teachers Table:**
```sql
ALTER TABLE "Teacher" ADD COLUMN primarySection ENUM ('nursery', 'primary', 'secondary');
```

---

## Permission Checking Logic (Backend Implementation)

### Example: Checking Session Head Permission

```typescript
async function canSessionHeadViewStudents(
  sessionHeadId: UUID,
  targetSection: 'nursery' | 'primary' | 'secondary'
): Promise<boolean> {
  // 1. Verify Session Head is active
  const sessionHead = await SessionHead.findById(sessionHeadId);
  if (!sessionHead?.isActive) return false;

  // 2. Check if Session Head's section matches target section
  if (sessionHead.section !== targetSection) {
    // Check if cross-section permission is granted
    const crossSectionPermission = await SessionHeadPermission.findOne({
      sessionHeadId,
      permissionKey: 'cross_section_view_all_students',
      isGranted: true
    });
    if (!crossSectionPermission) return false;
  }

  // 3. Check specific permission
  const permission = await SessionHeadPermission.findOne({
    sessionHeadId,
    permissionKey: 'view_students',
    isGranted: true
  });

  return !!permission;
}

// Usage in API endpoint
app.get('/api/v1/students', async (req, res) => {
  const userRole = req.user.role;
  
  if (userRole === 'session_head') {
    const hasPermission = await canSessionHeadViewStudents(
      req.user.sessionHeadId,
      req.query.section
    );
    if (!hasPermission) return res.status(403).json({ error: 'Forbidden' });
  }
  
  // Fetch students with section filter
  const students = await Student.find({ section: req.query.section });
  res.json(students);
});
```

---

## API Endpoints for Session Head Management

### Admin Routes

```
GET    /api/v1/admin/session-heads              List all Session Heads
POST   /api/v1/admin/session-heads              Create Session Head
GET    /api/v1/admin/session-heads/:id          Get Session Head details
PUT    /api/v1/admin/session-heads/:id          Update Session Head info
DELETE /api/v1/admin/session-heads/:id          Deactivate Session Head

GET    /api/v1/admin/session-heads/:id/permissions          Get permissions
PUT    /api/v1/admin/session-heads/:id/permissions/:key     Toggle permission
POST   /api/v1/admin/session-heads/:id/permissions/apply-template  Apply template

GET    /api/v1/admin/session-heads/:id/activity Log activities
```

### Super Owner Routes

```
GET    /api/v1/super-owner/session-heads                    All Session Heads
POST   /api/v1/super-owner/session-heads                    Create
PUT    /api/v1/super-owner/session-heads/:id/override       Override permissions
GET    /api/v1/super-owner/session-heads/analytics          Usage analytics
```

---

## Preservation of Existing Functionality

**✅ Unchanged:**
- All existing user accounts and data
- All existing teachers, students, parents, admins
- All existing classes, subjects, and schedules
- All existing grades, attendance, and academic records
- All existing payments and fee records
- All existing announcements and messages
- All existing dashboards (except new Session Head management area)
- All existing reports and exports

**➕ Added:**
- Session Head accounts (new role, not replacing anything)
- Section field to relevant tables (additive column)
- Permission configuration system (new tables)
- New dashboards for Session Head management
- New API endpoints for Session Head operations

---

## Migration & Rollout

### Step 1: Database Setup
- Add new tables and columns (additive only)
- Create default sections (Nursery, Primary, Secondary)
- No existing data modified

### Step 2: Create Session Heads
- Admin/Super Owner create Session Head accounts
- Assign to sections
- Configure permissions per Session Head

### Step 3: Assign Section to Existing Data
- Gradually assign students/classes/teachers to sections
- Can be done over time; system works with both sectioned and non-sectioned data

### Step 4: Gradual Enablement
- Enable Session Head filtering in relevant modules
- Phase in permission checking
- Maintain backward compatibility with existing roles

---

## Important Notes

1. **No Breaking Changes:** Existing admins, teachers, students continue to work as before.
2. **Backward Compatible:** System functions normally if no Session Heads are created.
3. **No Automatic Permissions:** Session Heads start with zero permissions; all must be granted.
4. **Audit Trail:** All permission changes logged with who granted it and when.
5. **Easy Reversion:** If needed, Session Head system can be disabled without affecting other data.

