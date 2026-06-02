"""

Write python code to accept list of integer and string objects and sort them into separate lists based on their data type.

"""

def sort_objects(objects):
    integer_list = []
    string_list = []
    for obj in objects:
        if isinstance(obj, int):
            integer_list.append(obj)
        elif isinstance(obj, str):
            string_list.append(obj)
    integer_list.sort()
    string_list.sort()
    print("Integer List:", integer_list, sep=" ")
    print("String List:", string_list, sep= " ")

objects = [5, "hello", 12, "world", 9]
sort_objects(objects)