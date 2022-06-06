from unicodedata import name
from django.contrib.auth.models import Group, Permission # name 'Permission' is not defined

def permission_object(codename: str):
    return Permission.objects.get(codename=codename)


# create auth group
print("create auth group")
student = Group.objects.create(name="student")
teacher = Group.objects.create(name="teacher")


# setting student auth
print("setting group permission")
student.permissions.add(Permission.objects.get(codename="add_studentlist"))
student.permissions.add(Permission.objects.get(codename="change_studentlist"))
student.permissions.add(Permission.objects.get(codename="delete_studentlist"))
student.permissions.add(Permission.objects.get(codename="view_studentlist"))