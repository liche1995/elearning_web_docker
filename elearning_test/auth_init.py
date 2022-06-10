from unicodedata import name
from django.contrib.auth.models import Group, Permission


# create auth group
if Group.objects.get(name="student"): # query method need change
    print("create student group")
    student = Group.objects.create(name="student")
    student.permissions.add(Permission.objects.get(codename="add_studentlist"))
    student.permissions.add(Permission.objects.get(codename="change_studentlist"))
    student.permissions.add(Permission.objects.get(codename="delete_studentlist"))
    student.permissions.add(Permission.objects.get(codename="view_studentlist"))

if Group.objects.get(name="teacher"):
    print("create teacher group")
    teacher = Group.objects.create(name="student")
    teacher.permissions.add(Permission.objects.get(codename="add_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="change_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="delete_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="view_studentlist"))