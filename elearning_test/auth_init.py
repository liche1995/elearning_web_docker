from unicodedata import name
from django.contrib.auth.models import Group, Permission

def permission_object(codename: str):
    return Permission.objects.get(codename=codename)




# create auth group
print("create auth group")
student = Group.objects.create(name="student")
teacher = Group.objects.create(name="teacher")

# setting student auth
print("setting group permission")
student.permissions.add(permission_object("add_studentlist"))
student.permissions.add(permission_object("change_studentlist"))
student.permissions.add(permission_object("delete_studentlist"))
student.permissions.add(permission_object("view_studentlist"))