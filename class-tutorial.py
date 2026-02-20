class Employee:
    empId = 0
    def __init__(self,name,age,desg):
        self.name = name
        self.age = age
        self.desg = desg
        Employee.empId +=1
    def getEmpDetails(self):
        print("Employee ID: ", Employee.empId)
        print("Employee Name: ", self.name)
        print("Employee Age: ", self.age)
        print("Designation: ", self.desg)
class Developer(Employee):
    def __init__(self, name,age,desg,resp):
        super().__init__(name,age,desg)
        self.resp = resp
    def getEmpDetails(self):
        super().getEmpDetals()
        print("Roles and Responsibilities", 
    

e = Employee("saran", 22, "Trainee")
e.getEmpDetails()
e1 = Employee("stephan", 30, "Trainee")
e1.getEmpDetails()
