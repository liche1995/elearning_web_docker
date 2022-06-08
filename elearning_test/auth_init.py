from unicodedata import name
from django.contrib.auth.models import Group, Permission


# create auth group
print("create auth group")
student = Group.objects.create(name="student")
teacher = Group.objects.create(name="teacher")


# setting student auth
print("setting student group permission")
student.permissions.add(Permission.objects.get(codename="add_studentlist"))
student.permissions.add(Permission.objects.get(codename="change_studentlist"))
student.permissions.add(Permission.objects.get(codename="delete_studentlist"))
student.permissions.add(Permission.objects.get(codename="view_studentlist"))

# setting teacher auth
print("setting teacher group permission")
teacher.permissions.add(Permission.objects.get(codename="add_studentlist"))
teacher.permissions.add(Permission.objects.get(codename="change_studentlist"))
teacher.permissions.add(Permission.objects.get(codename="delete_studentlist"))
teacher.permissions.add(Permission.objects.get(codename="view_studentlist"))