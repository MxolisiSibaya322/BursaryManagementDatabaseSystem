# Bursary Management Database System Documentation

## Background
The Bursary Management Database System is designed to facilitate the management of bursary-related processes for a company with a specified budget. This company puts out a call to universities to apply for funding, accepts or rejects applications, allocates maximum amounts to universities, and allows university representatives to nominate students for funding.

## Considerations
1. **Access Control**:
   - Universities can only access information linked to them.
   - Company admins can access information about all universities and their allocated funds.
   - The Head of Department (HOD) allocating funds must be from the same department as the student.

2. **Error Handling**:
   - Procedures include checks and rollbacks to handle failures without causing database issues, such as null values.

3. **Views**:
   - Views are available to provide insights:
     - View funding spent by universities, subtracted from their total.
     - View remaining funds for universities.
     - View allocation of funding to different institutions.

## Design Overview
The database is designed to store information about universities, funding applications, allocations, and student nominations. Key entities include:
- **Universities**: Information about universities applying for funding.
- **Funding Applications**: Applications submitted by universities.
- **Funding Allocations**: Allocation of maximum amounts to universities.
- **Students**: Information about students nominated for funding.
- **Departments**: Departments associated with universities and students.

## Database Schema
The database schema includes tables for each entity, with appropriate relationships and constraints to maintain data integrity and enforce business rules.

## Development Environment
The database is built in SQL and can be deployed using SQL Server Management Studio (SSMS) or similar tools. Scripts for creating the database schema, procedures, and views are provided in the repository.


