from unicodedata import name
from django.contrib.auth.models import Group, Permission


# create auth group
try :
    Group.objects.get(name="student")
except Group.DoesNotExist:
    print("create student group")
    student = Group.objects.create(name="student")
    student.permissions.add(Permission.objects.get(codename="add_studentlist"))
    student.permissions.add(Permission.objects.get(codename="change_studentlist"))
    student.permissions.add(Permission.objects.get(codename="delete_studentlist"))
    student.permissions.add(Permission.objects.get(codename="view_studentlist"))


try:
    Group.objects.get(name="teacher")
except Group.DoesNotExist:
    print("create teacher group")
    teacher = Group.objects.create(name="teacher")
    teacher.permissions.add(Permission.objects.get(codename="add_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="change_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="delete_studentlist"))
    teacher.permissions.add(Permission.objects.get(codename="view_studentlist"))