# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!([{
  name:"Sally Tomkins",
  email: "s.tomkins@abc.edu",
  password: "sally",
  password_confirmation: "sally"
},
{
  name:"Harry Johnson",
  email: "h.johnson@abc.edu",
  password: "harry",
  password_confirmation: "harry"
},
{
  name:"Gita Patel",
  email: "g.patel@abc.edu",
  password: "gita",
  password_confirmation: "gita"
},
{
  name:"Lauren Hill",
  email: "l.hill@abc.edu",
  password: "lauren",
  password_confirmation: "lauren"
},
{
  name:"Bob Liston",
  email: "bob.liston@abc.edu",
  password: "bob",
  password_confirmation: "bob"
  }])

  p "Created #{User.count} users"


  Course.destroy_all

  Course.create!([{
    name:"Math",
    grade: "3rd",
    school_year: "2018",
    semester: "1",
    period: "2"
  },
  {
    name:"English",
    grade: "3rd",
    school_year: "2018",
    semester: "1",
    period: "1"
  },
  {
    name:"Science",
    grade: "3rd",
    school_year: "2018",
    semester: "2",
    period: "2"
  },
  {
    name:"Social Studies",
    grade: "3rd",
    school_year: "2018",
    semester: "3",
    period: "3"
  },
  {
    name:"Music",
    grade: "3rd",
    school_year: "2018",
    semester: "4",
    period: "1"
    }])
    p "Created #{Course.count} courses"

    Enrollment.destroy_all
    Enrollment.create!([
      {
        user_id:"",
        course_id: "",
        role_id:"",
        student_id: "",
      }
      {
        user_id:"",
        course_id: "",
        role_id:"",
        student_id: "",
      }
      {
        user_id:"",
        course_id: "",
        role_id:"",
        student_id: "",
      }
      {
        user_id:"",
        course_id: "",
        role_id:"",
        student_id: "",
      }
      {
        user_id:"",
        course_id: "",
        role_id:"",
        student_id: "",
      }
      ])
      p "Created #{Enrollment.count} Enrollments"
