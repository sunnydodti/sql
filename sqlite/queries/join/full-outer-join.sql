-- FULL OUTER JOIN - used to return all rows from both tables, with matching rows from both sides where available

-- good to know
-- returns all records when there is a match in either left or right table
-- returns null for non-matching records 
-- FULL JOIN and FULL OUTER JOIN are the same

-- practice queries
-- find student enrollments
select
    students.student_name,
    courses.course_name
from 
    students
    full outer join enrollments using (student_id)
    full outer join courses using (course_id);

-- find students who have not enrolled in any courses
select
    students.student_name,
    courses.course_name
from 
    students
    full outer join enrollments using (student_id)
    full outer join courses using (course_id)
where 
    courses.course_name is null;

-- identify the courses that have not been enrolled in by any students
select
    courses.course_name,
    students.student_name
from 
    students
    full outer join enrollments using (student_id)
    full outer join courses using (course_id)
where 
    students.student_name is null;