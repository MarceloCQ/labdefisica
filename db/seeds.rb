# This file should contain all the record creation needed to seed the database with its default values.
# Users
# Main roles
User.create!(student_id: 1, name: 'Estudiante Pedro', last_name: 'Rodriguez Lopez', email: 'student@itesm.mx', password:'123456', password_confirmation:'123456')
User.create!(student_id: 2, name: 'Instructor Jorge', last_name: 'Hernandez Perez',  email: 'instructor@itesm.mx', password:'123456', password_confirmation:'123456', role: 2)
User.create!(student_id: 3, name: 'Quetzal', last_name: 'Apellido',  email: 'admin@itesm.mx', password:'123456', password_confirmation:'123456', role: 3)
# Instructors
User.create!(student_id: 4, name: 'Instructora Maribel', last_name: 'Pastrana',  email: 'instructor@itesm.mx', password:'123456', password_confirmation:'123456', role: 2)
User.create!(student_id: 5, name: 'Instructora Lizzy', last_name: 'Palmer',  email: 'instructor@itesm.mx', password:'123456', password_confirmation:'123456', role: 2)
User.create!(student_id: 6, name: 'Instructor Oliver', last_name: 'Mendoza',  email: 'instructor@itesm.mx', password:'123456', password_confirmation:'123456', role: 2)
# Students
User.create!(student_id: 7, name: 'Pedro', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 8, name: 'Xochitl', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 9, name: 'Hércules', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 10, name: 'David', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 11, name: 'Mauricio', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 12, name: 'Pablo', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)
User.create!(student_id: 13, name: 'Juan', last_name: 'Rodriguez Lopez', password:'123456', password_confirmation:'123456', group_id: 1)

# Timetables
## Monday
Timetable.create(day: 0, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 0, start_time: '2016-01-01 20:00:00', duration: 60)
## Tuesday
Timetable.create(day: 1, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 1, start_time: '2016-01-01 20:00:00', duration: 60)
## Wednesday
Timetable.create(day: 2, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 2, start_time: '2016-01-01 20:00:00', duration: 60)
## Thursday
Timetable.create(day: 3, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 3, start_time: '2016-01-01 20:00:00', duration: 60)
## Friday
Timetable.create(day: 4, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 4, start_time: '2016-01-01 20:00:00', duration: 60)
## Saturday
Timetable.create(day: 5, start_time: '2016-01-01 07:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 07:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 08:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 08:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 09:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 09:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 10:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 10:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 11:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 11:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 12:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 12:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 13:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 13:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 14:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 14:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 15:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 15:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 16:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 16:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 17:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 17:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 18:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 18:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 19:00:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 19:30:00', duration: 60)
Timetable.create(day: 5, start_time: '2016-01-01 20:00:00', duration: 60)

# Teachers
Teacher.create(name: 'Maestro', last_name: 'Francisco')
Teacher.create(name: 'Maestro', last_name: 'Pedro')
Teacher.create(name: 'Maestro', last_name: 'Juan')
Teacher.create(name: 'Maestro', last_name: 'Zacarías')
Teacher.create(name: 'Maestro', last_name: 'Mauricio')
Teacher.create(name: 'Maestro', last_name: 'Jaime')
Teacher.create(name: 'Maestro', last_name: 'Coaila')

# Courses
Course.create(name: 'Fisica 1')
Course.create(name: 'Fisica 2')
Course.create(name: 'Fisica 3')

# Course_Teachers
CourseTeacher.create(teacher_id: 1, course_id: 1)
CourseTeacher.create(teacher_id: 1, course_id: 2)
CourseTeacher.create(teacher_id: 1, course_id: 3)
CourseTeacher.create(teacher_id: 2, course_id: 1)
CourseTeacher.create(teacher_id: 2, course_id: 2)
CourseTeacher.create(teacher_id: 3, course_id: 1)
CourseTeacher.create(teacher_id: 3, course_id: 3)
CourseTeacher.create(teacher_id: 4, course_id: 1)
CourseTeacher.create(teacher_id: 5, course_id: 2)
CourseTeacher.create(teacher_id: 6, course_id: 3)
CourseTeacher.create(teacher_id: 7, course_id: 1)
CourseTeacher.create(teacher_id: 7, course_id: 3)

# Groups
Group.create(user_id: 2, timetable_id: 1, classroom: "A4-104", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 2, classroom: "A4-235", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 3, classroom: "A4-301", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 4, classroom: "A4-304", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 5, classroom: "A1-222", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 6, classroom: "A1-107", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 7, classroom: "A3-108", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 8, classroom: "A3-100", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 9, classroom: "A7-404", seats: 30, course_id: 1)
Group.create(user_id: 2, timetable_id: 10, classroom: "A2-101", seats: 30, course_id: 1)
Group.create(user_id: 4, timetable_id: 11, classroom: "A2-301", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 12, classroom: "A2-303", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 13, classroom: "A2-304", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 14, classroom: "CI-104", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 15, classroom: "CI-606", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 16, classroom: "CI-545", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 17, classroom: "CI-301", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 18, classroom: "CI-109", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 19, classroom: "CI-221", seats: 30, course_id: 2)
Group.create(user_id: 4, timetable_id: 20, classroom: "A1-209", seats: 30, course_id: 2)
Group.create(user_id: 5, timetable_id: 21, classroom: "A2-111", seats: 30, course_id: 3)
Group.create(user_id: 5, timetable_id: 22, classroom: "A2-331", seats: 30, course_id: 3)
Group.create(user_id: 5, timetable_id: 23, classroom: "A2-109", seats: 30, course_id: 3)
Group.create(user_id: 5, timetable_id: 24, classroom: "A1-107", seats: 30, course_id: 3)
Group.create(user_id: 5, timetable_id: 25, classroom: "A4-221", seats: 30, course_id: 3)
Group.create(user_id: 6, timetable_id: 26, classroom: "A4-312", seats: 30, course_id: 3)
Group.create(user_id: 6, timetable_id: 27, classroom: "A3-221", seats: 30, course_id: 3)
Group.create(user_id: 6, timetable_id: 28, classroom: "A2-217", seats: 30, course_id: 3)
Group.create(user_id: 6, timetable_id: 29, classroom: "A2-314", seats: 30, course_id: 3)

# Practices
Practice.create(group_id: 1, name: '3era Ley de Newton', practice_no: 1)
Practice.create(group_id: 1, name: 'Tiro parabólico', practice_no: 2)
Practice.create(group_id: 1, name: 'Peralte', practice_no: 3)
Practice.create(group_id: 1, name: 'Ley de Ampere', practice_no: 4)
Practice.create(group_id: 1, name: 'Circuitos', practice_no: 5)
Practice.create(group_id: 1, name: 'Inducción Eléctrica', practice_no: 6)
