


class A :
    import os
    cwd = os.getcwd()
    directory = "ali"
    # os.rename(directory,"sajad")
    parent_dir = "/home/Sajad/Desktop/python/"
    path = os.path.join(parent_dir,directory)
    # os.rmdir(path)
    os.mkdir(path)
   
    print(cwd)
    
    print("Dir'%s'Created"%directory)
    os.chdir("/home")
    print(" current dir :" + os.getcwd())
    
    
    path1 = "/"
    list1 = os.listdir(path1)
    print("list ",path1)
    print(list1)
    
